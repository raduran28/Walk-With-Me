// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:geolocator/geolocator.dart';

// Phone sensors (native builds only). Add these two under this widget's
// "Pubspec Dependencies" in FlutterFlow:  flutter_compass  and  sensors_plus
import 'package:flutter_compass/flutter_compass.dart';
import 'package:sensors_plus/sensors_plus.dart';

// Ignore web imports on native platforms
// ignore: avoid_web_libraries_in_flutter
import 'dart:ui_web' as ui_web;
import 'package:web/web.dart' as web;

class TunnelNavigationMap extends StatefulWidget {
  const TunnelNavigationMap({
    super.key,
    this.width,
    this.height,
    this.mapUrl =
        'https://walk-with-me-live-wyp5dk.web.app/wwml_navigation_map_v4.html',
  });

  final double? width;
  final double? height;
  final String mapUrl;

  @override
  State<TunnelNavigationMap> createState() => _TunnelNavigationMapState();
}

class _TunnelNavigationMapState extends State<TunnelNavigationMap> {
  WebViewController? _webViewController;
  StreamSubscription<Position>? _positionStreamSubscription;
  StreamSubscription<CompassEvent>? _compassSubscription;
  StreamSubscription<AccelerometerEvent>? _accelSubscription;

  // Step counting / compass state (native only)
  double _gravityBase = 9.81;
  double _bounce = 0;
  bool _stepArmed = true;
  bool _phoneFlat = true;
  int _lastStepMs = 0;
  int _lastHeadingMs = 0;

  // Fixed, not timestamp-based — registered exactly once for the whole app
  // session (see _ensureViewFactoryRegistered below), not per widget build.
  // A per-build unique id combined with registering inside initState() is
  // what breaks under Flutter Web's hot-reload cycle: hot reload can rerun
  // build() without rerunning initState(), so the id the widget tries to
  // render was never (re-)registered in that pass, producing exactly the
  // "unregistered view type" PlatformException.
  static const String _viewTypeId = 'tunnel-map-iframe';
  static bool _viewFactoryRegistered = false;

  static void _ensureViewFactoryRegistered(String mapUrl) {
    if (_viewFactoryRegistered) return;
    (ui_web.platformViewRegistry as dynamic).registerViewFactory(
      _viewTypeId,
      (int viewId) {
        // The factory runs fresh for every actual platform view Flutter
        // creates (each with its own viewId), so a single registered
        // factory still produces an independent iframe per instance.
        final iframe =
            web.document.createElement('iframe') as web.HTMLIFrameElement
              ..src = mapUrl
              ..style.border = 'none'
              ..style.width = '100%'
              ..style.height = '100%';

        // Location + the motion sensors the map uses for the compass and for
        // counting steps when there is no GPS signal in the tunnels.
        iframe.setAttribute(
            'allow', 'geolocation; accelerometer; gyroscope; magnetometer');

        return iframe;
      },
    );
    _viewFactoryRegistered = true;
  }

  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      // WEB MODE (FlutterFlow Test Mode / installed web app)
      _ensureViewFactoryRegistered(widget.mapUrl);
      // No Dart-side location or sensors here — the HTML page reads the
      // browser's own GPS, compass and motion sensors.
    } else {
      // NATIVE MOBILE MODE (Android / iOS app builds)
      _webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) {
              // Tell the page the app supplies location, so it doesn't start
              // a second GPS watch of its own.
              _js("if (window.useNativeLocation) { window.useNativeLocation(); }");
              _startLocationTracking();
              _startSensors();
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.mapUrl));
    }
  }

  void _js(String code) {
    _webViewController?.runJavaScript(code).catchError((e) {
      debugPrint("Error calling the map page: $e");
    });
  }

  void _startLocationTracking() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }

    if (permission == LocationPermission.deniedForever) return;

    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.bestForNavigation,
      distanceFilter: 0, // report every fix, not just after 1 m of movement
    );

    await _positionStreamSubscription?.cancel();
    _positionStreamSubscription =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position p) {
      // GPS "heading" is only meaningful while walking; phones report 0 (or -1)
      // when they don't know. The compass supplies the heading otherwise.
      final bool walking = p.speed >= 1.0 && p.heading >= 0;
      final String course = walking ? p.heading.toStringAsFixed(1) : 'null';
      _js("if (typeof window.updateUserPosition === 'function') { "
          "window.updateUserPosition(${p.latitude}, ${p.longitude}, $course, ${p.accuracy}, ${p.speed}); }");
    });
  }

  // ── Compass (turns the map / arrow) and step counting (keeps the dot moving
  //    through the tunnels when there is no GPS signal) ──
  void _startSensors() {
    _compassSubscription?.cancel();
    final compassStream = FlutterCompass.events;
    if (compassStream != null) {
      _compassSubscription = compassStream.listen((CompassEvent e) {
        final int now = DateTime.now().millisecondsSinceEpoch;
        if (now - _lastHeadingMs < 60) return; // ~16 updates a second is plenty
        // Held flat: use the normal heading. Held upright (like a camera): use the camera-mode heading.
        double? h =
            _phoneFlat ? e.heading : (e.headingForCameraMode ?? e.heading);
        if (h == null) return;
        h = (h % 360 + 360) % 360;
        _lastHeadingMs = now;
        _js("if (window.updateUserHeading) { window.updateUserHeading(${h.toStringAsFixed(1)}); }");
      });
    }

    _accelSubscription?.cancel();
    _accelSubscription = accelerometerEventStream(
      samplingPeriod: SensorInterval.gameInterval,
    ).listen(_onAccel);
  }

  void _onAccel(AccelerometerEvent e) {
    final double m = math.sqrt(e.x * e.x + e.y * e.y + e.z * e.z);
    if (m <= 0) return;
    _phoneFlat = (e.z.abs() / m) > 0.6;

    // Walking makes the phone bounce. Subtract a slow estimate of gravity,
    // smooth it, and count one step each time the bounce peaks.
    _gravityBase += (m - _gravityBase) * 0.02;
    _bounce += ((m - _gravityBase) - _bounce) * 0.35;

    final int now = DateTime.now().millisecondsSinceEpoch;
    if (_stepArmed && _bounce > 1.3 && now - _lastStepMs > 320) {
      _stepArmed = false;
      _lastStepMs = now;
      _js("if (window.pdrStep) { window.pdrStep(); }");
    } else if (!_stepArmed && _bounce < 0.4) {
      _stepArmed = true;
    }
  }

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
    _compassSubscription?.cancel();
    _accelSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: kIsWeb
          ? const HtmlElementView(viewType: _viewTypeId)
          : (_webViewController != null
              ? WebViewWidget(controller: _webViewController!)
              : const Center(child: CircularProgressIndicator())),
    );
  }
}
