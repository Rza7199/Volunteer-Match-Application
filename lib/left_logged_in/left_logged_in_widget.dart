import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'left_logged_in_model.dart';
export 'left_logged_in_model.dart';

class LeftLoggedInWidget extends StatefulWidget {
  const LeftLoggedInWidget({super.key});

  @override
  State<LeftLoggedInWidget> createState() => _LeftLoggedInWidgetState();
}

class _LeftLoggedInWidgetState extends State<LeftLoggedInWidget> {
  late LeftLoggedInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeftLoggedInModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'leftLoggedIn'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE73659), Color(0x67C11EC3)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/vm3.png',
                        width: 230.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Welcome Back',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'LEFT_LOGGED_IN_GET_STARTED_BTN_ON_TAP');
                          if (valueOrDefault(currentUserDocument?.role, '') ==
                              'user') {
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('UIUX');
                          } else {
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'organization') {
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('OrgPostListing');
                            } else {
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('assignRole');
                            }

                            return;
                          }
                        },
                        text: 'Get Started...',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFE45454),
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
