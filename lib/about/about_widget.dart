import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'about_model.dart';
export 'about_model.dart';

class AboutWidget extends StatefulWidget {
  /// About Page
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  late AboutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'About'});
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.9, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('ABOUT_PAGE_Icon_4mau0kev_ON_TAP');
                      logFirebaseEvent('Icon_navigate_to');

                      context.pushNamed('UIUX');
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
              Text(
                'About Us',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 40.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Welcome to VolunteerMatchApp, a platform designed to make giving back simple, meaningful, and accessible for everyone. Our mission is to connect individuals with volunteer opportunities that align with their skills, passions, and availability, creating a community of changemakers ready to make a positive impact.\n\nAt VolunteerMatchApp, we believe that everyone has something valuable to offer. Whether you\'re a student, professional, retiree, or just someone looking to make a difference, we make it easy for you to find and engage in volunteer projects that suit your unique interests and expertise. Our platform allows organizations to list their volunteer needs, enabling volunteers to browse, filter, and apply to opportunities in their local area or online.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
