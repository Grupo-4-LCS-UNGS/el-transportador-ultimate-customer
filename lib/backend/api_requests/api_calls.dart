import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Traccar Group Code

class TraccarGroup {
  static String getBaseUrl({
    String? tokenTraccar,
    String? traccarURL,
  }) {
    tokenTraccar ??= FFDevEnvironmentValues().tokenTraccar;
    traccarURL ??= FFDevEnvironmentValues().traccarURL;
    return traccarURL;
  }

  static Map<String, String> headers = {
    'Authorization': 'Basic [tokenTraccar]',
  };
  static GetDevicesByUniqueIDCall getDevicesByUniqueIDCall =
      GetDevicesByUniqueIDCall();
  static GetPositionbyIdCall getPositionbyIdCall = GetPositionbyIdCall();
}

class GetDevicesByUniqueIDCall {
  Future<ApiCallResponse> call({
    int? uniqueId,
    String? tokenTraccar,
    String? traccarURL,
  }) async {
    tokenTraccar ??= FFDevEnvironmentValues().tokenTraccar;
    traccarURL ??= FFDevEnvironmentValues().traccarURL;
    final baseUrl = TraccarGroup.getBaseUrl(
      tokenTraccar: tokenTraccar,
      traccarURL: traccarURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDevicesByUniqueID',
      apiUrl: '$baseUrl/devices',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $tokenTraccar',
      },
      params: {
        'uniqueId': uniqueId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic devices(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  int? positionID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].positionId''',
      ));
}

class GetPositionbyIdCall {
  Future<ApiCallResponse> call({
    int? id,
    String? tokenTraccar,
    String? traccarURL,
  }) async {
    tokenTraccar ??= FFDevEnvironmentValues().tokenTraccar;
    traccarURL ??= FFDevEnvironmentValues().traccarURL;
    final baseUrl = TraccarGroup.getBaseUrl(
      tokenTraccar: tokenTraccar,
      traccarURL: traccarURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getPositionbyId',
      apiUrl: '$baseUrl/positions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $tokenTraccar',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? idpos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  double? lat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].latitude''',
      ));
  double? long(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].longitude''',
      ));
}

/// End Traccar Group Code

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
