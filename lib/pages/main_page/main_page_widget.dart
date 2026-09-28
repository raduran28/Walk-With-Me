import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/add_folder_dialog/add_folder_dialog_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  static String routeName = 'MainPage';
  static String routePath = '/mainPage';

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget>
    with TickerProviderStateMixin {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult9fj = await GetBusinessesCall.call();
    });

    _model.homeController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF2B2E3B),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Color(0xFF051529),
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Walk With Me Live',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.playfairDisplay(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFFE7E9EB),
                        fontSize: 40.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  overflow: TextOverflow.visible,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 15.0),
                  child: Container(
                    width: 400.0,
                    child: TextFormField(
                      controller: _model.textController3,
                      focusNode: _model.textFieldFocusNode3,
                      autofocus: false,
                      enabled: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.playfairDisplay(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        alignLabelWithHint: false,
                        hintText: 'Search',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.playfairDisplay(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFFF7F27),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.playfairDisplay(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      textAlign: TextAlign.start,
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      enableInteractiveSelection: true,
                      validator:
                          _model.textController3Validator.asValidator(context),
                    ),
                  ),
                ),
              ],
            ),
            actions: [],
            centerTitle: true,
            toolbarHeight: 200.0,
            elevation: 2.0,
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (_model.home != '')
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        controller: _model.homeController,
                        children: [
                          KeepAliveWidgetWrapper(
                            builder: (context) => SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Container(
                                      width: 339.91,
                                      height: 397.8,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF051529),
                                            Color(0xFFFF7F27)
                                          ],
                                          stops: [0.5, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 500.0,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 40.0),
                                              child: PageView(
                                                controller:
                                                    _model.introController ??=
                                                        PageController(
                                                            initialPage: 0),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Gemini_Generated_Image_fl0dp2fl0dp2fl0d.jpeg',
                                                            width: 294.89,
                                                            height: 104.1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Welcome to',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                fontSize: 36.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Walk With Me',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                fontSize: 42.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Navigate without GPS',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    10.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          'The tunnels block GPS signal, so we track your position using your phone\'s motion sensors instead. Open the Map tab and your location updates as you walk. No need to check street level!',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 319.0,
                                                            height: 203.41,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/Screenshot_2026-08-31_140149.png',
                                                                width: 173.99,
                                                                height: 51.1,
                                                                fit: BoxFit
                                                                    .scaleDown,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Find What You Need',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    10.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          'The Locations tab lists every business in the tunnel system. Search by name, or browse the list to discover shops, restaurants, and services along your route.',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Closures, Events & News',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    10.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Check this Home tab for tunnel closures before you head out, upcoming events happening underground, and general news about the tunnel system',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .playfairDisplay(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFFF7F2F2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: smooth_page_indicator
                                                    .SmoothPageIndicator(
                                                  controller:
                                                      _model.introController ??=
                                                          PageController(
                                                              initialPage: 0),
                                                  count: 4,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) async {
                                                    await _model
                                                        .introController!
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                    safeSetState(() {});
                                                  },
                                                  effect: smooth_page_indicator
                                                      .SlideEffect(
                                                    spacing: 8.0,
                                                    radius: 8.0,
                                                    dotWidth: 8.0,
                                                    dotHeight: 8.0,
                                                    dotColor: Color(0xFF051529),
                                                    activeDotColor:
                                                        Color(0xFF71370E),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) => Stack(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowWebView(
                                      content:
                                          '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<title>Houston Tunnel Map</title>\n<link rel=\"stylesheet\" href=\"https://unpkg.com/leaflet@1.9.4/dist/leaflet.css\"/>\n<script src=\"https://unpkg.com/leaflet@1.9.4/dist/leaflet.js\"></script>\n<script src=\"https://unpkg.com/esri-leaflet@3/dist/esri-leaflet.js\"></script>\n<script src=\"https://unpkg.com/esri-leaflet-static-basemap-tile@1.1.1/dist/esri-leaflet-static-basemap-tile.js\"></script>\n<!-- Socket.IO client for optional multi-user live-location sharing (see\n     \"Browser GPS + Socket.IO live tracking\" below). Requires a Socket.IO\n     server at this same origin to actually connect — if none exists (e.g.\n     plain static hosting), this 404s harmlessly and that feature no-ops. -->\n<script src=\"/socket.io/socket.io.js\"></script>\n<style>\n  * { box-sizing: border-box; margin: 0; padding: 0; }\n  html, body { height: 100%; overflow: hidden; background: #eef2f7; }\n\n  #map { width: 100%; height: 100%; }\n\n  /* ─── Business popup ─── */\n  #biz-popup {\n    position: absolute;\n    bottom: 24px; left: 50%;\n    transform: translateX(-50%);\n    background: rgba(255, 255, 255, 0.96);\n    border: 1px solid #dfe7f1;\n    border-radius: 12px;\n    padding: 12px 16px;\n    z-index: 900;\n    display: none;\n    align-items: center;\n    gap: 10px;\n    box-shadow: 0 6px 28px rgba(15,23,42,0.12);\n    backdrop-filter: blur(10px);\n    min-width: 200px;\n    max-width: 80vw;\n    pointer-events: auto;\n  }\n\n  #biz-popup.show { display: flex; }\n\n  #biz-dot {\n    width: 10px; height: 10px;\n    border-radius: 50%;\n    flex-shrink: 0;\n  }\n\n  #biz-info { flex: 1; }\n\n  #biz-name {\n    font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;\n    font-size: 13px;\n    font-weight: 700;\n    color: #1f2937;\n    line-height: 1.3;\n  }\n\n  #biz-type {\n    font-size: 10px;\n    color: #5b6476;\n    margin-top: 2px;\n  }\n\n  #biz-close {\n    background: transparent;\n    border: none;\n    color: #5b6476;\n    font-size: 16px;\n    cursor: pointer;\n    line-height: 1;\n    padding: 2px;\n    flex-shrink: 0;\n  }\n  #biz-close:hover { color: #111827; }\n\n  /* ─── Loading ─── */\n  #loading {\n    position: absolute;\n    inset: 0;\n    background: #2b2e3b;\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    justify-content: center;\n    gap: 12px;\n    z-index: 2000;\n    transition: opacity 0.4s;\n  }\n  #loading.gone { opacity: 0; pointer-events: none; }\n\n  .spinner {\n    width: 28px; height: 28px;\n    border: 2px solid #dfe7f1;\n    border-top-color: #5b8dee;\n    border-radius: 50%;\n    animation: spin 0.8s linear infinite;\n  }\n  @keyframes spin { to { transform: rotate(360deg); } }\n\n  #loading p {\n    font-family: -apple-system, sans-serif;\n    font-size: 30px;\n    color: #1b6dea;\n  }\n\n  /* ─── Leaflet overrides ─── */\n  .leaflet-tile-pane { filter: none; }\n  .leaflet-control-zoom a {\n    background: #2b2e3b !important;\n    color: #ffffff !important;\n    border-color: #dfe7f1 !important;\n  }\n    /* ─── Symbology panel & toggle ─── */\n    #symbology-toggle {\n      position: absolute; top: 12px; right: 12px;\n      width: 40px; height: 40px; border-radius: 10px;\n      background: rgba(68, 67, 67, 0.96); color: #b0b8c4;\n      display: flex; align-items: center; justify-content: center;\n      z-index: 2200; cursor: pointer; border: 1px solid #dfe7f1;\n      font-size: 18px; box-shadow: 0 6px 18px rgba(15,23,42,0.12);\n    }\n\n    /* ─── Street / Tunnel level toggle ─── */\n    #level-toggle {\n      position: absolute; top: 12px; left: 12px; z-index: 2200;\n      display: flex; background: rgba(68,67,67,0.96); border: 1px solid #2b2e3b;\n      border-radius: 10px; overflow: hidden; box-shadow: 0 6px 18px rgba(15,23,42,0.12);\n      font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;\n    }\n    #level-toggle .level-btn {\n      padding: 9px 14px; font-size: 13px; font-weight: 600; color: #fff;\n      cursor: pointer; white-space: nowrap; background: #2b2e3b;\n    }\n    #level-toggle .level-btn.active { background: #ff7f27; color: #fff; }\n    /* The level toggle sits at the very top-left; push Leaflet\'s default\n       zoom control (same corner) down below it instead of overlapping. */\n    .leaflet-top.leaflet-left { margin-top: 58px; }\n    /* Markers/polylines fade smoothly; tooltips are a separate DOM layer that\n       Leaflet\'s marker opacity doesn\'t reliably reach, so they\'re faded here\n       via a class on the map container instead. */\n    .leaflet-marker-icon, .leaflet-interactive { transition: opacity 220ms ease; }\n    #map.level-street .entrance-label,\n    #map.level-street .biz-tooltip,\n    #map.level-street .leaflet-tooltip.tunnel-tooltip {\n      opacity: 0.12 !important; transition: opacity 220ms ease;\n    }\n\n    #symbology-panel {\n      position: absolute; top: 64px; right: 12px;\n      width: 300px; max-width: 86vw; max-height: 72vh; overflow: auto;\n      background: #2b2e3b; border: 1px solid #3a3d4a;\n      border-radius: 12px; padding: 12px; z-index: 2200; display: none;\n      box-shadow: 0 10px 40px rgba(15,23,42,0.25); backdrop-filter: blur(8px);\n    }\n    #symbology-panel.show { display: block; }\n\n    #symbology-panel .sym-header { display:flex; align-items:center; justify-content:space-between; gap:10px; margin-bottom:8px }\n    #symbology-panel .sym-title { font-size:12px; color:#b3b8c8; margin-bottom:6px }\n    .sym-section { margin-bottom:10px }\n    .legend-row { display:flex; align-items:center; gap:10px; margin:6px 0 }\n    .legend-swatch { width:28px; height:12px; border-radius:4px; flex-shrink:0; box-shadow:0 3px 10px rgba(15,23,42,0.12) }\n    .legend-dot { width:12px; height:12px; border-radius:50%; flex-shrink:0; box-shadow:0 3px 8px rgba(15,23,42,0.12) }\n    .legend-entry { width:12px; height:12px; transform:rotate(45deg); border-radius:2px; box-shadow:0 3px 8px rgba(15,23,42,0.12) }\n    .legend-label { font-size:13px; color:#e2e4ec }\n\n    /* ─── Navigation: FAB, bottom sheet, list, steps ─── */\n    #nav-fab {\n      position: absolute; bottom: 12px; left: 12px;\n      width: 48px; height: 48px; border-radius: 24px;\n      background: #5b8dee; color: #fff;\n      display: flex; align-items: center; justify-content: center;\n      z-index: 2200; cursor: pointer; border: none;\n      font-size: 20px; box-shadow: 0 6px 18px rgba(91,141,238,0.35);\n    }\n    #nav-fab:active { transform: scale(0.94); }\n\n    #nav-panel {\n      position: absolute; left: 0; right: 0; bottom: 0;\n      max-height: 72vh; display: flex; flex-direction: column;\n      background: #2b2e3b; border-top: 1px solid #3a3d4a;\n      border-radius: 16px 16px 0 0; z-index: 2400;\n      box-shadow: 0 -8px 32px rgba(15,23,42,0.25); backdrop-filter: blur(10px);\n      font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;\n      transform: translateY(100%); transition: transform 220ms ease;\n    }\n    #nav-panel.show { transform: translateY(0); }\n\n    .nav-step { display: none; flex-direction: column; min-height: 0; }\n    .nav-step.active { display: flex; }\n\n    .nav-step-header {\n      display: flex; align-items: center; gap: 10px;\n      padding: 14px 14px 10px; flex-shrink: 0;\n    }\n    .nav-step-header .nav-title { flex: 1; font-size: 15px; font-weight: 700; color: #e2e4ec; }\n    .nav-icon-btn {\n      background: #3a3d4a; border: 1px solid #4a4d5a; color: #9aa0c8;\n      width: 30px; height: 30px; border-radius: 8px; cursor: pointer;\n      display: flex; align-items: center; justify-content: center; font-size: 14px;\n      flex-shrink: 0;\n    }\n    .nav-icon-btn:hover { color: #e2e4ec; }\n\n    .nav-search {\n      margin: 0 14px 8px; padding: 9px 12px; border-radius: 10px;\n      background: #3a3d4a; border: 1px solid #4a4d5a; color: #e2e4ec;\n      font-size: 13px; font-family: inherit; flex-shrink: 0;\n    }\n    .nav-search::placeholder { color: #6b7094; }\n\n    .nav-list { overflow-y: auto; padding: 0 6px 10px; flex: 1; min-height: 0; }\n    .nav-list-item {\n      display: flex; align-items: center; gap: 10px;\n      padding: 10px 8px; border-radius: 10px; cursor: pointer;\n    }\n    .nav-list-item:hover { background: #3a3d4a; }\n    .nav-list-dot { width: 10px; height: 10px; border-radius: 50%; flex-shrink: 0; }\n    .nav-list-entry { width: 10px; height: 10px; border-radius: 2px; transform: rotate(45deg); flex-shrink: 0; }\n    .nav-list-text { flex: 1; min-width: 0; }\n    .nav-list-name { font-size: 13px; color: #e2e4ec; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }\n    .nav-list-type { font-size: 10px; color: #6b7094; margin-top: 1px; text-transform: capitalize; }\n    .nav-empty { padding: 20px 14px; color: #6b7094; font-size: 13px; text-align: center; }\n\n    .nav-mode-tabs { display: flex; gap: 8px; margin: 0 14px 10px; flex-shrink: 0; }\n    .nav-mode-tab {\n      flex: 1; padding: 8px; text-align: center; border-radius: 8px; cursor: pointer;\n      background: #3a3d4a; border: 1px solid #4a4d5a; color: #9aa0c8; font-size: 12px;\n    }\n    .nav-mode-tab.active { background: #5b8dee; border-color: #5b8dee; color: #fff; }\n\n    .nav-tap-banner {\n      margin: 0 14px 14px; padding: 14px; border-radius: 10px;\n      background: #3a3d4a; border: 1px dashed #4a4d5a; color: #9aa0c8;\n      font-size: 13px; text-align: center; flex-shrink: 0;\n    }\n\n    .nav-summary { padding: 4px 14px 14px; flex-shrink: 0; }\n    .nav-summary-row { display: flex; align-items: center; gap: 10px; padding: 10px 0; border-bottom: 1px solid #3a3d4a; }\n    .nav-summary-row:last-of-type { border-bottom: none; }\n    .nav-summary-label { width: 46px; font-size: 11px; color: #6b7094; flex-shrink: 0; }\n    .nav-summary-name { font-size: 14px; color: #e2e4ec; }\n    .nav-error { color: #d93025; font-size: 12px; padding: 0 0 10px; }\n\n    .nav-primary-btn {\n      margin: 0 14px 14px; padding: 12px; border-radius: 10px; border: none;\n      background: #5b8dee; color: #fff; font-size: 14px; font-weight: 700; cursor: pointer;\n      font-family: inherit;\n    }\n    .nav-primary-btn:disabled { background: #3a3d4a; color: #6b7094; cursor: not-allowed; }\n    .nav-danger-btn {\n      margin: 0 14px 14px; padding: 10px; border-radius: 10px; border: 1px solid #5a2a2a;\n      background: transparent; color: #f06a6a; font-size: 13px; font-weight: 600; cursor: pointer;\n      font-family: inherit;\n    }\n\n    .nav-directions-summary {\n      margin: 0 14px 10px; padding: 12px; border-radius: 10px; background: #3a3d4a;\n      border: 1px solid #4a4d5a; display: flex; align-items: baseline; gap: 8px; flex-shrink: 0;\n    }\n    .nav-directions-summary .big { font-size: 20px; font-weight: 700; color: #e2e4ec; }\n    .nav-directions-summary .small { font-size: 12px; color: #9aa0c8; }\n\n    .nav-live-banner {\n      display: none; margin: 0 14px 10px; padding: 14px; border-radius: 12px;\n      background: #1c2b52; border: 1px solid #3a5bb8; flex-shrink: 0;\n      align-items: center; gap: 14px;\n    }\n    .nav-live-banner.show { display: flex; }\n    .nav-live-banner .nav-live-icon {\n      width: 40px; height: 40px; border-radius: 10px; background: #5b8dee;\n      display: flex; align-items: center; justify-content: center; font-size: 20px;\n      color: #fff; flex-shrink: 0;\n    }\n    .nav-live-banner .nav-live-primary { font-size: 16px; font-weight: 700; color: #e2e4ec; }\n    .nav-live-banner .nav-live-sub { font-size: 12px; color: #9aa0c8; margin-top: 2px; }\n\n    .nav-instruction-row.current { background: #181b28; border-radius: 8px; margin: 0 -6px; padding: 9px 6px; }\n    .nav-instruction-row.current .nav-instruction-icon { background: #5b8dee; color: #fff; }\n\n    .nav-instructions { overflow-y: auto; padding: 0 14px 14px; flex: 1; min-height: 0; }\n    .nav-instruction-row { display: flex; align-items: center; gap: 12px; padding: 9px 0; border-bottom: 1px solid #21243299; }\n    .nav-instruction-row:last-child { border-bottom: none; }\n    .nav-instruction-icon {\n      width: 26px; height: 26px; border-radius: 8px; background: #181b28;\n      display: flex; align-items: center; justify-content: center; font-size: 14px; flex-shrink: 0;\n    }\n    .nav-instruction-text { font-size: 13px; color: #e2e4ec; }\n\n    .nav-route-card {\n      margin: 0 14px 10px; background: #13151e; border: 1px solid #2e3245;\n      border-radius: 12px; padding: 2px 4px; flex-shrink: 0;\n    }\n    .nav-route-row {\n      display: flex; align-items: center; gap: 10px;\n      padding: 11px 8px; cursor: pointer; border-radius: 8px;\n    }\n    .nav-route-row + .nav-route-row { border-top: 1px solid #21243299; }\n    .nav-route-row.active { background: #181b28; }\n    .nav-route-icon-start {\n      width: 14px; height: 14px; border-radius: 50%; flex-shrink: 0;\n      background: #5b8dee; border: 3px solid #232739; box-sizing: border-box;\n    }\n    .nav-route-icon-dest { font-size: 15px; flex-shrink: 0; width: 14px; text-align: center; }\n    .nav-route-text { flex: 1; font-size: 14px; color: #e2e4ec; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }\n    .nav-route-text.placeholder { color: #6b7094; }\n    .nav-route-clear { color: #6b7094; font-size: 12px; padding: 4px 6px; flex-shrink: 0; }\n    .nav-route-clear:hover { color: #e2e4ec; }\n\n    .nav-add-stop {\n      margin: 0 14px 10px; padding: 6px 8px; display: flex; align-items: center; gap: 10px;\n      color: #9aa0c8; font-size: 13px; cursor: pointer; flex-shrink: 0; width: fit-content;\n    }\n    .nav-add-stop:hover { color: #e2e4ec; }\n    .nav-add-stop-icon {\n      width: 20px; height: 20px; border-radius: 50%; background: #3a3f5c; color: #fff;\n      display: flex; align-items: center; justify-content: center; font-size: 13px; flex-shrink: 0;\n    }\n\n    .nav-go-bar {\n      display: flex; align-items: center; gap: 12px;\n      padding: 12px 14px; border-top: 1px solid #2e3245; flex-shrink: 0;\n    }\n    .nav-go-info { flex: 1; min-width: 0; }\n    .nav-go-info .big { font-size: 15px; font-weight: 700; color: #1f2937; }\n    .nav-go-info .small { font-size: 11px; color: #475569; }\n    .nav-go-btn {\n      background: #5b8dee; color: #fff; border: none; border-radius: 10px;\n      padding: 11px 26px; font-weight: 700; font-size: 14px; cursor: pointer;\n      font-family: inherit; flex-shrink: 0;\n    }\n    .nav-go-btn:disabled { background: #dfe7f1; color: #64748b; cursor: not-allowed; }\n\n  .leaflet-control-zoom a:hover { background: #1a1d29 !important; }\n  .leaflet-control-attribution { display: none; }\n\n  /* Tunnel tooltip */\n  .leaflet-tooltip {\n    background: rgba(18,20,30,0.92) !important;\n    border: 1px solid #2e3245 !important;\n    border-radius: 6px !important;\n    color: #e2e4ec !important;\n    font-size: 24px !important;\n    font-family: -apple-system, sans-serif !important;\n    padding: 4px 8px !important;\n    box-shadow: none !important;\n  }\n  .leaflet-tooltip-left::before,\n  .leaflet-tooltip-right::before { display: none; }\n\n  /* Entry/exit permanent labels — smaller & always-on, unlike the hover tooltip above */\n  .leaflet-tooltip.entrance-label {\n    font-size: 11px !important;\n    font-weight: 600 !important;\n    padding: 2px 6px !important;\n    background: rgba(240,106,106,0.92) !important;\n    border: 1px solid rgba(255,255,255,0.3) !important;\n    color: #fff !important;\n    border-radius: 4px !important;\n    white-space: nowrap;\n  }\n\n  /* Above-ground building name labels — removed per current design; the\n     TunnelBusinesses/Access/Corridor layers remain the on-map focus. */\n\n  /* Business tooltip tweaks */\n  .biz-tooltip {\n    background: rgba(18,20,30,0.96) !important;\n    border: 1px solid #2e3245 !important;\n    border-radius: 6px !important;\n    color: #e2e4ec !important;\n    padding: 6px 8px !important;\n    font-size: 13px !important;\n    box-shadow: 0 6px 18px rgba(0,0,0,0.5) !important;\n    pointer-events: none !important;\n  }\n\n  /* Mall-style business labels */\n  .mall-biz-marker {\n    display: inline-flex;\n    align-items: center;\n    gap: 6px;\n    padding: 5px 9px;\n    border-radius: 999px;\n    border: 1px solid rgba(255,255,255,0.22);\n    color: #fff;\n    font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;\n    font-size: 11px;\n    font-weight: 700;\n    line-height: 1;\n    white-space: nowrap;\n    box-shadow: 0 4px 12px rgba(0,0,0,0.35);\n    backdrop-filter: blur(6px);\n    transform: translate(-50%, -50%);\n  }\n  .mall-biz-marker .mall-biz-dot {\n    width: 8px;\n    height: 8px;\n    border-radius: 50%;\n    background: rgba(255,255,255,0.95);\n    box-shadow: 0 0 0 2px rgba(255,255,255,0.16);\n    flex-shrink: 0;\n  }\n  .mall-biz-marker .mall-biz-name {\n    max-width: 220px;\n    overflow: visible;\n    text-overflow: clip;\n    white-space: normal;\n    word-break: break-word;\n  }\n  .mall-biz-marker.hover {\n    transform: translate(-50%, -50%) scale(1.06);\n    box-shadow: 0 6px 16px rgba(0,0,0,0.45);\n  }\n\n  /* Business map block styling */\n  .mall-block {\n    display: inline-flex;\n    align-items: center;\n    justify-content: center;\n    padding: 0 8px;\n    border-radius: 4px;\n    border: 1px solid rgba(0,0,0,0.35);\n    color: #10121a;\n    font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;\n    font-size: 11px;\n    font-weight: 800;\n    line-height: 1.2;\n    white-space: nowrap;\n    text-shadow: 0 1px 1px rgba(255,255,255,0.25);\n    box-shadow: 0 4px 14px rgba(0,0,0,0.45);\n    transform-origin: left center;\n    height: 20px;\n    min-width: 70px;\n  }\n  .mall-block .mall-block-name {\n    max-width: 220px;\n    overflow: visible;\n    text-overflow: clip;\n    white-space: nowrap;\n    display: inline-block;\n  }\n  .mall-block:hover,\n  .map-callout-icon.hover .mall-block {\n    box-shadow: 0 6px 20px rgba(0,0,0,0.55);\n    filter: brightness(1.12);\n  }\n\n  .leaflet-marker-icon.map-callout-icon {\n    background: transparent;\n    border: none;\n  }\n\n  /* Legacy marker support */\n  .biz-marker .biz-dot-inner { transition: transform 120ms ease, box-shadow 120ms ease; will-change: transform; }\n  .biz-marker.hover .biz-dot-inner { transform: scale(1.35); }\n\n  /* ─── User position marker (PDR \"you are here\") ─── */\n  .user-pos-marker {\n    width: 40px; height: 40px;\n    position: relative;\n    display: flex; align-items: center; justify-content: center;\n    transition: transform 80ms linear;\n  }\n  .user-pos-marker .user-pos-cone {\n    position: absolute;\n    top: -2px; left: 50%;\n    width: 0; height: 0;\n    transform: translateX(-50%);\n    border-left: 13px solid transparent;\n    border-right: 13px solid transparent;\n    border-bottom: 26px solid rgba(91, 141, 238, 0.35);\n  }\n  .user-pos-marker .user-pos-dot {\n    width: 16px; height: 16px;\n    border-radius: 50%;\n    background: #5b8dee;\n    border: 3px solid #fff;\n    box-shadow: 0 0 0 2px rgba(91,141,238,0.5), 0 2px 8px rgba(0,0,0,0.5);\n    z-index: 2;\n  }\n  .user-pos-marker.stale .user-pos-dot { background: #6b7094; box-shadow: 0 0 0 2px rgba(107,112,148,0.5); }\n  .user-pos-marker.stale .user-pos-cone { border-bottom-color: rgba(107,112,148,0.3); }\n</style>\n</head>\n<body>\n\n<div id=\"loading\">\n  <div class=\"spinner\"></div>\n  <p>Loading tunnel data…</p>\n</div>\n\n<div id=\"map\"></div>\n\n<!-- Symbology toggle and panel -->\n<div id=\"symbology-toggle\" title=\"Symbology\">☰</div>\n\n<!-- Street / Tunnel level toggle -->\n<div id=\"level-toggle\">\n  <div class=\"level-btn\" id=\"level-btn-street\">Street</div>\n  <div class=\"level-btn active\" id=\"level-btn-tunnel\">Tunnel</div>\n</div>\n\n<div id=\"symbology-panel\" aria-hidden=\"true\">\n  <div class=\"sym-header\">\n    <div style=\"font-weight:700;color:#e2e4ec\">Symbology</div>\n    <button id=\"sym-close\" style=\"background:transparent;border:none;color:#9aa0c8;cursor:pointer\">✕</button>\n  </div>\n  <div class=\"sym-section\">\n    <div class=\"sym-title\">Businesses</div>\n    <div id=\"sym-businesses\"></div>\n  </div>\n  <div class=\"sym-section\">\n    <div class=\"sym-title\">Tunnels</div>\n    <div id=\"sym-tunnels\" style=\"max-height:180px; overflow-y:auto;\"></div>\n  </div>\n  <div class=\"sym-section\">\n    <div class=\"sym-title\">Entries / Exits</div>\n    <div id=\"sym-entries\"></div>\n  </div>\n</div>\n\n<div id=\"biz-popup\">\n  <div id=\"biz-dot\"></div>\n  <div id=\"biz-info\">\n    <div id=\"biz-name\"></div>\n    <div id=\"biz-type\"></div>\n  </div>\n  <button id=\"biz-directions\" title=\"Directions\" style=\"background:#5b8dee; border:none; color:#fff; width:28px; height:28px; border-radius:8px; cursor:pointer; font-size:13px; flex-shrink:0;\">➤</button>\n  <button id=\"biz-close\">✕</button>\n</div>\n\n<!-- ─── Navigation: FAB + bottom sheet (planner / directions) ─── -->\n<button id=\"nav-fab\" title=\"Directions\">🚶</button>\n\n<div id=\"nav-panel\">\n\n  <!-- Planner: both fields always visible, tap either to open the picker list inline -->\n  <div class=\"nav-step\" id=\"nav-step-planner\">\n    <div class=\"nav-step-header\">\n      <div class=\"nav-title\">Directions</div>\n      <button class=\"nav-icon-btn\" id=\"nav-close-planner\">✕</button>\n    </div>\n\n    <div class=\"nav-route-card\">\n      <div class=\"nav-route-row\" id=\"nav-row-start\" data-field=\"start\">\n        <div class=\"nav-route-icon-start\"></div>\n        <div class=\"nav-route-text\" id=\"nav-row-start-text\">Choose starting point</div>\n        <div class=\"nav-route-clear\" id=\"nav-row-start-clear\" style=\"display:none;\">✕</div>\n      </div>\n      <div class=\"nav-route-row\" id=\"nav-row-dest\" data-field=\"destination\">\n        <div class=\"nav-route-icon-dest\">📍</div>\n        <div class=\"nav-route-text\" id=\"nav-row-dest-text\">Choose destination</div>\n        <div class=\"nav-route-clear\" id=\"nav-row-dest-clear\" style=\"display:none;\">✕</div>\n      </div>\n    </div>\n\n    <div class=\"nav-add-stop\" id=\"nav-add-stop\"><span class=\"nav-add-stop-icon\">+</span> Add stop</div>\n\n    <!-- Field editor: appears under the card when a row is tapped -->\n    <div id=\"nav-field-editor\" style=\"display:none; flex-direction:column; flex:1; min-height:0;\">\n      <div class=\"nav-mode-tabs\">\n        <div class=\"nav-mode-tab active\" id=\"nav-field-mode-list\">From list</div>\n        <div class=\"nav-mode-tab\" id=\"nav-field-mode-tap\">Tap on map</div>\n      </div>\n      <input class=\"nav-search\" id=\"nav-field-search\" type=\"text\" placeholder=\"Search businesses or entrances…\">\n      <div class=\"nav-list\" id=\"nav-field-list\"></div>\n      <div class=\"nav-tap-banner\" id=\"nav-tap-banner\" style=\"display:none;\"></div>\n    </div>\n\n    <div class=\"nav-error\" id=\"nav-planner-error\" style=\"display:none;\"></div>\n\n    <!-- Route summary + Go, shown once both points are set -->\n    <div class=\"nav-go-bar\" id=\"nav-go-bar\" style=\"display:none;\">\n      <div class=\"nav-go-info\">\n        <div class=\"big\" id=\"nav-go-distance\">—</div>\n        <div class=\"small\" id=\"nav-go-sub\">to destination</div>\n      </div>\n      <button class=\"nav-go-btn\" id=\"nav-go-btn\">Go</button>\n    </div>\n  </div>\n\n  <!-- Turn-by-turn directions -->\n  <div class=\"nav-step\" id=\"nav-step-directions\">\n\n    <div class=\"nav-step-header\">\n      <div class=\"nav-title\">Directions</div>\n      <button class=\"nav-icon-btn\" id=\"nav-close-4\">✕</button>\n    </div>\n    <div class=\"nav-live-banner\" id=\"nav-live-banner\">\n      <div class=\"nav-live-icon\" id=\"nav-live-icon\">⬆</div>\n      <div>\n        <div class=\"nav-live-primary\" id=\"nav-live-primary\">—</div>\n        <div class=\"nav-live-sub\" id=\"nav-live-sub\">—</div>\n      </div>\n    </div>\n    <div class=\"nav-directions-summary\">\n      <div class=\"big\" id=\"nav-total-distance\">—</div>\n      <div class=\"small\" id=\"nav-total-distance-sub\">to destination</div>\n    </div>\n    <div class=\"nav-instructions\" id=\"nav-instructions-list\"></div>\n    <button class=\"nav-danger-btn\" id=\"nav-end-route\">End Navigation</button>\n  </div>\n\n</div>\n\n<!-- ─── PDR test panel ─── -->\n<!-- Dev-only: lets you verify updateUserPosition() works before real PDR data exists.\n     Delete this whole block (and #pdr-test-toggle listener below) once Dart is driving\n     the marker for real, or just leave it — it\'s harmless and can double as a debug tool. -->\n<div id=\"pdr-test-toggle\" title=\"PDR test controls\" style=\"position:absolute; bottom:12px; right:12px; width:40px; height:40px; border-radius:10px; background:rgba(255,255,255,0.96); color:#1f2937; display:flex; align-items:center; justify-content:center; z-index:2200; cursor:pointer; border:1px solid #dfe7f1; font-size:16px; box-shadow:0 6px 18px rgba(15,23,42,0.12);\">🧭</div>\n<div id=\"pdr-test-panel\" style=\"position:absolute; bottom:60px; right:12px; width:220px; background:rgba(255,255,255,0.98); border:1px solid #dfe7f1; border-radius:12px; padding:12px; z-index:2200; display:none; box-shadow:0 10px 40px rgba(15,23,42,0.12); font-family:-apple-system,sans-serif; color:#1f2937; font-size:12px;\">\n  <div style=\"font-weight:700; margin-bottom:8px;\">PDR Test Controls</div>\n  <div style=\"margin-bottom:8px; color:#475569;\">Click the map to place the marker there. Use buttons to rotate heading.</div>\n  <div style=\"display:flex; gap:6px; margin-bottom:8px;\">\n    <button id=\"pdr-rotate-left\" style=\"flex:1; padding:6px; background:#f3f6fb; border:1px solid #dfe7f1; color:#1f2937; border-radius:6px; cursor:pointer;\">↺ -15°</button>\n    <button id=\"pdr-rotate-right\" style=\"flex:1; padding:6px; background:#f3f6fb; border:1px solid #dfe7f1; color:#1f2937; border-radius:6px; cursor:pointer;\">↻ +15°</button>\n  </div>\n  <button id=\"pdr-snap-test\" style=\"width:100%; padding:6px; background:#f3f6fb; border:1px solid #dfe7f1; color:#1f2937; border-radius:6px; cursor:pointer;\">Snap to nearest corridor</button>\n</div>\n\n<script>\nconst map = L.map(\'map\', {\n  center: [29.7565, -95.3677],\n  zoom: 18,\n  zoomControl: true\n});\n// Esri Light Gray Canvas basemap via ArcGIS Location Platform (API key scoped to Basemaps only).\n// Restrict this key to your real domain\'s referrer once this ships in FlutterFlow —\n// see ArcGIS Location Platform > Developer credentials > (this key) > Settings.\nconst ARCGIS_API_KEY = \'AAPTaPkGxpZGG0sd2FtUp4FtzYg..HzPPrirllGhbXixFtqxqOC2-FrwlhDY6MNGvRZojBfNoHjcENRWLJHi4kPuk_YlR9UuIgKr5Rkbsvi5L40IVNaY9ULpqbY62tR2pRdvPUkijSQsKwhEPyppexlpm3f0afMzg-YO1fMLfKc4XSDrSYS0_Z1Wod81cVHTmVUQKKWBfE3z2VoH6ruVJJKzZhDiyYU8UkCx9AkB3Sq7v0ONoKN3gjPf-6_2TBrQBJHabX0ZV1AktqbmCQ3o.AT1_2pGfWKQS\';\n// Raster (PNG) basemap tiles — chosen over the vector style specifically because\n// vector tiles render via WebGL, which many embedded/mobile WebViews (including\n// FlutterFlow\'s) don\'t reliably support. Raster tiles are plain images, the same\n// technology the tunnel corridors/markers already use, so they should render\n// anywhere Leaflet itself renders. Note: \'Community\' style has no raster\n// equivalent, so this uses \'arcgis/streets\' — still a colorful, detailed,\n// Google-Maps-like style, just not pixel-identical to the Community look.\nL.esri.Static.staticBasemapTileLayer(\'arcgis/streets\', { apikey: ARCGIS_API_KEY }).addTo(map);\n\n// Popup elements\nconst popup = document.getElementById(\'biz-popup\');\nconst bizDot = document.getElementById(\'biz-dot\');\nconst bizName = document.getElementById(\'biz-name\');\nconst bizType = document.getElementById(\'biz-type\');\nlet currentPopupPlace = null; // { name, lat, lng } for the popup\'s Directions button\n\ndocument.getElementById(\'biz-close\').addEventListener(\'click\', () => popup.classList.remove(\'show\'));\ndocument.getElementById(\'biz-directions\').addEventListener(\'click\', () => {\n  if (!currentPopupPlace) return;\n  popup.classList.remove(\'show\');\n  openNavPanel(currentPopupPlace);\n});\nmap.on(\'click\', () => popup.classList.remove(\'show\'));\n\n/* ─── URL & data setup ─── */\nconst URLS = {\n  tunnels:    \'https://services5.arcgis.com/eTnR8egNkl9d8CQM/ArcGIS/rest/services/City_of_Houston_Downtown_Tunnel_System_view/FeatureServer/3/query?where=1%3D1&outFields=*&f=geojson\',\n  businesses: \'https://services5.arcgis.com/eTnR8egNkl9d8CQM/ArcGIS/rest/services/City_of_Houston_Downtown_Tunnel_System_view/FeatureServer/0/query?where=1%3D1&outFields=*&f=geojson\',\n  entries:    \'https://services5.arcgis.com/eTnR8egNkl9d8CQM/ArcGIS/rest/services/City_of_Houston_Downtown_Tunnel_System_view/FeatureServer/2/query?where=1%3D1&outFields=*&f=geojson\'\n};\n\n/* ─── Color & category setup ─── */\nconst CAT_COLOR = { food: \'#ff6b4a\', retail: \'#4a9eff\', services: \'#3ddc84\', other: \'#b98cf2\' };\n\n// Per-tunnel colors, sampled from the color-coded legend on the official\n// Downtown Houston Field Guide map (\"METRO Lines, Tunnels, & Skywalks\").\n// Keys are normalized (lowercase, trimmed, punctuation-light) against the\n// corridor FeatureServer\'s own `name` attribute (e.g. \"W. Walker\"), which\n// uses the tunnel\'s short street name without the trailing \"Tunnel\"/\"Skywalk\".\nconst TUNNEL_COLORS = {\n  \'downtown tunnel loop\': \'#e2543a\',\n  \'w walker\': \'#4a7fb5\',\n  \'n louisiana\': \'#8c5a80\',\n  \'n travis\': \'#f2884d\',\n  \'rusk\': \'#b83a66\',\n  \'lamar\': \'#9cbef0\',\n  \'w dallas\': \'#00a6a6\',\n  \'e mckinney\': \'#1e8449\',\n  \'s louisiana\': \'#f5c518\',\n  \'convention\': \'#29b6f6\',\n  \'st joseph\': \'#c9a876\',\n  \'harris county\': \'#8b3a3d\',\n  \'limited access\': \'#8c8988\'\n};\nconst TUNNEL_COLOR_FALLBACK = \'#8a8f9c\'; // any corridor whose name doesn\'t match a known tunnel\n\nfunction normalizeTunnelName(raw) {\n  return (raw || \'\')\n    .toLowerCase()\n    .replace(/\\(.*?\\)/g, \'\')                      // drop parenthetical like \"(Limited Access)\"\n    .replace(/[.,]/g, \'\')                          // drop periods/commas\n    .replace(/\\s+(tunnels?|skywalks?)\\s*\$/i, \'\')   // drop a TRAILING \"tunnel(s)\"/\"skywalk(s)\" only\n    .replace(/\\s+/g, \' \')\n    .trim();\n}\nfunction getTunnelColor(rawName) {\n  const key = normalizeTunnelName(rawName);\n  if (!key) return TUNNEL_COLOR_FALLBACK; // avoid an empty key matching every entry via includes()\n  if (TUNNEL_COLORS[key]) return TUNNEL_COLORS[key];\n  // Substring match handles values with extra wording, e.g. \"Harris County (Limited Access)\".\n  const found = Object.keys(TUNNEL_COLORS).find(k => key.includes(k) || k.includes(key));\n  return found ? TUNNEL_COLORS[found] : TUNNEL_COLOR_FALLBACK;\n}\n\n/* ─── Category detection logic ─── */\n// Fields that are known/likely to hold a category-ish label. We check these first,\n// in order, before falling back to scanning every string field on the feature.\n// Confirmed live fields on this layer: objectid, ref, business_name, address, hours\n// (lowercase snake_case) — so lowercase variants are checked first, with the\n// original guesses kept as a fallback in case other layers differ.\nconst PRIORITY_CATEGORY_FIELDS = [\n  \'type\',\'category\',\'business_type\',\'subtype\',\'use_type\',\'use\',\'sector\',\'class\',\'tenant_type\',\n  \'TYPE\',\'Type\',\'CATEGORY\',\'Category\',\'BUSINESS_TYPE\',\'Business_Type\',\'BUSINESSTYPE\',\n  \'SubType\',\'Subtype\',\'SUBTYPE\',\'USE_TYPE\',\'UseType\',\'Sector\',\'SECTOR\',\'CLASS\',\'Class\',\n  \'Tenant_Type\',\'TENANT_TYPE\',\'Use\',\'USE\'\n];\n\n// Known chains/tenants, matched by substring against business_name when the\n// keyword regexes below don\'t catch a specific brand name on their own.\nconst KNOWN_CHAIN_CATEGORY = {\n  food: [\n    \'which wich\',\'schlotzsky\',\'potbelly\',\'smoothie king\',\'wingstop\',\'subway\',\'mcdonald\',\n    \"chick-fil-a\",\'chick fil a\',\'chipotle\',\'panda express\',\'jimmy john\',\'jamba\',\'dunkin\',\n    \'tim horton\',\'papa john\',\'domino\',\'five guys\',\'whataburger\',\'raising cane\',\"cane\'s\",\n    \'freebirds\',\'panera\',\'starbucks\',\'common grounds\',\'uncommon coffee\',\"shipley\",\n    \'pei wei\',\'wok\',\'hibachi\',\'bullritos\',\'burrito\',\'farro\',\'simit\',\'coreanos\',\'great wraps\',\n    \'auntie anne\',\'cinnabon\',\'einstein bros\',\'corner bakery\',\'au bon pain\',\'kolache\',\n    \"deli\'s deluxe\",\'salada\',\'seaside\',\'paradise bakery\',\'east coast\',\'flip n patty\',\n    \'cupcake\',\'mediterranean\',\'china\',\'dumpling\',\'chef\',\'wingstop\',\'taco\',\'pizza\',\'coffee\',\n    \'bagel\',\'donut\',\'doughnut\',\'grill\',\'cafe\',\'bistro\',\'kitchen\'\n  ],\n  services: [\n    \'wells fargo\',\'chase\',\'bank of america\',\'comerica\',\'regions bank\',\'frost bank\',\'amegy\',\n    \'prosperity bank\',\'peoples trust\',\'first service credit union\',\'credit union\',\'trust\',\n    \'fedex office\',\'ups store\',\'post office\',\'chiropractic\',\'chiropractor\',\'dry clean\',\n    \'cleaners\',\'nail\',\'salon\',\'spa\',\'barber\',\'optical\',\'vision source\',\'notary\',\'downtown visitor\',\n    \'visitor center\',\'executive shoe\',\'shoe repair\',\'glamour\',\'hair studio\'\n  ],\n  retail: [\n    \'cvs\',\'walgreens\',\'rite aid\',\'gnc\',\'sunglass hut\',\"claire\'s\",\'things remembered\',\n    \'spencer\',\'hallmark\',\'jewelry\',\'gift\'\n  ]\n};\n\nfunction getCategory(props) {\n  if (!props) return \'other\';\n\n  // 1) Try known/likely category field names first.\n  const priorityText = PRIORITY_CATEGORY_FIELDS\n    .map(k => props[k])\n    .filter(v => typeof v === \'string\' && v.trim())\n    .join(\' \')\n    .toLowerCase();\n  let cat = classifyText(priorityText);\n  if (cat) return cat;\n\n  // 2) Check the business name against known chains/tenant names.\n  const bizName = getBusinessName(props).toLowerCase();\n  for (const [c, names] of Object.entries(KNOWN_CHAIN_CATEGORY)) {\n    if (names.some(n => bizName.includes(n))) return c;\n  }\n\n  // 3) Fall back to scanning every string-valued property on the feature\n  //    (covers the case where the category lives in a field we didn\'t guess).\n  const allText = Object.values(props)\n    .filter(v => typeof v === \'string\' && v.trim())\n    .join(\' \')\n    .toLowerCase();\n  cat = classifyText(allText);\n  if (cat) return cat;\n\n  return \'other\';\n}\n\nfunction classifyText(t) {\n  if (!t) return null;\n  if (/food|restaurant|cafe|coffee|deli|pizza|burger|sandwich|bakery|sushi|grill|\\bbar\\b|juice|salad|taco|soup|bbq|steak|seafood|wing|drink|boba|smoothie|\\bsub\\b|wrap|bowl|kitchen|diner|eatery|donut|doughnut|bagel|ice cream|yogurt|noodle|chicken|catering|pretzel|gyro|kabob|pho\\b|ramen|espresso|dumpling|halal|mediterranean|hibachi|wok\\b/.test(t)) return \'food\';\n  if (/retail|\\bshop\\b|store|gift|book|cloth|fashion|jewel|pharmacy|drug|flower|boutique|apparel|shoe(?!.*repair)|convenience|newsstand|gallery|market|souvenir|sunglass|cosmetic|vitamin|electronics|luggage/.test(t)) return \'retail\';\n  if (/\\bbank\\b|atm|salon|spa\\b|dry clean|cleaner|fitness|gym|health|med|dental|clinic|service|post office|\\bprint\\b|fedex|ups\\b|insurance|barber|nail|optical|vision|\\blaw\\b|legal|travel agency|notary|tailor|alterations|shoe repair|shoe shine|credit union|\\btrust\\b|chiropract|visitor center|staffing|locksmith|title company/.test(t)) return \'services\';\n  return null;\n}\n\nfunction catColor(props) { return CAT_COLOR[getCategory(props)]; }\n\nfunction escapeHtml(str){\n  return String(str).replace(/&/g,\'&amp;\').replace(/</g,\'&lt;\').replace(/>/g,\'&gt;\').replace(/\"/g,\'&quot;\').replace(/\'/g,\'&#39;\');\n}\n\n// Helpers to safely extract coords and names from GeoJSON features\nfunction findFirstCoordinate(arr) {\n  if (!arr) return null;\n  if (typeof arr[0] === \'number\' && typeof arr[1] === \'number\') return arr;\n  for (let i = 0; i < arr.length; i++) {\n    const v = arr[i];\n    if (Array.isArray(v)) {\n      const found = findFirstCoordinate(v);\n      if (found) return found;\n    }\n  }\n  return null;\n}\n\nfunction getCoordinatesFromFeature(feature){\n  if (!feature || !feature.geometry) return null;\n  const g = feature.geometry;\n  if (g.type === \'Point\' && Array.isArray(g.coordinates)) return g.coordinates;\n  if (Array.isArray(g.coordinates)) return findFirstCoordinate(g.coordinates);\n  return null;\n}\n\nfunction getBusinessName(props){\n  if (!props) return \'Business\';\n  const candidates = [\n    props.NAME,\n    props.BUSINESS_NAME,\n    props.business_name,\n    props.name,\n    props.Business,\n    props.business,\n    props.BusinessName,\n    props.businessName,\n    props.Tenant,\n    props.tenant,\n    props.Store,\n    props.store,\n    props.DisplayName,\n    props.displayName,\n    props.LABEL,\n    props.label,\n    props.BUSNAME,\n    props.BUSINESS,\n    props.Name\n  ];\n  for (const c of candidates) {\n    const s = normalizeName(c);\n    if (s) return s;\n  }\n  return \'Business\';\n}\n\nfunction normalizeName(val){\n  if (val == null) return null;\n  if (typeof val === \'string\') return val.trim() || null;\n  if (typeof val === \'number\') return String(val);\n  if (typeof val === \'object\') {\n    if (typeof val.value === \'string\') return val.value.trim() || null;\n    if (typeof val.text === \'string\') return val.text.trim() || null;\n    // Fall back to first string property\n    for (const k in val) if (typeof val[k] === \'string\' && val[k].trim()) return val[k].trim();\n    try { return JSON.stringify(val); } catch(e) { return null; }\n  }\n  return String(val);\n}\n\nfunction showBizPopup(props, color, name, latlng) {\n  const displayName = name || getBusinessName(props);\n  const type = props.TYPE || props.CATEGORY || props.BUSINESS_TYPE || props.SubType || props.subtype || \'\';\n  bizDot.style.background = color;\n  bizName.textContent = displayName;\n  bizType.textContent = type;\n  popup.classList.add(\'show\');\n  currentPopupPlace = latlng ? { name: displayName, lat: latlng.lat, lng: latlng.lng } : null;\n}\n\n// Symbology data + UI\nconst tunnelSegments = [];\nfunction addTunnelSegments(feature) {\n  if (!feature || !feature.geometry) return;\n  const coords = feature.geometry.coordinates;\n  if (!Array.isArray(coords)) return;\n  // IMPORTANT: a MultiLineString is multiple *disconnected* line pieces in one\n  // feature (e.g. a corridor split by a level change or an editing gap).\n  // Each piece must be walked separately — flattening them into one array\n  // and connecting consecutive points would draw a phantom straight-line\n  // \"tunnel\" between the last point of one piece and the first point of the\n  // next, which is not a real, walkable connection.\n  const lines = feature.geometry.type === \'MultiLineString\' ? coords : [coords];\n  lines.forEach(points => {\n    if (!Array.isArray(points)) return;\n    for (let i = 0; i < points.length - 1; i++) {\n      tunnelSegments.push({ p1: points[i], p2: points[i + 1] });\n    }\n  });\n}\n\nfunction getNearestTunnelSegment(lng, lat) {\n  let best = { dist: Infinity, angle: 0, side: 1 };\n  tunnelSegments.forEach(({ p1, p2 }) => {\n    const dx = p2[0] - p1[0];\n    const dy = p2[1] - p1[1];\n    const length2 = dx * dx + dy * dy;\n    if (length2 <= 0) return;\n    const t = ((lng - p1[0]) * dx + (lat - p1[1]) * dy) / length2;\n    const clamped = Math.max(0, Math.min(1, t));\n    const projX = p1[0] + clamped * dx;\n    const projY = p1[1] + clamped * dy;\n    const dist = (lng - projX) ** 2 + (lat - projY) ** 2;\n    if (dist < best.dist) {\n      const cross = dx * (lat - projY) - dy * (lng - projX);\n      best = {\n        dist,\n        angle: Math.atan2(dy, dx) * 180 / Math.PI,\n        side: cross >= 0 ? 1 : -1,\n        projX,\n        projY\n      };\n    }\n  });\n  return best;\n}\n\n// ─── Routing graph (Dijkstra over tunnel corridors) ───\n// Nodes are corridor vertices (deduped by rounded coordinate), edges are\n// corridor segments weighted by real-world distance in meters (haversine).\n// Built once after all tunnel corridor features have loaded (see loadAll()).\n// Kept dependency-free (no ngraph/graphology CDN) since the graph is only a\n// few hundred nodes for a tunnel system this size — a plain O(V^2) Dijkstra\n// is plenty fast and keeps this file self-contained like the rest of it.\nconst routeGraph = new Map(); // key -> { lng, lat, neighbors: Map<key, meters> }\nlet routeLayer = null;\n\nfunction nodeKey(lng, lat) {\n  return `\${lng.toFixed(6)},\${lat.toFixed(6)}`;\n}\n\nfunction haversineMeters(lng1, lat1, lng2, lat2) {\n  const R = 6371000;\n  const toRad = d => d * Math.PI / 180;\n  const dLat = toRad(lat2 - lat1);\n  const dLng = toRad(lng2 - lng1);\n  const a = Math.sin(dLat / 2) ** 2 +\n    Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) * Math.sin(dLng / 2) ** 2;\n  return 2 * R * Math.asin(Math.sqrt(a));\n}\n\nfunction addGraphNode(lng, lat) {\n  const key = nodeKey(lng, lat);\n  if (!routeGraph.has(key)) routeGraph.set(key, { lng, lat, neighbors: new Map() });\n  return key;\n}\n\nfunction addGraphEdge(lng1, lat1, lng2, lat2) {\n  const k1 = addGraphNode(lng1, lat1);\n  const k2 = addGraphNode(lng2, lat2);\n  if (k1 === k2) return;\n  const d = haversineMeters(lng1, lat1, lng2, lat2);\n  const n1 = routeGraph.get(k1);\n  const n2 = routeGraph.get(k2);\n  if (!n1.neighbors.has(k2) || n1.neighbors.get(k2) > d) n1.neighbors.set(k2, d);\n  if (!n2.neighbors.has(k1) || n2.neighbors.get(k1) > d) n2.neighbors.set(k1, d);\n}\n\nfunction buildRoutingGraph() {\n  routeGraph.clear();\n  tunnelSegments.forEach(({ p1, p2 }) => addGraphEdge(p1[0], p1[1], p2[0], p2[1]));\n  console.log(`Routing graph built: \${routeGraph.size} nodes`);\n}\n\n// Finds the nearest raw corridor segment to (lng, lat), splits it at the\n// closest point, and wires that split point into the graph as its own node\n// connected to both original segment endpoints. This lets a route start or\n// end at an arbitrary point (a business marker, the user\'s live position)\n// instead of only at existing corridor junctions. Temporary — removed again\n// by removeTempNode() after each route is computed, so the graph doesn\'t\n// accumulate stale points over a long session.\nfunction attachPointToGraph(lng, lat, tempKeyPrefix) {\n  const info = getNearestTunnelSegment(lng, lat);\n  if (!isFinite(info.dist)) return null;\n\n  let bestSeg = null, bestDist = Infinity;\n  tunnelSegments.forEach(seg => {\n    const { p1, p2 } = seg;\n    const dx = p2[0] - p1[0], dy = p2[1] - p1[1];\n    const length2 = dx * dx + dy * dy;\n    if (length2 <= 0) return;\n    const t = Math.max(0, Math.min(1, ((info.projX - p1[0]) * dx + (info.projY - p1[1]) * dy) / length2));\n    const px = p1[0] + t * dx, py = p1[1] + t * dy;\n    const d = (px - info.projX) ** 2 + (py - info.projY) ** 2;\n    if (d < bestDist) { bestDist = d; bestSeg = seg; }\n  });\n  if (!bestSeg) return null;\n\n  const tempKey = `\${tempKeyPrefix}:\${info.projX.toFixed(8)},\${info.projY.toFixed(8)}`;\n  routeGraph.set(tempKey, { lng: info.projX, lat: info.projY, neighbors: new Map() });\n  [nodeKey(bestSeg.p1[0], bestSeg.p1[1]), nodeKey(bestSeg.p2[0], bestSeg.p2[1])].forEach(k => {\n    const n = routeGraph.get(k);\n    if (!n) return;\n    const d = haversineMeters(info.projX, info.projY, n.lng, n.lat);\n    routeGraph.get(tempKey).neighbors.set(k, d);\n    n.neighbors.set(tempKey, d);\n  });\n  return tempKey;\n}\n\nfunction removeTempNode(key) {\n  if (!key || !routeGraph.has(key)) return;\n  routeGraph.get(key).neighbors.forEach((_, neighborKey) => {\n    const neighbor = routeGraph.get(neighborKey);\n    if (neighbor) neighbor.neighbors.delete(key);\n  });\n  routeGraph.delete(key);\n}\n\nfunction dijkstra(startKey, endKey) {\n  const dist = new Map();\n  const prev = new Map();\n  const visited = new Set();\n  routeGraph.forEach((_, k) => dist.set(k, Infinity));\n  dist.set(startKey, 0);\n\n  while (visited.size < routeGraph.size) {\n    let u = null, best = Infinity;\n    dist.forEach((d, k) => { if (!visited.has(k) && d < best) { best = d; u = k; } });\n    if (u === null || u === endKey) break;\n    visited.add(u);\n    routeGraph.get(u).neighbors.forEach((weight, v) => {\n      if (visited.has(v)) return;\n      const alt = dist.get(u) + weight;\n      if (alt < dist.get(v)) { dist.set(v, alt); prev.set(v, u); }\n    });\n  }\n\n  if (!isFinite(dist.get(endKey))) return null;\n  const path = [];\n  let cur = endKey;\n  while (cur !== undefined) {\n    path.unshift(cur);\n    if (cur === startKey) break;\n    cur = prev.get(cur);\n  }\n  return { distanceMeters: dist.get(endKey), pathKeys: path };\n}\n\nfunction bearing(lng1, lat1, lng2, lat2) {\n  const toRad = d => d * Math.PI / 180;\n  const y = Math.sin(toRad(lng2 - lng1)) * Math.cos(toRad(lat2));\n  const x = Math.cos(toRad(lat1)) * Math.sin(toRad(lat2)) -\n    Math.sin(toRad(lat1)) * Math.cos(toRad(lat2)) * Math.cos(toRad(lng2 - lng1));\n  return (Math.atan2(y, x) * 180 / Math.PI + 360) % 360;\n}\n\n// Collapses a raw node path into turn-by-turn instructions by walking the\n// bearing at each junction and bucketing the heading change into a turn.\n// Each instruction also carries cumulativeMeters — the distance along the\n// whole route at the point that instruction completes — so live position\n// updates can figure out which step the user is currently on.\nfunction buildInstructions(pathLatLngs) {\n  if (pathLatLngs.length < 2) return [];\n  const instructions = [];\n  let legStartIdx = 0;\n  let legBearing = bearing(pathLatLngs[0][1], pathLatLngs[0][0], pathLatLngs[1][1], pathLatLngs[1][0]);\n  let cumulative = 0;\n\n  const legDistance = (fromIdx, toIdx) => {\n    let m = 0;\n    for (let i = fromIdx; i < toIdx; i++) {\n      m += haversineMeters(pathLatLngs[i][1], pathLatLngs[i][0], pathLatLngs[i + 1][1], pathLatLngs[i + 1][0]);\n    }\n    return m;\n  };\n\n  for (let i = 1; i < pathLatLngs.length - 1; i++) {\n    const nextBearing = bearing(pathLatLngs[i][1], pathLatLngs[i][0], pathLatLngs[i + 1][1], pathLatLngs[i + 1][0]);\n    let delta = nextBearing - legBearing;\n    delta = ((delta + 540) % 360) - 180; // normalize to -180..180\n\n    if (Math.abs(delta) > 25) {\n      const meters = legDistance(legStartIdx, i);\n      cumulative += meters;\n      instructions.push({ text: `Walk \${Math.round(meters * 3.28084)} ft`, distanceMeters: meters, cumulativeMeters: cumulative });\n      instructions.push({\n        text: Math.abs(delta) > 135 ? \'Make a U-turn\' : (delta > 0 ? \'Turn right\' : \'Turn left\'),\n        distanceMeters: 0, cumulativeMeters: cumulative\n      });\n      legStartIdx = i;\n      legBearing = nextBearing;\n    }\n  }\n\n  const finalMeters = legDistance(legStartIdx, pathLatLngs.length - 1);\n  cumulative += finalMeters;\n  instructions.push({ text: `Walk \${Math.round(finalMeters * 3.28084)} ft`, distanceMeters: finalMeters, cumulativeMeters: cumulative });\n  instructions.push({ text: \'You have arrived\', distanceMeters: 0, cumulativeMeters: cumulative });\n  return instructions;\n}\n\n// Projects (lat, lng) onto a route polyline and returns how far along the\n// route that projection is (progressMeters) and how far off the route the\n// point actually is (offRouteMeters). Used to turn a live PDR position into\n// \"how far through the route is the user\" for auto-advancing instructions.\nfunction projectOntoRoute(lat, lng, pathLatLngs) {\n  let best = { progressMeters: 0, offRouteMeters: Infinity };\n  let cumulative = 0;\n  for (let i = 0; i < pathLatLngs.length - 1; i++) {\n    const [lat1, lng1] = pathLatLngs[i];\n    const [lat2, lng2] = pathLatLngs[i + 1];\n    const segMeters = haversineMeters(lng1, lat1, lng2, lat2);\n\n    // Project in a small local equirectangular frame (fine for corridor-scale distances).\n    const dx = lng2 - lng1, dy = lat2 - lat1;\n    const len2 = dx * dx + dy * dy;\n    const t = len2 <= 0 ? 0 : Math.max(0, Math.min(1, ((lng - lng1) * dx + (lat - lat1) * dy) / len2));\n    const projLat = lat1 + t * dy, projLng = lng1 + t * dx;\n    const offMeters = haversineMeters(lng, lat, projLng, projLat);\n\n    if (offMeters < best.offRouteMeters) {\n      best = { progressMeters: cumulative + t * segMeters, offRouteMeters: offMeters };\n    }\n    cumulative += segMeters;\n  }\n  return best;\n}\n\n// Runs the Dijkstra pathfinding for one point-to-point leg without drawing\n// anything — the shared core used by both a plain two-point route and a\n// multi-stop route (see computeMultiLegRoute below).\nfunction computeRawLeg(startLat, startLng, destLat, destLng) {\n  if (routeGraph.size === 0) {\n    console.warn(\'computeRawLeg: routing graph not built yet\');\n    return null;\n  }\n  const startKey = attachPointToGraph(startLng, startLat, \'__start\');\n  const endKey = attachPointToGraph(destLng, destLat, \'__end\');\n  if (!startKey || !endKey) {\n    removeTempNode(startKey); removeTempNode(endKey);\n    console.warn(\'computeRawLeg: could not snap start/destination to a corridor\');\n    return null;\n  }\n  const result = dijkstra(startKey, endKey);\n  if (!result) {\n    removeTempNode(startKey); removeTempNode(endKey);\n    console.warn(\'computeRawLeg: no path found between those points\');\n    return null;\n  }\n  const pathLatLngs = result.pathKeys.map(k => {\n    const n = routeGraph.get(k);\n    return [n.lat, n.lng];\n  });\n  removeTempNode(startKey);\n  removeTempNode(endKey);\n  return { path: pathLatLngs, distanceMeters: result.distanceMeters };\n}\n\n// window.routeBetween(startLat, startLng, destLat, destLng)\n// Draws the shortest walking route through the tunnel corridor graph and\n// returns { distanceMeters, distanceFeet, path: [[lat,lng],...], instructions }\n// or null if no route could be found. Call from Flutter\'s WebView controller\n// with the user\'s current (snapped) position and the chosen destination\'s\n// coordinates. Call window.clearRoute() to remove the drawn line.\nwindow.routeBetween = function(startLat, startLng, destLat, destLng) {\n  window.clearRoute();\n  const raw = computeRawLeg(startLat, startLng, destLat, destLng);\n  if (!raw) return null;\n\n  routeLayer = [L.polyline(raw.path, {\n    color: \'#5b8dee\', weight: 6, opacity: 0.95, lineCap: \'round\', lineJoin: \'round\'\n  }).addTo(map)];\n\n  return {\n    distanceMeters: raw.distanceMeters,\n    distanceFeet: Math.round(raw.distanceMeters * 3.28084),\n    path: raw.path,\n    instructions: buildInstructions(raw.path)\n  };\n};\n\n// Progressively lighter blue per leg, so a multi-stop route visually reads\n// as \"first leg, then the next, then the next\" rather than one flat line.\nconst LEG_COLORS = [\'#5b8dee\', \'#93b8f2\', \'#c3d9f8\', \'#dde9fb\'];\n\n// computeMultiLegRoute(waypoints) — waypoints is an ordered array of\n// { name, lat, lng }: [start, ...stops, destination]. Draws each leg as its\n// own polyline (lighter color per leg) and returns a single combined result\n// shaped exactly like window.routeBetween\'s — same { distanceMeters,\n// distanceFeet, path, instructions } — so everything downstream (the Go\n// button, live tracking, the directions list) doesn\'t need to know or care\n// whether stops were involved.\nfunction computeMultiLegRoute(waypoints) {\n  window.clearRoute();\n  let totalMeters = 0;\n  const combinedPath = [];\n  const combinedInstructions = [];\n  const drawnLayers = [];\n\n  for (let i = 0; i < waypoints.length - 1; i++) {\n    const a = waypoints[i], b = waypoints[i + 1];\n    const raw = computeRawLeg(a.lat, a.lng, b.lat, b.lng);\n    if (!raw) {\n      drawnLayers.forEach(l => map.removeLayer(l));\n      return null;\n    }\n    drawnLayers.push(L.polyline(raw.path, {\n      color: LEG_COLORS[Math.min(i, LEG_COLORS.length - 1)],\n      weight: 6, opacity: 0.95, lineCap: \'round\', lineJoin: \'round\'\n    }).addTo(map));\n\n    const legInstructions = buildInstructions(raw.path)\n      .map(step => ({ ...step, cumulativeMeters: step.cumulativeMeters + totalMeters }));\n    const isLastLeg = i === waypoints.length - 2;\n    // buildInstructions() always ends a leg with \"You have arrived\", which is\n    // only true on the actual final leg — for every earlier leg, drop that\n    // and replace it with a proper \"continue to the next stop\" transition.\n    if (!isLastLeg) legInstructions.pop();\n    combinedInstructions.push(...legInstructions);\n    combinedPath.push(...raw.path);\n    totalMeters += raw.distanceMeters;\n    if (!isLastLeg) {\n      combinedInstructions.push({ text: `Arrived at \${b.name} — continue to \${waypoints[i + 2].name}`, distanceMeters: 0, cumulativeMeters: totalMeters });\n    }\n  }\n\n  routeLayer = drawnLayers;\n  return {\n    distanceMeters: totalMeters,\n    distanceFeet: Math.round(totalMeters * 3.28084),\n    path: combinedPath,\n    instructions: combinedInstructions\n  };\n}\n\n// window.clearRoute() — removes every currently drawn route segment, if any.\nwindow.clearRoute = function() {\n  if (routeLayer) { routeLayer.forEach(l => map.removeLayer(l)); routeLayer = null; }\n};\n\n// ─── Non-overlapping business label placement ───\n// Business blocks are drawn horizontally (no rotation) so their pixel footprint\n// is predictable, then an iterative rectangle-separation pass nudges any that\n// collide apart. Below LABEL_ZOOM, businesses collapse to small dots so a wide\n// view doesn\'t try to cram hundreds of labels into a small area.\nconst LABEL_ZOOM = 18;\nconst businessItems = [];\nconst corridorLayers = [];  // L.geoJSON layer per tunnel corridor feature — faded by the Street/Tunnel level toggle\nconst entranceMarkers = []; // L.marker per entrance/exit point — faded by the same toggle\nconst navPlaces = []; // { name, lat, lng, type: \'business\'|\'entrance\', category, color } — feeds the nav destination/start pickers\n\nfunction makeDotIcon(color) {\n  return L.divIcon({\n    className: \'\',\n    html: `<div style=\"width:10px;height:10px;border-radius:50%;background:\${color};border:2px solid rgba(0,0,0,0.35);box-shadow:0 2px 6px rgba(0,0,0,0.5);\"></div>`,\n    iconSize: [10, 10],\n    iconAnchor: [5, 5]\n  });\n}\n\nfunction makeLabelIcon(name, color, width, height) {\n  return L.divIcon({\n    className: \'map-callout-icon\',\n    html: `<div class=\"mall-block\" style=\"width:\${width}px;height:\${height}px;background:\${color};\"><span class=\"mall-block-name\">\${escapeHtml(name)}</span></div>`,\n    iconSize: [width, height],\n    iconAnchor: [width / 2, height / 2]\n  });\n}\n\n// Iteratively pushes overlapping label boxes apart in screen-pixel space,\n// then converts the resolved positions back to LatLng and moves the markers.\n// Re-run on every zoomend since pixel distances (and therefore overlaps)\n// change with zoom; canonical positions are never mutated, so this never drifts.\nfunction layoutBusinessLabels() {\n  if (!businessItems.length) return;\n  const pad = 3;\n  const boxes = businessItems.map(item => {\n    const pt = map.latLngToContainerPoint(item.canonicalLatLng);\n    return { x: pt.x, y: pt.y, w: item.width, h: item.height, item, fixed: false };\n  });\n  // Entrance markers act as fixed obstacles: business labels get pushed clear\n  // of them, but entrances themselves never move — their position is a real,\n  // fixed physical location, not something that should drift for tidiness.\n  const entranceBoxes = entranceMarkers.map(marker => {\n    const pt = map.latLngToContainerPoint(marker.getLatLng());\n    return { x: pt.x, y: pt.y, w: 28, h: 28, fixed: true }; // a bit larger than the 22px icon so labels keep a small buffer\n  });\n  const allBoxes = boxes.concat(entranceBoxes);\n\n  for (let iter = 0; iter < 60; iter++) {\n    let moved = false;\n    for (let i = 0; i < allBoxes.length; i++) {\n      for (let j = i + 1; j < allBoxes.length; j++) {\n        const a = allBoxes[i], b = allBoxes[j];\n        if (a.fixed && b.fixed) continue; // two fixed entrances never push each other\n        const ax1 = a.x - a.w / 2 - pad, ax2 = a.x + a.w / 2 + pad;\n        const ay1 = a.y - a.h / 2 - pad, ay2 = a.y + a.h / 2 + pad;\n        const bx1 = b.x - b.w / 2 - pad, bx2 = b.x + b.w / 2 + pad;\n        const by1 = b.y - b.h / 2 - pad, by2 = b.y + b.h / 2 + pad;\n        const overlapX = Math.min(ax2, bx2) - Math.max(ax1, bx1);\n        const overlapY = Math.min(ay2, by2) - Math.max(ay1, by1);\n        if (overlapX > 0 && overlapY > 0) {\n          moved = true;\n          if (overlapX < overlapY) {\n            if (a.fixed) {\n              b.x += (b.x >= a.x ? overlapX + 1 : -(overlapX + 1));\n            } else if (b.fixed) {\n              a.x += (a.x >= b.x ? overlapX + 1 : -(overlapX + 1));\n            } else {\n              const shift = overlapX / 2 + 0.5;\n              if (a.x <= b.x) { a.x -= shift; b.x += shift; } else { a.x += shift; b.x -= shift; }\n            }\n          } else {\n            if (a.fixed) {\n              b.y += (b.y >= a.y ? overlapY + 1 : -(overlapY + 1));\n            } else if (b.fixed) {\n              a.y += (a.y >= b.y ? overlapY + 1 : -(overlapY + 1));\n            } else {\n              const shift = overlapY / 2 + 0.5;\n              if (a.y <= b.y) { a.y -= shift; b.y += shift; } else { a.y += shift; b.y -= shift; }\n            }\n          }\n        }\n      }\n    }\n    if (!moved) break;\n  }\n\n  boxes.forEach(box => {\n    const newLatLng = map.containerPointToLatLng(L.point(box.x, box.y));\n    box.item.marker.setLatLng(newLatLng);\n  });\n}\n\nfunction applyBusinessLOD() {\n  if (!businessItems.length) return;\n  const showLabels = map.getZoom() >= LABEL_ZOOM;\n  businessItems.forEach(item => {\n    item.marker.setIcon(showLabels ? item.labelIcon : item.dotIcon);\n    if (!showLabels) item.marker.setLatLng(item.canonicalLatLng);\n  });\n  if (showLabels) layoutBusinessLabels();\n}\n\nfunction getPerpendicularOffset(lng, lat, angle, side, distance) {\n  const rad = angle * Math.PI / 180;\n  const ux = Math.cos(rad);\n  const uy = Math.sin(rad);\n  const perpX = side > 0 ? -uy : uy;\n  const perpY = side > 0 ? ux : -ux;\n  return [lng + perpX * distance, lat + perpY * distance];\n}\n\nfunction normalizeLabelAngle(angle) {\n  if (angle > 90) return angle - 180;\n  if (angle < -90) return angle + 180;\n  return angle;\n}\n\nfunction populateSymbology() {\n  const bContainer = document.getElementById(\'sym-businesses\');\n  if (bContainer) {\n    bContainer.innerHTML = \'\';\n    Object.entries(CAT_COLOR).forEach(([k,v]) => {\n      const row = document.createElement(\'div\'); row.className = \'legend-row\';\n      const dot = document.createElement(\'div\'); dot.className = \'legend-dot\'; dot.style.background = v;\n      row.appendChild(dot);\n      const lbl = document.createElement(\'div\'); lbl.className = \'legend-label\'; lbl.textContent = k.charAt(0).toUpperCase()+k.slice(1);\n      row.appendChild(lbl);\n      bContainer.appendChild(row);\n    });\n  }\n\n  const tContainer = document.getElementById(\'sym-tunnels\');\n  if (tContainer) {\n    tContainer.innerHTML = \'\';\n    // Display-friendly labels for the normalized TUNNEL_COLORS keys, in the\n    // same order as the official field guide\'s legend.\n    const TUNNEL_DISPLAY_NAMES = {\n      \'downtown tunnel loop\': \'Downtown Tunnel Loop\',\n      \'w walker\': \'W. Walker Tunnel\',\n      \'n louisiana\': \'N. Louisiana Tunnel\',\n      \'n travis\': \'N. Travis Tunnel\',\n      \'rusk\': \'Rusk Tunnel\',\n      \'lamar\': \'Lamar Tunnel\',\n      \'w dallas\': \'W. Dallas Tunnel & Skywalk\',\n      \'e mckinney\': \'E. McKinney Tunnel & Skywalk\',\n      \'s louisiana\': \'S. Louisiana Tunnel & Skywalk\',\n      \'convention\': \'Convention Skywalk\',\n      \'st joseph\': \'St. Joseph Skywalk\',\n      \'harris county\': \'Harris County Tunnel (Limited Access)\',\n      \'limited access\': \'Limited Access Tunnel & Skywalks\'\n    };\n    Object.entries(TUNNEL_COLORS).forEach(([key, color]) => {\n      const row = document.createElement(\'div\'); row.className = \'legend-row\';\n      const dot = document.createElement(\'div\'); dot.className = \'legend-dot\'; dot.style.background = color;\n      row.appendChild(dot);\n      const lbl = document.createElement(\'div\'); lbl.className = \'legend-label\'; lbl.textContent = TUNNEL_DISPLAY_NAMES[key] || key;\n      row.appendChild(lbl);\n      tContainer.appendChild(row);\n    });\n  }\n\n  const eContainer = document.getElementById(\'sym-entries\');\n  if (eContainer) {\n    eContainer.innerHTML = \'\';\n    const row = document.createElement(\'div\'); row.className = \'legend-row\';\n    const ent = document.createElement(\'div\'); ent.className = \'legend-entry\'; ent.style.background = \'#f06a6a\';\n    row.appendChild(ent);\n    const lbl = document.createElement(\'div\'); lbl.className = \'legend-label\'; lbl.textContent = \'Entry / Exit\';\n    row.appendChild(lbl);\n    eContainer.appendChild(row);\n  }\n\n  const toggle = document.getElementById(\'symbology-toggle\');\n  const panel = document.getElementById(\'symbology-panel\');\n  const closeBtn = document.getElementById(\'sym-close\');\n  if (toggle && panel) {\n    toggle.addEventListener(\'click\', () => { panel.classList.toggle(\'show\'); panel.setAttribute(\'aria-hidden\', !panel.classList.contains(\'show\')); });\n  }\n  if (closeBtn && panel) closeBtn.addEventListener(\'click\', () => { panel.classList.remove(\'show\'); panel.setAttribute(\'aria-hidden\', \'true\'); });\n  if (map && panel) map.on(\'click\', () => panel.classList.remove(\'show\'));\n}\n\n// ─── Street / Tunnel level toggle ───\n// \"Tunnel\" (default) shows the full underground layer at full opacity —\n// corridors, businesses, entrances — exactly as before. \"Street\" fades all of\n// that down to a faint ghost so the plain basemap reads as the above-ground\n// view, without literally removing the tunnel layer (still there, just quiet).\nlet currentMapLevel = \'tunnel\';\nfunction setMapLevel(level) {\n  currentMapLevel = level;\n  const opacity = level === \'street\' ? 0.12 : 1;\n\n  corridorLayers.forEach(layer => layer.setStyle({ opacity, fillOpacity: opacity }));\n  entranceMarkers.forEach(marker => marker.setOpacity(opacity));\n  businessItems.forEach(item => item.marker.setOpacity(opacity));\n\n  const mapEl = document.getElementById(\'map\');\n  if (mapEl) mapEl.classList.toggle(\'level-street\', level === \'street\');\n\n  document.getElementById(\'level-btn-street\').classList.toggle(\'active\', level === \'street\');\n  document.getElementById(\'level-btn-tunnel\').classList.toggle(\'active\', level === \'tunnel\');\n}\ndocument.getElementById(\'level-btn-street\').addEventListener(\'click\', () => setMapLevel(\'street\'));\ndocument.getElementById(\'level-btn-tunnel\').addEventListener(\'click\', () => setMapLevel(\'tunnel\'));\n\n// ─── User position marker (PDR \"you are here\") ───\n// This is the hook Flutter calls on every PDR update. The map itself does no\n// sensor math — it only ever receives a lat/lng/heading and draws it. All PDR\n// calculation (step detection, heading fusion, drift correction) lives in Dart.\nlet userMarker = null;\nlet userStaleTimer = null;\nlet userAccuracyCircle = null;\n\nfunction buildUserMarkerHtml(headingDegrees) {\n  const rot = typeof headingDegrees === \'number\' ? headingDegrees : 0;\n  return `<div class=\"user-pos-marker\" id=\"user-pos-marker-inner\" style=\"transform:rotate(\${rot}deg);\">\n    <div class=\"user-pos-cone\"></div>\n    <div class=\"user-pos-dot\"></div>\n  </div>`;\n}\n\n// window.updateUserPosition(lat, lng, headingDegrees, accuracy)\n// Call this from Flutter\'s WebView controller (e.g. runJavaScript) on every\n// PDR position update, or from browser GPS (see startBrowserTracking below).\n// headingDegrees is optional (0 = north, clockwise) — omit it if you only\n// want to move the dot without rotating the cone. accuracy (meters) is\n// optional too — when provided, draws a translucent accuracy radius circle\n// around the marker, same as native map apps show for GPS fixes.\nwindow.updateUserPosition = function(lat, lng, headingDegrees, accuracy) {\n  if (typeof lat !== \'number\' || typeof lng !== \'number\' || Number.isNaN(lat) || Number.isNaN(lng)) {\n    console.warn(\'updateUserPosition: invalid coordinates\', lat, lng);\n    return;\n  }\n  const icon = L.divIcon({\n    className: \'\',\n    html: buildUserMarkerHtml(headingDegrees),\n    iconSize: [40, 40],\n    iconAnchor: [20, 20]\n  });\n  if (!userMarker) {\n    userMarker = L.marker([lat, lng], { icon, zIndexOffset: 1000 }).addTo(map);\n  } else {\n    userMarker.setLatLng([lat, lng]);\n    userMarker.setIcon(icon);\n  }\n  // Show the position accuracy radius, when provided (e.g. browser GPS).\n  if (Number.isFinite(accuracy) && accuracy > 0) {\n    if (!userAccuracyCircle) {\n      userAccuracyCircle = L.circle([lat, lng], {\n        radius: accuracy,\n        weight: 1,\n        fillOpacity: 0.10,\n        interactive: false\n      }).addTo(map);\n    } else {\n      userAccuracyCircle.setLatLng([lat, lng]);\n      userAccuracyCircle.setRadius(accuracy);\n    }\n  }\n  const el = userMarker.getElement ? userMarker.getElement() : null;\n  if (el) el.classList.remove(\'stale\');\n  if (userStaleTimer) clearTimeout(userStaleTimer);\n  // If no update arrives for 5s (e.g. PDR paused/lost), gray out the marker\n  // so it\'s visually clear the position is no longer live.\n  userStaleTimer = setTimeout(() => {\n    const el2 = userMarker && userMarker.getElement ? userMarker.getElement() : null;\n    if (el2) el2.classList.add(\'stale\');\n  }, 5000);\n\n  // Drive live turn-by-turn auto-advance off every position update — works\n  // identically whether this call comes from the dev PDR test panel below,\n  // browser GPS (startBrowserTracking), or (eventually) Flutter\'s real PDR\n  // engine, since all three just call this same function.\n  updateLiveNavigation(lat, lng);\n};\n\n// ─── Browser GPS + Socket.IO live tracking ───\n// This layer is optional and additive. Flutter/PDR can continue calling\n// updateUserPosition() exactly as before. When running this page in a normal\n// browser, call window.startBrowserTracking() (or press \"g\") to stream real\n// browser geolocation onto the map, and optionally to a Socket.IO backend so\n// other connected users\' live positions render as remote markers too.\nlet liveSocket = null;\nlet browserWatchId = null;\nlet lastBrowserHeading = 0;\nconst remoteUserMarkers = new Map();\n\nfunction getTrackingUserId() {\n  let id = sessionStorage.getItem(\'wwmlLiveUserId\');\n  if (!id) {\n    id = (window.crypto && crypto.randomUUID)\n      ? crypto.randomUUID()\n      : `user-\${Date.now()}-\${Math.random().toString(16).slice(2)}`;\n    sessionStorage.setItem(\'wwmlLiveUserId\', id);\n  }\n  return id;\n}\n\nfunction ensureLiveSocket() {\n  if (liveSocket) return liveSocket;\n  if (typeof io === \'undefined\') {\n    console.warn(\'Socket.IO client is unavailable. Live sharing is disabled.\');\n    return null;\n  }\n\n  liveSocket = io();\n\n  liveSocket.on(\'location:snapshot\', (items) => {\n    if (!Array.isArray(items)) return;\n    items.forEach(renderRemoteUser);\n  });\n\n  liveSocket.on(\'location:update\', renderRemoteUser);\n\n  liveSocket.on(\'location:remove\', ({ userId }) => {\n    const marker = remoteUserMarkers.get(userId);\n    if (marker) {\n      map.removeLayer(marker);\n      remoteUserMarkers.delete(userId);\n    }\n  });\n\n  return liveSocket;\n}\n\nfunction renderRemoteUser(data) {\n  if (!data || data.userId === getTrackingUserId()) return;\n  if (!Number.isFinite(data.lat) || !Number.isFinite(data.lng)) return;\n\n  const label = data.userId.slice(0, 8);\n  const html = `<div style=\"width:16px;height:16px;border-radius:50%;background:#ff9f43;border:2px solid white;box-shadow:0 0 0 2px rgba(0,0,0,.25);\" title=\"\${label}\"></div>`;\n  const icon = L.divIcon({ className: \'\', html, iconSize: [20, 20], iconAnchor: [10, 10] });\n\n  let marker = remoteUserMarkers.get(data.userId);\n  if (!marker) {\n    marker = L.marker([data.lat, data.lng], { icon, zIndexOffset: 900 }).addTo(map);\n    marker.bindTooltip(`Live user \${label}`, { direction: \'top\' });\n    remoteUserMarkers.set(data.userId, marker);\n  } else {\n    marker.setLatLng([data.lat, data.lng]);\n    marker.setIcon(icon);\n  }\n}\n\nwindow.startBrowserTracking = function() {\n  if (!navigator.geolocation) {\n    alert(\'Geolocation is not supported by this browser.\');\n    return;\n  }\n  if (browserWatchId !== null) return;\n\n  const socket = ensureLiveSocket();\n  browserWatchId = navigator.geolocation.watchPosition(\n    (position) => {\n      const { latitude: lat, longitude: lng, accuracy, heading } = position.coords;\n      if (Number.isFinite(heading)) lastBrowserHeading = heading;\n\n      // Reuse the existing marker API so Flutter/PDR and browser GPS render identically.\n      window.updateUserPosition(lat, lng, lastBrowserHeading, accuracy);\n\n      if (socket && socket.connected) {\n        socket.emit(\'location:update\', {\n          userId: getTrackingUserId(),\n          lat,\n          lng,\n          heading: lastBrowserHeading,\n          accuracy,\n          timestamp: position.timestamp\n        });\n      }\n    },\n    (err) => {\n      console.error(\'Browser geolocation error:\', err);\n      alert(`Location error: \${err.message}`);\n      window.stopBrowserTracking();\n    },\n    {\n      enableHighAccuracy: true,\n      maximumAge: 0,\n      timeout: 10000\n    }\n  );\n};\n\nwindow.stopBrowserTracking = function() {\n  if (browserWatchId !== null) {\n    navigator.geolocation.clearWatch(browserWatchId);\n    browserWatchId = null;\n  }\n};\n\n// Simple keyboard controls for desktop testing. Press G to start browser GPS, X to stop.\nwindow.addEventListener(\'keydown\', (e) => {\n  if (e.key.toLowerCase() === \'g\') window.startBrowserTracking();\n  if (e.key.toLowerCase() === \'x\') window.stopBrowserTracking();\n});\n\n// window.snapToNearestCorridor(lat, lng) -> { lat, lng, angle, side, dist }\n// Wraps the existing getNearestTunnelSegment() vector-projection logic so it\n// can be called from Flutter too, in case you want the map\'s JS to do the\n// snap-to-corridor step rather than porting that math to Dart.\nwindow.snapToNearestCorridor = function(lat, lng) {\n  const result = getNearestTunnelSegment(lng, lat);\n  if (!isFinite(result.dist)) return null;\n  return { lat: result.projY, lng: result.projX, angle: result.angle, side: result.side, dist: result.dist };\n};\n\n// ─── Navigation panel: combined planner (start + destination always visible) → directions ───\nconst navPanel = document.getElementById(\'nav-panel\');\nconst navSteps = {\n  planner: document.getElementById(\'nav-step-planner\'),\n  directions: document.getElementById(\'nav-step-directions\')\n};\nconst navState = { start: null, destination: null, stops: [] }; // stops: ordered array of place-or-null, visited between start and destination\nlet navActiveField = null;   // \'start\' | \'destination\' | { type: \'stop\', index } | null — which row\'s editor is open\nlet navFieldMode = \'list\';   // \'list\' | \'tap\' — for whichever field is being edited\nlet navTempMarker = null;    // preview marker for a tap-picked point\nlet navPickingFromMap = false;\nlet navRouteActive = false;  // true once a route is drawn — survives closing the panel, cleared only by End Navigation\nlet navPreviewResult = null; // last computed route result, used when \"Go\" is pressed\n\nfunction iconMarkupFor(place) {\n  if (place.type === \'entrance\') return `<div class=\"nav-list-entry\" style=\"background:\${place.color}\"></div>`;\n  return `<div class=\"nav-list-dot\" style=\"background:\${place.color || \'#9aa0c8\'}\"></div>`;\n}\n\nfunction renderNavList(container, filterText, onSelect) {\n  const q = (filterText || \'\').trim().toLowerCase();\n  const items = navPlaces\n    .filter(p => !q || p.name.toLowerCase().includes(q))\n    .sort((a, b) => a.name.localeCompare(b.name))\n    .slice(0, 60); // cap so a broad/empty search doesn\'t render hundreds of rows at once\n\n  container.innerHTML = \'\';\n  if (!items.length) {\n    container.innerHTML = \'<div class=\"nav-empty\">No matches</div>\';\n    return;\n  }\n  items.forEach(place => {\n    const row = document.createElement(\'div\');\n    row.className = \'nav-list-item\';\n    row.innerHTML = `\${iconMarkupFor(place)}<div class=\"nav-list-text\"><div class=\"nav-list-name\"></div><div class=\"nav-list-type\">\${place.type}</div></div>`;\n    row.querySelector(\'.nav-list-name\').textContent = place.name; // textContent to avoid HTML injection from data\n    row.addEventListener(\'click\', () => onSelect(place));\n    container.appendChild(row);\n  });\n}\n\nfunction goToNavStep(step) {\n  Object.values(navSteps).forEach(el => el.classList.remove(\'active\'));\n  navSteps[step].classList.add(\'active\');\n}\n\n// Reflects navState.start / navState.destination / navState.stops onto the\n// route-card rows and shows/hides the Go bar. Called after every selection,\n// clear, add-stop, or remove-stop.\nfunction updateRouteCard() {\n  const startTextEl = document.getElementById(\'nav-row-start-text\');\n  const destTextEl = document.getElementById(\'nav-row-dest-text\');\n  startTextEl.textContent = navState.start ? navState.start.name : \'Choose starting point\';\n  startTextEl.classList.toggle(\'placeholder\', !navState.start);\n  destTextEl.textContent = navState.destination ? navState.destination.name : \'Choose destination\';\n  destTextEl.classList.toggle(\'placeholder\', !navState.destination);\n  document.getElementById(\'nav-row-start-clear\').style.display = navState.start ? \'block\' : \'none\';\n  document.getElementById(\'nav-row-dest-clear\').style.display = navState.destination ? \'block\' : \'none\';\n\n  renderStopRows();\n\n  const allFilled = navState.start && navState.destination && navState.stops.every(s => s !== null);\n  if (allFilled) {\n    computeRoutePreview();\n  } else {\n    navPreviewResult = null;\n    document.getElementById(\'nav-go-bar\').style.display = \'none\';\n    document.getElementById(\'nav-planner-error\').style.display = \'none\';\n    window.clearRoute();\n  }\n}\n\n// Rebuilds the dynamic stop rows as direct siblings of #nav-row-start and\n// #nav-row-dest (inserted between them), so the CSS border-between-rows rule\n// and the travel order — start → stops in order → destination — both stay\n// correct without a separate wrapper element.\nfunction renderStopRows() {\n  const card = document.querySelector(\'.nav-route-card\');\n  const destRow = document.getElementById(\'nav-row-dest\');\n  card.querySelectorAll(\'.nav-route-row[data-stop-index]\').forEach(el => el.remove());\n\n  navState.stops.forEach((place, i) => {\n    const row = document.createElement(\'div\');\n    row.className = \'nav-route-row\';\n    row.dataset.stopIndex = i;\n    row.innerHTML = `\n      <div class=\"nav-route-icon-start\"></div>\n      <div class=\"nav-route-text\${place ? \'\' : \' placeholder\'}\"></div>\n      <div class=\"nav-route-clear\">✕</div>\n    `;\n    row.querySelector(\'.nav-route-text\').textContent = place ? place.name : `Stop \${i + 1}`;\n    row.addEventListener(\'click\', () => openField({ type: \'stop\', index: i }, row));\n    row.querySelector(\'.nav-route-clear\').addEventListener(\'click\', (e) => {\n      e.stopPropagation();\n      navState.stops.splice(i, 1);\n      updateRouteCard();\n    });\n    card.insertBefore(row, destRow);\n  });\n}\n\n// Draws a preview of the route as soon as every field (start, destination,\n// and every stop) is set, and fills in the Go bar with distance + a rough\n// walking-time estimate — mirrors how Apple Maps shows the route before you\n// actually start turn-by-turn. With one or more stops, this composes the\n// route from computeMultiLegRoute instead of a single point-to-point leg.\nfunction computeRoutePreview() {\n  const waypoints = [navState.start, ...navState.stops, navState.destination];\n  const result = waypoints.length > 2\n    ? computeMultiLegRoute(waypoints)\n    : window.routeBetween(navState.start.lat, navState.start.lng, navState.destination.lat, navState.destination.lng);\n\n  const errEl = document.getElementById(\'nav-planner-error\');\n  const goBar = document.getElementById(\'nav-go-bar\');\n\n  if (!result) {\n    navPreviewResult = null;\n    goBar.style.display = \'none\';\n    errEl.textContent = \"Couldn\'t find a route between those points.\";\n    errEl.style.display = \'block\';\n    return;\n  }\n\n  navPreviewResult = result;\n  errEl.style.display = \'none\';\n  const mins = Math.max(1, Math.round(result.distanceMeters / 84)); // ~84 m/min average walking pace\n  document.getElementById(\'nav-go-distance\').textContent = `\${mins} min • \${result.distanceFeet} ft`;\n  document.getElementById(\'nav-go-sub\').textContent = `to \${navState.destination.name}`;\n  goBar.style.display = \'flex\';\n  map.fitBounds(L.latLngBounds(result.path), { padding: [40, 40] });\n}\n\n// openNavPanel(prefillDestination?) — prefillDestination is used when the\n// business popup\'s Directions button is tapped. Existing selections are kept\n// (not reset) so reopening the panel always shows what was last chosen.\nfunction openNavPanel(prefillDestination) {\n  navPanel.classList.add(\'show\');\n  closeFieldEditor();\n  if (prefillDestination) navState.destination = prefillDestination;\n  goToNavStep(\'planner\');\n  updateRouteCard();\n}\n\nfunction closeNavPanel() {\n  navPanel.classList.remove(\'show\');\n  closeFieldEditor();\n}\n\nfunction closeFieldEditor() {\n  navActiveField = null;\n  navPickingFromMap = false;\n  document.getElementById(\'nav-field-editor\').style.display = \'none\';\n  document.querySelectorAll(\'.nav-route-row\').forEach(el => el.classList.remove(\'active\'));\n  if (navTempMarker) { map.removeLayer(navTempMarker); navTempMarker = null; }\n}\n\n// Small helpers so start / destination / a specific stop can all be read and\n// written through one code path, since navActiveField may be the plain\n// strings \'start\'/\'destination\' or an object { type: \'stop\', index }.\nfunction getFieldPlace(field) {\n  if (field === \'start\') return navState.start;\n  if (field === \'destination\') return navState.destination;\n  if (field && field.type === \'stop\') return navState.stops[field.index];\n  return null;\n}\nfunction setFieldPlace(field, place) {\n  if (field === \'start\') navState.start = place;\n  else if (field === \'destination\') navState.destination = place;\n  else if (field && field.type === \'stop\') navState.stops[field.index] = place;\n}\n\n// openField(field, rowEl) — opens the inline list/tap editor under the route\n// card for that row. rowEl is the specific DOM row to highlight (start/dest\n// are fixed elements; a stop\'s row is looked up by renderStopRows at click\n// time since it can move/renumber as other stops are added or removed).\nfunction openField(field, rowEl) {\n  navActiveField = field;\n  document.querySelectorAll(\'.nav-route-row\').forEach(el => el.classList.remove(\'active\'));\n  if (rowEl) rowEl.classList.add(\'active\');\n  document.getElementById(\'nav-field-editor\').style.display = \'flex\';\n  document.getElementById(\'nav-field-search\').value = \'\';\n  setFieldMode(\'list\');\n}\n\nfunction selectField(field, place) {\n  setFieldPlace(field, place);\n  closeFieldEditor();\n  updateRouteCard();\n}\n\nfunction clearField(field, e) {\n  if (e) e.stopPropagation();\n  setFieldPlace(field, null);\n  updateRouteCard();\n}\n\nfunction setFieldMode(mode) {\n  navFieldMode = mode;\n  document.getElementById(\'nav-field-mode-list\').classList.toggle(\'active\', mode === \'list\');\n  document.getElementById(\'nav-field-mode-tap\').classList.toggle(\'active\', mode === \'tap\');\n  document.getElementById(\'nav-field-search\').style.display = mode === \'list\' ? \'block\' : \'none\';\n  document.getElementById(\'nav-field-list\').style.display = mode === \'list\' ? \'block\' : \'none\';\n  const banner = document.getElementById(\'nav-tap-banner\');\n  if (mode === \'tap\') {\n    const label = navActiveField === \'start\' ? \'starting point\' : navActiveField === \'destination\' ? \'destination\' : \'stop\';\n    banner.textContent = `Tap anywhere on the map to set your \${label}.`;\n    banner.style.display = \'block\';\n    navPickingFromMap = true;\n  } else {\n    banner.style.display = \'none\';\n    navPickingFromMap = false;\n    renderNavList(document.getElementById(\'nav-field-list\'), \'\', (place) => selectField(navActiveField, place));\n  }\n}\n\n// Places a preview marker at (lat, lng), assigns it to whichever field is\n// being edited, and closes the field editor. Called both for a raw map tap\n// and for a tap directly on a business marker (see marker click handler\n// below) — a business marker stops click propagation to show its popup, so\n// without this it would be impossible to pick a business while tap-mode is\n// active.\nfunction pickNavPoint(lat, lng, name) {\n  if (navTempMarker) map.removeLayer(navTempMarker);\n  navTempMarker = L.marker([lat, lng], {\n    icon: L.divIcon({\n      className: \'\',\n      html: `<div style=\"width:16px;height:16px;border-radius:50%;background:#34d399;border:3px solid rgba(255,255,255,0.85);box-shadow:0 0 8px #34d39988;\"></div>`,\n      iconSize: [16, 16], iconAnchor: [8, 8]\n    })\n  }).addTo(map);\n  navPickingFromMap = false;\n  selectField(navActiveField, { name: name || \'Selected point on map\', lat, lng, type: name ? \'business\' : \'custom\' });\n}\n\n// Handles a map click while \"Tap on map\" is active for whichever field is\n// being edited. Runs alongside the existing PDR-test click handler without\n// conflicting — this one only acts when navPickingFromMap is true.\nmap.on(\'click\', (e) => {\n  if (!navPickingFromMap || !navActiveField) return;\n  pickNavPoint(e.latlng.lat, e.latlng.lng);\n});\n\ndocument.getElementById(\'nav-row-start\').addEventListener(\'click\', () => openField(\'start\', document.getElementById(\'nav-row-start\')));\ndocument.getElementById(\'nav-row-dest\').addEventListener(\'click\', () => openField(\'destination\', document.getElementById(\'nav-row-dest\')));\ndocument.getElementById(\'nav-row-start-clear\').addEventListener(\'click\', (e) => clearField(\'start\', e));\ndocument.getElementById(\'nav-row-dest-clear\').addEventListener(\'click\', (e) => clearField(\'destination\', e));\ndocument.getElementById(\'nav-add-stop\').addEventListener(\'click\', () => {\n  navState.stops.push(null);\n  updateRouteCard();\n});\n\ndocument.getElementById(\'nav-field-mode-list\').addEventListener(\'click\', () => setFieldMode(\'list\'));\ndocument.getElementById(\'nav-field-mode-tap\').addEventListener(\'click\', () => setFieldMode(\'tap\'));\ndocument.getElementById(\'nav-field-search\').addEventListener(\'input\', (e) => {\n  renderNavList(document.getElementById(\'nav-field-list\'), e.target.value, (place) => selectField(navActiveField, place));\n});\n\ndocument.getElementById(\'nav-fab\').addEventListener(\'click\', () => {\n  if (navRouteActive) {\n    // A route is already drawn (panel was closed, not ended) — reopen\n    // straight to the directions list instead of the planner.\n    navPanel.classList.add(\'show\');\n    goToNavStep(\'directions\');\n  } else {\n    openNavPanel();\n  }\n});\ndocument.getElementById(\'nav-close-planner\').addEventListener(\'click\', closeNavPanel);\n// Closing directions goes back to the planner (still showing both points and\n// the route) rather than hiding the whole panel — only End Navigation does that.\ndocument.getElementById(\'nav-close-4\').addEventListener(\'click\', closeNavPanel);\n\nlet activeRoute = null;     // { path, distanceMeters, instructions } for the route currently being walked — used to auto-advance steps\nlet instructionRowEls = []; // [{ el, instruction }] — kept in sync with the rendered list so live tracking can highlight the current row\nlet lastRerouteAt = 0;\nconst OFF_ROUTE_METERS = 18;      // ~60 ft off the drawn route before we trigger a reroute\nconst REROUTE_COOLDOWN_MS = 4000; // don\'t reroute more than once every 4s, even if consistently off-route\nconst ARRIVAL_METERS = 5;         // ~16 ft — close enough to call it \"arrived\"\n\nfunction iconForInstruction(text) {\n  if (text.startsWith(\'Walk\')) return \'⬆\';\n  if (text.startsWith(\'Arrived at\')) return \'📍\';\n  if (text === \'Turn left\') return \'↰\';\n  if (text === \'Turn right\') return \'↱\';\n  if (text === \'Make a U-turn\') return \'↩\';\n  if (text === \'You have arrived\') return \'🏁\';\n  return \'•\';\n}\n\n// Renders the turn-by-turn list and resets the live-tracking row references.\n// Used both when \"Go\" is first pressed and whenever a reroute happens mid-walk.\nfunction renderInstructionsList(result) {\n  document.getElementById(\'nav-total-distance\').textContent = `\${result.distanceFeet} ft`;\n  document.getElementById(\'nav-total-distance-sub\').textContent = \'to destination\';\n  const list = document.getElementById(\'nav-instructions-list\');\n  list.innerHTML = \'\';\n  instructionRowEls = [];\n  result.instructions.forEach(step => {\n    const row = document.createElement(\'div\');\n    row.className = \'nav-instruction-row\';\n    row.innerHTML = `<div class=\"nav-instruction-icon\">\${iconForInstruction(step.text)}</div><div class=\"nav-instruction-text\"></div>`;\n    row.querySelector(\'.nav-instruction-text\').textContent = step.text;\n    list.appendChild(row);\n    instructionRowEls.push({ el: row, instruction: step });\n  });\n}\n\n// Called from window.updateUserPosition() on every live position update while\n// a route is active. Figures out how far along the route the user is, shows\n// the upcoming maneuver in the live banner, highlights the current step in\n// the list, and triggers a reroute if the user has wandered off the drawn path.\nfunction updateLiveNavigation(lat, lng) {\n  if (!navRouteActive || !activeRoute) return;\n\n  const { progressMeters, offRouteMeters } = projectOntoRoute(lat, lng, activeRoute.path);\n\n  if (offRouteMeters > OFF_ROUTE_METERS && Date.now() - lastRerouteAt > REROUTE_COOLDOWN_MS && navState.destination) {\n    lastRerouteAt = Date.now();\n    const fresh = window.routeBetween(lat, lng, navState.destination.lat, navState.destination.lng);\n    if (fresh) {\n      activeRoute = fresh;\n      navPreviewResult = fresh;\n      renderInstructionsList(fresh);\n    }\n    return; // let the next position update drive the banner off the fresh route\n  }\n\n  const remainingMeters = Math.max(0, activeRoute.distanceMeters - progressMeters);\n  document.getElementById(\'nav-total-distance\').textContent = `\${Math.round(remainingMeters * 3.28084)} ft`;\n  document.getElementById(\'nav-total-distance-sub\').textContent = \'remaining\';\n\n  // The next maneuver is the first non-\"Walk\" instruction whose cumulative\n  // distance is still ahead of (or right at) the user\'s current progress.\n  const maneuverIdx = instructionRowEls.findIndex(({ instruction }) =>\n    !instruction.text.startsWith(\'Walk\') && instruction.cumulativeMeters >= progressMeters - 1);\n\n  const banner = document.getElementById(\'nav-live-banner\');\n  if (maneuverIdx === -1) {\n    banner.classList.remove(\'show\');\n  } else {\n    const maneuver = instructionRowEls[maneuverIdx].instruction;\n    const distToManeuverFt = Math.round((maneuver.cumulativeMeters - progressMeters) * 3.28084);\n    document.getElementById(\'nav-live-icon\').textContent = iconForInstruction(maneuver.text);\n    document.getElementById(\'nav-live-primary\').textContent = maneuver.text;\n    document.getElementById(\'nav-live-sub\').textContent =\n      maneuver.text === \'You have arrived\' ? \'\' : (distToManeuverFt <= 15 ? \'Now\' : `in \${distToManeuverFt} ft`);\n    banner.classList.add(\'show\');\n\n    instructionRowEls.forEach(({ el }, i) => el.classList.toggle(\'current\', i === maneuverIdx - 1 || i === maneuverIdx));\n    const currentEl = instructionRowEls[maneuverIdx].el;\n    currentEl.scrollIntoView({ block: \'nearest\', behavior: \'smooth\' });\n  }\n\n  if (remainingMeters <= ARRIVAL_METERS) {\n    document.getElementById(\'nav-live-icon\').textContent = \'🏁\';\n    document.getElementById(\'nav-live-primary\').textContent = \'You have arrived\';\n    document.getElementById(\'nav-live-sub\').textContent = \'\';\n    banner.classList.add(\'show\');\n  }\n}\n\ndocument.getElementById(\'nav-go-btn\').addEventListener(\'click\', () => {\n  if (!navPreviewResult) return;\n  renderInstructionsList(navPreviewResult);\n  document.getElementById(\'nav-live-banner\').classList.remove(\'show\');\n  activeRoute = navPreviewResult;\n  goToNavStep(\'directions\');\n  navRouteActive = true;\n});\n\nfunction endNavigation() {\n  window.clearRoute();\n  navState.destination = null;\n  navState.start = null;\n  navState.stops = [];\n  navPreviewResult = null;\n  activeRoute = null;\n  instructionRowEls = [];\n  navRouteActive = false;\n  document.getElementById(\'nav-live-banner\').classList.remove(\'show\');\n  closeNavPanel();\n  updateRouteCard();\n}\ndocument.getElementById(\'nav-end-route\').addEventListener(\'click\', endNavigation);\n\n// ─── PDR test panel wiring (dev-only, see HTML block above) ───\nlet testHeading = 0;\ndocument.getElementById(\'pdr-test-toggle\').addEventListener(\'click\', () => {\n  document.getElementById(\'pdr-test-panel\').style.display =\n    document.getElementById(\'pdr-test-panel\').style.display === \'block\' ? \'none\' : \'block\';\n});\ndocument.getElementById(\'pdr-rotate-left\').addEventListener(\'click\', () => {\n  testHeading = (testHeading - 15 + 360) % 360;\n  if (userMarker) window.updateUserPosition(userMarker.getLatLng().lat, userMarker.getLatLng().lng, testHeading);\n});\ndocument.getElementById(\'pdr-rotate-right\').addEventListener(\'click\', () => {\n  testHeading = (testHeading + 15) % 360;\n  if (userMarker) window.updateUserPosition(userMarker.getLatLng().lat, userMarker.getLatLng().lng, testHeading);\n});\ndocument.getElementById(\'pdr-snap-test\').addEventListener(\'click\', () => {\n  if (!userMarker) return;\n  const pos = userMarker.getLatLng();\n  const snapped = window.snapToNearestCorridor(pos.lat, pos.lng);\n  if (snapped) window.updateUserPosition(snapped.lat, snapped.lng, testHeading);\n});\n// Click anywhere on the map to drop/move the test marker there (dev-only).\nmap.on(\'click\', (e) => {\n  if (document.getElementById(\'pdr-test-panel\').style.display === \'block\') {\n    window.updateUserPosition(e.latlng.lat, e.latlng.lng, testHeading);\n  }\n});\n\nasync function fetchJsonWithTimeout(url, timeoutMs = 15000) {\n  const controller = new AbortController();\n  const timeoutId = setTimeout(() => controller.abort(), timeoutMs);\n\n  try {\n    const response = await fetch(url, { signal: controller.signal });\n    if (!response.ok) {\n      throw new Error(`HTTP \${response.status} for \${url}`);\n    }\n    return await response.json();\n  } finally {\n    clearTimeout(timeoutId);\n  }\n}\n\nasync function loadAll() {\n  const loadingText = document.querySelector(\'#loading p\');\n\n  try {\n    if (loadingText) loadingText.textContent = \'Loading tunnel data...\';\n    const [tData, bData, eData] = await Promise.all([\n      fetchJsonWithTimeout(URLS.tunnels),\n      fetchJsonWithTimeout(URLS.businesses),\n      fetchJsonWithTimeout(URLS.entries)\n    ]);\n\n    if (!tData || !tData.features || !bData || !bData.features || !eData || !eData.features) {\n      throw new Error(\'One or more map datasets did not load. Check the network connection or open the page via a local web server.\');\n    }\n\n    // Tunnel corridors — colored per named tunnel via getTunnelColor() (see the\n    // TUNNEL_COLORS palette, sourced from the official Downtown Houston Field Guide legend)\n    if (tData.features) {\n      tData.features.forEach((f, i) => {\n        const name = f.properties.NAME || f.properties.name || f.properties.CORRIDOR || `Corridor \${i+1}`;\n        const color = getTunnelColor(name);\n        addTunnelSegments(f);\n        const corridorLayer = L.geoJSON(f, {\n          style: { color, weight: 5, opacity: 0.9, lineCap: \'round\', lineJoin: \'round\' }\n        })\n        .bindTooltip(name, { sticky: true, opacity: 1, className: \'tunnel-tooltip\' })\n        .addTo(map);\n        corridorLayers.push(corridorLayer);\n      });\n      // populate the symbology panel\n      populateSymbology();\n      // corridor segments are complete now — build the Dijkstra graph\n      buildRoutingGraph();\n    }\n\n    // Entry/exit points\n    if (eData.features) {\n      eData.features.forEach((f, i) => {\n        if (!f.geometry) return;\n        const [lng, lat] = f.geometry.coordinates;\n        const name = f.properties && (f.properties.NAME || f.properties.name || f.properties.LABEL || f.properties.label);\n        const entranceNumber = i + 1;\n        const displayName = (name && String(name).trim()) || `Entrance \${entranceNumber}`;\n        const icon = L.divIcon({\n          className: \'\',\n          html: `<div style=\"width:22px;height:22px;background:#f06a6a;border-radius:4px;transform:rotate(45deg);border:2px solid rgba(255,255,255,0.35);box-shadow:0 0 5px #f06a6a88;display:flex;align-items:center;justify-content:center;box-sizing:border-box;\">` +\n                `<span style=\"transform:rotate(-45deg);color:#fff;font-size:10px;font-weight:700;font-family:-apple-system,BlinkMacSystemFont,\'Segoe UI\',sans-serif;line-height:1;\">\${entranceNumber}</span>` +\n                `</div>`,\n          iconSize: [22,22], iconAnchor: [11,11]\n        });\n        const entranceMarker = L.marker([lat, lng], { icon }).addTo(map);\n        entranceMarker.bindTooltip(displayName, {\n          direction: \'top\', offset: [0, -12], className: \'entrance-label\', opacity: 0.95\n        });\n        entranceMarker.on(\'click\', () => {\n          if (navPickingFromMap && navActiveField) pickNavPoint(lat, lng, displayName);\n        });\n        entranceMarkers.push(entranceMarker);\n        navPlaces.push({ name: displayName, lat, lng, type: \'entrance\', category: \'entrance\', color: \'#f06a6a\' });\n      });\n    }\n\n    // Businesses\n    if (bData.features) {\n      // Copy-pasteable debug dump (avoid collapsed Array/Object refs in console).\n      if (bData.features.length) {\n        console.log(\'=== BUSINESS FIELD NAMES ===\\n\' +\n          Object.keys(bData.features[0].properties).join(\', \'));\n        console.log(\'=== SAMPLE BUSINESS RECORD (full) ===\\n\' +\n          JSON.stringify(bData.features[0].properties, null, 2));\n      }\n      const byCategory = { food: [], retail: [], services: [], other: [] };\n      bData.features.forEach(f => {\n        const c = getCategory(f.properties);\n        byCategory[c].push(getBusinessName(f.properties));\n      });\n      Object.entries(byCategory).forEach(([cat, names]) => {\n        console.log(`=== \${cat.toUpperCase()} (\${names.length}) ===\\n` + names.join(\', \'));\n      });\n\n      bData.features.forEach(f => {\n          const coords = getCoordinatesFromFeature(f);\n          if (!coords) {\n            console.warn(\'Skipping business feature with no usable coordinates\', f && f.properties && (f.properties.NAME || f.properties.BUSINESS_NAME) || f);\n            return;\n          }\n          // GeoJSON is [lng, lat]\n          const [lng, lat] = coords;\n          if (typeof lat !== \'number\' || typeof lng !== \'number\' || Number.isNaN(lat) || Number.isNaN(lng)) {\n            console.warn(\'Invalid coordinates for business, skipping\', coords, f);\n            return;\n          }\n\n          const color = catColor(f.properties);\n          const name = getBusinessName(f.properties);\n          const tunnelInfo = getNearestTunnelSegment(lng, lat);\n          const width = Math.min(260, Math.max(120, 18 + name.length * 6.2));\n          const height = 22;\n          const canonicalLatLng = L.latLng(tunnelInfo.projY, tunnelInfo.projX);\n\n          const dotIcon = makeDotIcon(color);\n          const labelIcon = makeLabelIcon(name, color, width, height);\n          const marker = L.marker(canonicalLatLng, { icon: dotIcon }).addTo(map);\n\n          marker.bindTooltip(escapeHtml(name), {\n            direction: \'top\',\n            offset: [0, -8],\n            className: \'biz-tooltip\',\n            opacity: 0.95\n          });\n\n          marker.__closeTimer = null;\n          marker.on(\'mouseover\', () => {\n            if (marker.__closeTimer) { clearTimeout(marker.__closeTimer); marker.__closeTimer = null; }\n            try { marker.openTooltip(); } catch(e) {}\n            const el = marker.getElement ? marker.getElement() : marker._icon;\n            if (el) el.classList.add(\'hover\');\n          });\n          marker.on(\'mouseout\', () => {\n            marker.__closeTimer = setTimeout(() => {\n              try { marker.closeTooltip(); } catch(e) {}\n              const el = marker.getElement ? marker.getElement() : marker._icon;\n              if (el) el.classList.remove(\'hover\');\n              marker.__closeTimer = null;\n            }, 120);\n          });\n\n          marker.on(\'click\', e => {\n            L.DomEvent.stopPropagation(e);\n            if (navPickingFromMap && navActiveField) {\n              pickNavPoint(canonicalLatLng.lat, canonicalLatLng.lng, name);\n              return;\n            }\n            showBizPopup(f.properties, color, name, canonicalLatLng);\n          });\n\n          businessItems.push({ marker, canonicalLatLng, dotIcon, labelIcon, width, height });\n          navPlaces.push({ name, lat: canonicalLatLng.lat, lng: canonicalLatLng.lng, type: \'business\', category: getCategory(f.properties), color });\n        });\n\n      applyBusinessLOD();\n      map.on(\'zoomend\', applyBusinessLOD);\n    }\n\n    document.getElementById(\'loading\').classList.add(\'gone\');\n  } catch (err) {\n    console.error(\'Map load failed:\', err);\n    const msg = err && err.message ? err.message : \'Unknown error\';\n    const loadEl = document.getElementById(\'loading\');\n    if (loadEl) {\n      loadEl.innerHTML = `<p style=\"color:#f06a6a; font-size:20px; max-width:80vw; text-align:center;\">Could not load tunnel data.<br>\${escapeHtml(msg)}</p>`;\n    }\n  }\n}\n\nwindow.addEventListener(\'error\', (event) => {\n  const loadEl = document.getElementById(\'loading\');\n  if (loadEl) {\n    loadEl.innerHTML = `<p style=\"color:#f06a6a; font-size:20px; max-width:80vw; text-align:center;\">Map failed to start.<br>\${escapeHtml(event.message || \'Unknown browser error\')}</p>`;\n  }\n  console.error(\'Window error:\', event.error || event.message);\n});\n\nwindow.addEventListener(\'unhandledrejection\', (event) => {\n  const loadEl = document.getElementById(\'loading\');\n  if (loadEl) {\n    loadEl.innerHTML = `<p style=\"color:#f06a6a; font-size:20px; max-width:80vw; text-align:center;\">Map failed at runtime.<br>\${escapeHtml(event.reason && event.reason.message ? event.reason.message : String(event.reason))}</p>`;\n  }\n  console.error(\'Unhandled rejection:\', event.reason);\n});\n\nif (typeof L === \'undefined\') {\n  const loadEl = document.getElementById(\'loading\');\n  if (loadEl) {\n    loadEl.innerHTML = \'<p style=\"color:#f06a6a; font-size:20px; max-width:80vw; text-align:center;\">Leaflet did not load. Check your internet connection or try refreshing.</p>\';\n  }\n  throw new Error(\'Leaflet library failed to load.\');\n}\n\nloadAll();\n</script>\n</body>\n</html>\n',
                                      height: 584.01,
                                      verticalScroll: false,
                                      horizontalScroll: false,
                                      html: true,
                                    ),
                                  ],
                                ),
                                if (_model.suggestionsList.isNotEmpty)
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Container(
                                      width: 397.9,
                                      height: 278.54,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF292C2F),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 10.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.safePop();
                                                  },
                                                  child: Text(
                                                    'Cancel',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .playfairDisplay(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFEFEFEF),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          90.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Directions',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .playfairDisplay(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFEFEFEF),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: 335.5,
                                              height: 168.51,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF646060),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    20.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Icon(
                                                          Icons.my_location,
                                                          color:
                                                              Color(0xFFEFEFEF),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.more_vert,
                                                          color:
                                                              Color(0xFFEFEFEF),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    7.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color:
                                                              Color(0xFFEFEFEF),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 250.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController1,
                                                              focusNode: _model
                                                                  .textFieldFocusNode1,
                                                              autofocus: false,
                                                              enabled: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                hintText:
                                                                    'Starting Point',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .playfairDisplay(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFFEFEFED),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: Color(
                                                                    0xFF7A7F80),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              enableInteractiveSelection:
                                                                  true,
                                                              validator: _model
                                                                  .textController1Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 250.0,
                                                          child: Divider(
                                                            thickness: 1.0,
                                                            color: Color(
                                                                0xFFEFEFEF),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 250.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textController2,
                                                            focusNode: _model
                                                                .textFieldFocusNode2,
                                                            autofocus: false,
                                                            enabled: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintText:
                                                                  'End Point',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .playfairDisplay(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFFEFEFED),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: Color(
                                                                  0xFF7A7F80),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            enableInteractiveSelection:
                                                                true,
                                                            validator: _model
                                                                .textController2Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    40.0,
                                                                fillColor: Color(
                                                                    0xFFEFEFEF),
                                                                icon: Icon(
                                                                  Icons.add,
                                                                  color: Color(
                                                                      0xFFFF7F27),
                                                                  size: 24.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  _model.addToStops(
                                                                      '\"\"');
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Add Stop',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .playfairDisplay(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFFEFEFEF),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) => Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          9.0, 10.0, 9.0, 10.0),
                                      child: Container(
                                        width: 373.0,
                                        height: 77.97,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF424552),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Accessibility',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .playfairDisplay(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFFEFEFE),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) => Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 1.0),
                                  child: Builder(
                                    builder: (context) => Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFFFF7F27),
                                        icon: Icon(
                                          Icons.add,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        AddFolderDialogWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 394.1,
                                        height: 115.21,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2B2E3B),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 15.0, 0.0, 5.0),
                                                child: Text(
                                                  'Route',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFFFF7F27),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Container(
                                                width: 373.0,
                                                height: 53.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF424552),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.route,
                                                        color:
                                                            Color(0xFFFF7F27),
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Favorite Routes',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .playfairDisplay(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFFEFEFE),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 388.5,
                                        height: 98.01,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2B2E3B),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 5.0),
                                                child: Text(
                                                  'Place',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFFFF7F27),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Container(
                                                width: 373.0,
                                                height: 53.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF424552),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.add_business,
                                                        color:
                                                            Color(0xFFFF7F27),
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Favorite Places',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .playfairDisplay(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFFEFEFE),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 10.0, 0.0, 10.0),
                                                child: Text(
                                                  'My Folders',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFFFF7F27),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: StreamBuilder<
                                                  List<FavoriteFoldersRecord>>(
                                                stream:
                                                    queryFavoriteFoldersRecord(
                                                  parent: currentUserReference,
                                                  queryBuilder:
                                                      (favoriteFoldersRecord) =>
                                                          favoriteFoldersRecord
                                                              .orderBy(
                                                                  'createdAt',
                                                                  descending:
                                                                      true),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<FavoriteFoldersRecord>
                                                      lvFolderFavoriteFoldersRecordList =
                                                      snapshot.data!;

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        lvFolderFavoriteFoldersRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        lvFolderIndex) {
                                                      final lvFolderFavoriteFoldersRecord =
                                                          lvFolderFavoriteFoldersRecordList[
                                                              lvFolderIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    18.0),
                                                        child: Container(
                                                          width: 373.0,
                                                          height: 53.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF424552),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons.folder,
                                                                  color: Color(
                                                                      0xFFFF7F27),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  lvFolderFavoriteFoldersRecord
                                                                      .name,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .playfairDisplay(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFFFEFEFE),
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) => SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Container(
                                      width: 150.0,
                                      height: 150.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/571/600',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        valueOrDefault(
                                                        currentUserDocument
                                                            ?.username,
                                                        '') !=
                                                    ''
                                            ? valueOrDefault(
                                                currentUserDocument?.username,
                                                '')
                                            : currentUserDisplayName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.playfairDisplay(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFFF7F1F1),
                                              fontSize: 25.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 18.0, 10.0, 18.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                  PersonalInfoWidget.routeName);
                                            },
                                            text: 'Personal Information',
                                            options: FFButtonOptions(
                                              width: 392.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF424552),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF424552),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 18.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                  SettingsPageWidget.routeName);
                                            },
                                            text: 'Settings',
                                            options: FFButtonOptions(
                                              width: 392.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF424552),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF424552),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 18.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Help Center',
                                            options: FFButtonOptions(
                                              width: 392.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF424552),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF424552),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 18.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Submit Feedback',
                                            options: FFButtonOptions(
                                              width: 392.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF424552),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF424552),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 18.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                  LoginPageWidget.routeName);
                                            },
                                            text: 'Log off',
                                            options: FFButtonOptions(
                                              width: 392.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF424552),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF424552),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: false,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.playfairDisplay(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.playfairDisplay(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.0,
                                ),
                        labelColor: Color(0xFFFF7F27),
                        unselectedLabelColor: Color(0xFFF7F1F1),
                        backgroundColor: Color(0x4C120961),
                        unselectedBackgroundColor: Color(0xFF434552),
                        borderColor: Color(0xFF051529),
                        unselectedBorderColor: Color(0xFF292C2F),
                        borderWidth: 1.0,
                        borderRadius: 10.0,
                        elevation: 1.0,
                        buttonMargin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                        tabs: [
                          Tab(
                            text: 'Home',
                            icon: Icon(
                              Icons.home,
                            ),
                          ),
                          Tab(
                            text: 'Map',
                            icon: Icon(
                              Icons.map,
                            ),
                          ),
                          Tab(
                            text: 'Locations',
                            icon: Icon(
                              Icons.location_on,
                            ),
                          ),
                          Tab(
                            text: 'Favorites',
                            icon: Icon(
                              Icons.favorite,
                            ),
                          ),
                          Tab(
                            text: 'Profile',
                            icon: Icon(
                              Icons.person,
                            ),
                          ),
                        ],
                        controller: _model.homeController,
                        onTap: (i) async {
                          [
                            () async {},
                            () async {
                              _model.mapBusinesses =
                                  await GetBusinessesCall.call();

                              safeSetState(() {});
                            },
                            () async {
                              await GetBusinessesCall.call();
                            },
                            () async {},
                            () async {}
                          ][i]();
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
