import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'uiux_widget.dart' show UiuxWidget;
import 'package:flutter/material.dart';

class UiuxModel extends FlutterFlowModel<UiuxWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Org Name)] action in UIUX widget.
  ApiCallResponse? apiResultgxt;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (Get Org Name)] action in PageView widget.
  ApiCallResponse? organizationName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
