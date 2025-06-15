import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'scholarshipfinder_widget.dart' show ScholarshipfinderWidget;
import 'package:flutter/material.dart';

class ScholarshipfinderModel extends FlutterFlowModel<ScholarshipfinderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Degrees widget.
  String? degreesValue;
  FormFieldController<String>? degreesValueController;
  // Stores action output result for [Backend Call - API (MultiFilter)] action in Degrees widget.
  ApiCallResponse? degreefiltered;
  // State field(s) for Countries widget.
  String? countriesValue;
  FormFieldController<String>? countriesValueController;
  // Stores action output result for [Backend Call - API (GetCountryScholarships)] action in Countries widget.
  ApiCallResponse? countryfiltered;
  // State field(s) for funding widget.
  String? fundingValue;
  FormFieldController<String>? fundingValueController;
  // Stores action output result for [Backend Call - API (MultiFilter)] action in funding widget.
  ApiCallResponse? fundingfiltered;
  // State field(s) for destination widget.
  String? destinationValue;
  FormFieldController<String>? destinationValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
