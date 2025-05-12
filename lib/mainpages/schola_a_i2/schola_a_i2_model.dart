import '/flutter_flow/flutter_flow_util.dart';
import 'schola_a_i2_widget.dart' show ScholaAI2Widget;
import 'package:flutter/material.dart';

class ScholaAI2Model extends FlutterFlowModel<ScholaAI2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
