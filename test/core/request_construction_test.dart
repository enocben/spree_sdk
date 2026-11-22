import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

class CapturedCall {
  CapturedCall(this.request, this.body);

  final http.BaseRequest request;
  final String body;
}

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

http.Response jsonResponse(Object body, [int status = 200]) {
  return http.Response(
    jsonEncode(body),
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

const Map<String, Object?> pageEnvelope = <String, Object?>{
  'data': <Object?>[],
  'meta': <String, Object?>{'page': 1, 'limit': 25, 'count': 0, 'pages': 0},
};

void main() {
  group('SpreeClient request construction', () {
    test('GET builds method, store path, query and default headers', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com/'),
        publishableKey: 'pk_test_123',
        httpClient: scriptedClient(
          calls,
          (int index, http.BaseRequest request) async =>
              jsonResponse(pageEnvelope),
        ),
      );
      addTearDown(client.close);

      final Object? result = await client.request(
        'get',
        '/products',
        query: const ListQuery(page: 1, limit: 25).toQueryParameters(),
      );

      expect(calls, hasLength(1));
      final http.BaseRequest sent = calls.single.request;
      expect(sent.method, equals('GET'));
      expect(
        sent.url.toString(),
        equals('https://api.mystore.com/api/v3/store/products?page=1&limit=25'),
      );
      expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
      expect(sent.headers['accept'], equals('application/json'));
      expect(sent.headers.containsKey('authorization'), isFalse);
      expect(result, isA<Map>());
    });

    test('baseUrl sub-paths are preserved without double slashes', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://example.com/shop/'),
        publishableKey: 'pk_test_123',
        httpClient: scriptedClient(
          calls,
          (int index, http.BaseRequest request) async =>
              jsonResponse(<String, Object?>{}),
        ),
      );
      addTearDown(client.close);

      await client.request(
        'POST',
        '/carts',
        body: <String, String>{'currency': 'USD'},
      );

      expect(calls, hasLength(1));
      final http.BaseRequest sent = calls.single.request;
      expect(sent.method, equals('POST'));
      expect(
        sent.url.toString(),
        equals('https://example.com/shop/api/v3/store/carts'),
      );
      expect(sent.headers['content-type'], contains('application/json'));
      expect(
        jsonDecode(calls.single.body) as Map,
        equals(<String, String>{'currency': 'USD'}),
      );
    });

    test('contextual and per-request headers are applied', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        locale: 'en',
        currency: 'USD',
        httpClient: scriptedClient(
          calls,
          (int index, http.BaseRequest request) async =>
              jsonResponse(<String, Object?>{}),
        ),
      );
      addTearDown(client.close);

      await client.request(
        'GET',
        '/customers/me',
        options: const RequestOptions(
          token: 'jwt-abc',
          spreeToken: 'guest-token-xyz',
          currency: 'EUR',
          country: 'FR',
          channel: 'web',
          idempotencyKey: 'key-1',
          headers: <String, String>{'x-custom': 'yes'},
        ),
      );

      final Map<String, String> headers = calls.single.request.headers;
      expect(headers['authorization'], equals('Bearer jwt-abc'));
      expect(headers['x-spree-token'], equals('guest-token-xyz'));
      expect(headers['x-spree-locale'], equals('en'));
      expect(headers['x-spree-currency'], equals('EUR'));
      expect(headers['x-spree-country'], equals('FR'));
      expect(headers['x-spree-channel'], equals('web'));
      expect(headers['idempotency-key'], equals('key-1'));
      expect(headers['x-custom'], equals('yes'));
    });

    test('invalid construction and usage throw', () async {
      expect(
        () => SpreeClient(
          baseUrl: Uri.parse('/relative/path'),
          publishableKey: 'pk_test_123',
        ),
        throwsArgumentError,
      );
      expect(
        () => SpreeClient(
          baseUrl: Uri.parse('https://api.mystore.com'),
          publishableKey: '',
        ),
        throwsArgumentError,
      );

      final List<CapturedCall> calls = <CapturedCall>[];
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        httpClient: scriptedClient(
          calls,
          (int index, http.BaseRequest request) async =>
              jsonResponse(<String, Object?>{}),
        ),
      );

      await expectLater(
        client.request('FETCH', '/products'),
        throwsArgumentError,
      );
      await expectLater(
        client.request('GET', 'missing-leading-slash'),
        throwsArgumentError,
      );

      client.close();
      await expectLater(client.request('GET', '/products'), throwsStateError);
    });
  });
}
