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
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:geolocator/geolocator.dart';

// Ignore web imports on native platforms
// ignore: avoid_web_libraries_in_flutter
import 'dart:ui_web' as ui_web;
import 'package:web/web.dart' as web;

class NavMap extends StatefulWidget {
  const NavMap({
    super.key,
    this.width,
    this.height,
    this.mapUrl =
        'https://walk-with-me-live-wyp5dk.web.app/wwml__navigation_map%20(1).html',
  });

  final double? width;
  final double? height;
  final String mapUrl;

  @override
  State<NavMap> createState() => _NavMap();
}

class _NavMap extends State<NavMap> {
  WebViewController? _webViewController;
  StreamSubscription<Position>? _positionStreamSubscription;

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

        // Grant iframe explicit access to browser geolocation hardware
        iframe.setAttribute('allow', 'geolocation');

        return iframe;
      },
    );
    _viewFactoryRegistered = true;
  }

  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      // WEB MODE (FlutterFlow Test Mode)
      _ensureViewFactoryRegistered(widget.mapUrl);
      // No Dart-side location call needed here — the HTML page's own
      // startBrowserTracking() already handles this internally once loaded.
    } else {
      // NATIVE MOBILE MODE (Android / iOS app builds)
      _webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) {
              _startLocationTracking();
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.mapUrl));
    }
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
      distanceFilter: 1,
    );

    _positionStreamSubscription =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position position) {
      if (!kIsWeb && _webViewController != null) {
        String jsCode =
            "if (typeof window.updateUserPosition === 'function') { window.updateUserPosition(${position.latitude}, ${position.longitude}, ${position.heading}, ${position.accuracy}); }";

        _webViewController!.runJavaScript(jsCode).catchError((e) {
          debugPrint("Error updating HTML location: $e");
        });
      }
    });
  }

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
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
