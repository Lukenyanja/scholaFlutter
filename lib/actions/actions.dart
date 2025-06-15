import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future pagelLoadCustom(BuildContext context) async {
  ApiCallResponse? unfiltered;

  FFAppState().loading = true;
  unfiltered = await ScholarshipsGroup.multiFilterCall.call();

  FFAppState().scholarsipsFetched = (unfiltered.jsonBody ?? '');
  FFAppState().loading = false;
}
