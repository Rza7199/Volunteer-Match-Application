import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EmailLogin widget.
  FocusNode? emailLoginFocusNode1;
  TextEditingController? emailLoginTextController1;
  String? Function(BuildContext, String?)? emailLoginTextController1Validator;
  // State field(s) for Passwordsignup widget.
  FocusNode? passwordsignupFocusNode;
  TextEditingController? passwordsignupTextController;
  late bool passwordsignupVisibility;
  String? Function(BuildContext, String?)?
      passwordsignupTextControllerValidator;
  // State field(s) for CnfrmpassSignup widget.
  FocusNode? cnfrmpassSignupFocusNode;
  TextEditingController? cnfrmpassSignupTextController;
  late bool cnfrmpassSignupVisibility;
  String? Function(BuildContext, String?)?
      cnfrmpassSignupTextControllerValidator;
  // State field(s) for EmailLogin widget.
  FocusNode? emailLoginFocusNode2;
  TextEditingController? emailLoginTextController2;
  String? Function(BuildContext, String?)? emailLoginTextController2Validator;
  // State field(s) for PasswordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordsignupVisibility = false;
    cnfrmpassSignupVisibility = false;
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailLoginFocusNode1?.dispose();
    emailLoginTextController1?.dispose();

    passwordsignupFocusNode?.dispose();
    passwordsignupTextController?.dispose();

    cnfrmpassSignupFocusNode?.dispose();
    cnfrmpassSignupTextController?.dispose();

    emailLoginFocusNode2?.dispose();
    emailLoginTextController2?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
