import '/components/logoround_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'auth2_create_widget.dart' show Auth2CreateWidget;
import 'package:flutter/material.dart';

class Auth2CreateModel extends FlutterFlowModel<Auth2CreateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logoround component.
  late LogoroundModel logoroundModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirm widget.
  FocusNode? confirmFocusNode;
  TextEditingController? confirmTextController;
  late bool confirmVisibility;
  String? Function(BuildContext, String?)? confirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoroundModel = createModel(context, () => LogoroundModel());
    passwordVisibility = false;
    confirmVisibility = false;
  }

  @override
  void dispose() {
    logoroundModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmFocusNode?.dispose();
    confirmTextController?.dispose();
  }
}
