/// Shared mock-transport helpers for group-C resource tests.
///
/// Mirrors the `scriptedClient` pattern from
/// `test/core/request_construction_test.dart`: every test asserts the HTTP
/// method, the store URL, query parameters, headers and body on the
/// captured request, then the parsed response or the thrown error.
library;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';

/// One captured HTTP call: the outgoing request plus its decoded body.
class CapturedCall {
  /// Creates a captured call.
  CapturedCall(this.request, this.body);

  /// The outgoing request.
  final http.BaseRequest request;

  /// The decoded request body ('' when none was sent).
  final String body;
}

/// Returns a [MockClient] recording every call in [calls] and answering via
/// [handler] (indexed by call order).
MockClient scriptedClient(
  List<CapturedCall> calls,
  Future<http.Response> Function(int index, http.BaseRequest request) handler,
) {
  var index = 0;
  return MockClient((http.BaseRequest request) async {
    String body = '';
    if (request is http.Request) {
      body = request.body;
    }
    final int current = index;
    index++;
    calls.add(CapturedCall(request, body));
    return handler(current, request);
  });
}

/// Builds a JSON response with a JSON content type.
http.Response jsonResponse(Object body, [int status = 200]) {
  return http.Response(
    jsonEncode(body),
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

/// Builds an error envelope as documented in
/// `doc/research/store-api-contract.md` section 0.
http.Response errorResponse(String code, String message, [int status = 422]) {
  return jsonResponse(<String, Object?>{
    'error': <String, Object?>{'code': code, 'message': message},
  }, status);
}

/// Builds a client wired to [handler], recording calls in [calls].
SpreeClient testClient(
  List<CapturedCall> calls,
  Future<http.Response> Function(int index, http.BaseRequest request) handler,
) {
  return SpreeClient(
    baseUrl: Uri.parse('https://api.mystore.com'),
    publishableKey: 'pk_test_123',
    httpClient: scriptedClient(calls, handler),
  );
}

/// Wraps [items] in a verified paginated envelope.
Map<String, Object?> pageOf(List<Object?> items) => <String, Object?>{
  'data': items,
  'meta': <String, Object?>{
    'page': 1,
    'limit': 25,
    'count': items.length,
    'pages': 1,
  },
};
