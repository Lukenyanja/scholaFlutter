import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'schola_a_i2_widget.dart' show ScholaAI2Widget;
import 'package:flutter/material.dart';

class ScholaAI2Model extends FlutterFlowModel<ScholaAI2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for messageEntered widget.
  FocusNode? messageEnteredFocusNode;
  TextEditingController? messageEnteredTextController;
  String? Function(BuildContext, String?)?
      messageEnteredTextControllerValidator;
  // Stores action output result for [Backend Call - API (Chat)] action in IconButton widget.
  ApiCallResponse? apiResultqv6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    messageEnteredFocusNode?.dispose();
    messageEnteredTextController?.dispose();
  }
}
