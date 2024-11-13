import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'uiux_model.dart';
export 'uiux_model.dart';

class UiuxWidget extends StatefulWidget {
  const UiuxWidget({super.key});

  @override
  State<UiuxWidget> createState() => _UiuxWidgetState();
}

class _UiuxWidgetState extends State<UiuxWidget> {
  late UiuxModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiuxModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'UIUX'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('UIUX_PAGE_UIUX_ON_INIT_STATE');
      logFirebaseEvent('UIUX_backend_call');
      _model.apiResultgxt = await OpenAIChatGPTGroup.getOrgNameCall.call();

      if ((_model.apiResultgxt?.succeeded ?? true)) {
        logFirebaseEvent('UIUX_update_app_state');
        FFAppState().Organization = OpenAIChatGPTGroup.getOrgNameCall.orgname(
          (_model.organizationName?.jsonBody ?? ''),
        )!;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 1.0,
          child: Drawer(
            elevation: 16.0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            'Volunteer Match',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 30.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'UIUX_PAGE_CloseDrawerButton_ON_TAP');
                              logFirebaseEvent('CloseDrawerButton_drawer');
                              if (scaffoldKey.currentState!.isDrawerOpen ||
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
                                Navigator.pop(context);
                              }
                            },
                            text: '',
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              width: 40.0,
                              height: 28.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0x0004030D),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('UIUX_PAGE_SETTINGS_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('Settings');
                        },
                        text: 'Settings',
                        icon: const Icon(
                          Icons.settings_sharp,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'UIUX_PAGE_ORGANIZATIONS_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('OrgPostListing');
                        },
                        text: 'Organizations',
                        icon: const Icon(
                          Icons.business_sharp,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('UIUX_PAGE_HELP_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('Help');
                        },
                        text: 'Help',
                        icon: const Icon(
                          Icons.help,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('UIUX_PAGE_FILTER_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('FilterPage');
                        },
                        text: 'Filter',
                        icon: const Icon(
                          Icons.filter_list,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('UIUX_PAGE_ABOUT_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('About');
                        },
                        text: 'About',
                        icon: const Icon(
                          Icons.description_outlined,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent('UIUX_PAGE_LOG_OUT_BTN_ON_TAP');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('UserSignUp');
                            },
                            text: 'Log Out',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFFDFDFD),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    decoration: TextDecoration.underline,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ].divide(const SizedBox(height: 25.0)),
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEE3157), Color(0x67C11EC3)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      key: const ValueKey('OpenDrawerButton_xgvb'),
                      borderColor: Colors.transparent,
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: const Icon(
                        key: ValueKey('OpenDrawerButton_xgvb'),
                        Icons.view_sidebar,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('UIUX_PAGE_OpenDrawerButton_ON_TAP');
                        logFirebaseEvent('OpenDrawerButton_drawer');
                        scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                      child: PageView(
                        controller: _model.pageViewController ??=
                            PageController(
                                initialPage: max(
                                    0,
                                    min(
                                        valueOrDefault<int>(
                                          FFAppState().currentIndex,
                                          0,
                                        ),
                                        2))),
                        onPageChanged: (_) async {
                          logFirebaseEvent(
                              'UIUX_PageView_qp5kiul2_ON_WIDGET_SWIPE');
                          logFirebaseEvent('PageView_update_app_state');
                          FFAppState().currentIndex =
                              FFAppState().currentIndex + 1;
                          safeSetState(() {});
                          logFirebaseEvent('PageView_backend_call');
                          _model.organizationName =
                              await OpenAIChatGPTGroup.getOrgNameCall.call();

                          logFirebaseEvent('PageView_update_app_state');
                          FFAppState().Organization =
                              OpenAIChatGPTGroup.getOrgNameCall.orgname(
                            (_model.organizationName?.jsonBody ?? ''),
                          )!;
                          safeSetState(() {});
                          if (_model.pageViewCurrentIndex ==
                              FFAppState().maxIndex) {
                            logFirebaseEvent('PageView_page_view');
                            await _model.pageViewController?.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }

                          safeSetState(() {});
                        },
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFE73659), Color(0x67C11EC3)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 28.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState().Organization,
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFE73659), Color(0x67C11EC3)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFAppState().Organization,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFE73659), Color(0x67C11EC3)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
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
      ),
    );
  }
}
