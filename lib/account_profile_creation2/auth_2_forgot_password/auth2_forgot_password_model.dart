import '/components/logoround_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'auth2_forgot_password_widget.dart' show Auth2ForgotPasswordWidget;
import 'package:flutter/material.dart';

class Auth2ForgotPasswordModel
    extends FlutterFlowModel<Auth2ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logoround component.
  late LogoroundModel logoroundModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoroundModel = createModel(context, () => LogoroundModel());
  }

  @override
  void dispose() {
    logoroundModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
