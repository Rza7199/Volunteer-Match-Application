import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'logged_in_widget.dart' show LoggedInWidget;
import 'package:flutter/material.dart';

class LoggedInModel extends FlutterFlowModel<LoggedInWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode1;
  TextEditingController? myBioTextController1;
  String? Function(BuildContext, String?)? myBioTextController1Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode2;
  TextEditingController? myBioTextController2;
  String? Function(BuildContext, String?)? myBioTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    myBioFocusNode1?.dispose();
    myBioTextController1?.dispose();

    myBioFocusNode2?.dispose();
    myBioTextController2?.dispose();
  }
}
