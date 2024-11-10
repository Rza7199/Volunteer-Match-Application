import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetOrgNameCall getOrgNameCall = GetOrgNameCall();
  static GetDescriptionCall getDescriptionCall = GetDescriptionCall();
}

class GetOrgNameCall {
  Future<ApiCallResponse> call({
    String? apiKey =
        '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',
    String? orgName = '',
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": "You are an assistant helping to generate job listings."
    },
    {
      "role": "user",
      "content": "Please generate a fake organization name, and only give me the name in the message."
    }
  ],
  "max_tokens": 500
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Org Name',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? orgname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class GetDescriptionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Description',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI ChatGPT Group Code

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
