import '/flutter_flow/flutter_flow_util.dart';
import 'user_sign_up_widget.dart' show UserSignUpWidget;
import 'package:flutter/material.dart';

class UserSignUpModel extends FlutterFlowModel<UserSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EmailSignUp widget.
  FocusNode? emailSignUpFocusNode;
  TextEditingController? emailSignUpTextController;
  String? Function(BuildContext, String?)? emailSignUpTextControllerValidator;
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
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
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
    emailSignUpFocusNode?.dispose();
    emailSignUpTextController?.dispose();

    passwordsignupFocusNode?.dispose();
    passwordsignupTextController?.dispose();

    cnfrmpassSignupFocusNode?.dispose();
    cnfrmpassSignupTextController?.dispose();

    emailLoginFocusNode?.dispose();
    emailLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
