import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start scholarships Group Code

class ScholarshipsGroup {
  static String getBaseUrl() => 'https://schola.up.railway.app';
  static Map<String, String> headers = {};
  static GetScholarshipsCall getScholarshipsCall = GetScholarshipsCall();
  static GetScholarshipDetailsCall getScholarshipDetailsCall =
      GetScholarshipDetailsCall();
}

class GetScholarshipsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ScholarshipsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Scholarships',
      apiUrl: '${baseUrl}/api/scholarships/filter/scholarships_Mgr_filter',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? scholarshipName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].name''',
      ));
  String? scholarshipImg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].Scholarship_image''',
      ));
  String? scholarshipCountry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[:].country''',
      ));
  String? scholarshipExpiry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[:].closing_date''',
      ));
  String? scholarshipSlug(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].slug''',
      ));
}

class GetScholarshipDetailsCall {
  Future<ApiCallResponse> call({
    String? slug = '',
  }) async {
    final baseUrl = ScholarshipsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get ScholarshipDetails',
      apiUrl: '${baseUrl}/api/scholarships/${slug}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

/// End scholarships Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
