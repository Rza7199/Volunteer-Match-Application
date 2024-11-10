import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'organizations_widget.dart' show OrganizationsWidget;
import 'package:flutter/material.dart';

class OrganizationsModel extends FlutterFlowModel<OrganizationsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for OrganizationName widget.
  FocusNode? organizationNameFocusNode;
  TextEditingController? organizationNameTextController;
  String? Function(BuildContext, String?)?
      organizationNameTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for OrgState widget.
  String? orgStateValue;
  FormFieldController<String>? orgStateValueController;
  // State field(s) for Website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  // State field(s) for Phone_Number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    organizationNameFocusNode?.dispose();
    organizationNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
