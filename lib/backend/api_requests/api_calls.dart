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
  static GetCountriesCall getCountriesCall = GetCountriesCall();
  static GetCountryScholarshipsCall getCountryScholarshipsCall =
      GetCountryScholarshipsCall();
  static MultiFilterCall multiFilterCall = MultiFilterCall();
  static GetSubjectsCall getSubjectsCall = GetSubjectsCall();
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

class GetCountriesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ScholarshipsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCountries',
      apiUrl: '${baseUrl}/api/scholarships/filter/countries_count/',
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
}

class GetCountryScholarshipsCall {
  Future<ApiCallResponse> call({
    String? country = 'italy',
  }) async {
    final baseUrl = ScholarshipsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCountryScholarships',
      apiUrl:
          '${baseUrl}/api/scholarships/filter/scholarships_Mgr_filter?country=${country}',
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
}

class MultiFilterCall {
  Future<ApiCallResponse> call({
    String? categoryS = 'funding_status',
    String? valueS = 'stipend',
  }) async {
    final baseUrl = ScholarshipsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MultiFilter',
      apiUrl:
          '${baseUrl}/api/scholarships/filter/scholarships_Mgr_filter?${categoryS}=${valueS}',
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
}

class GetSubjectsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ScholarshipsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetSubjects',
      apiUrl: '${baseUrl}/api/courses/subject_details/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'popular': true,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End scholarships Group Code

/// Start AI webhook Group Code

class AIWebhookGroup {
  static String getBaseUrl() =>
      'https://schola-aiworker.up.railway.app/webhook';
  static Map<String, String> headers = {};
  static ChatCall chatCall = ChatCall();
}

class ChatCall {
  Future<ApiCallResponse> call({
    String? message = 'is uganda a good country',
    String? user = 'qwer2346',
    String? token = '1243wtretyqwy',
  }) async {
    final baseUrl = AIWebhookGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Chat',
      apiUrl: '${baseUrl}/chat',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'message': message,
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? feedback(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].output''',
      ));
  dynamic res(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

/// End AI webhook Group Code

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
