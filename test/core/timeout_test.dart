import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/transport_error.dart';
import 'package:spree_sdk/src/transport/http_transport.dart';
import 'package:spree_sdk/src/transport/transport.dart';
import 'package:test/test.dart';

class _SlowClient extends http.BaseClient {
  _SlowClient(this.delay);

  final Duration delay;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    await Future<void>.delayed(delay);
    return http.StreamedResponse(
      Stream<List<int>>.value(utf8.encode('{}')),
      200,
      headers: <String, String>{'content-type': 'application/json'},
    );
  }
}

void main() {
  group('timeouts', () {
    test('slow responses surface SpreeTimeoutError', () async {
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        timeout: const Duration(milliseconds: 50),
        httpClient: _SlowClient(const Duration(milliseconds: 500)),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('GET', '/products'),
        throwsA(isA<SpreeTimeoutError>()),
      );
    });

    test('fast responses succeed within the timeout', () async {
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        timeout: const Duration(seconds: 5),
        httpClient: _SlowClient(const Duration(milliseconds: 1)),
      );
      addTearDown(client.close);

      final Object? result = await client.request('GET', '/products');
      expect(result, equals(<String, Object?>{}));
    });

    test('HttpTransport applies per-attempt timeout', () async {
      final HttpTransport transport = HttpTransport(
        client: _SlowClient(const Duration(milliseconds: 500)),
        baseUrl: Uri.parse('https://api.mystore.com'),
        timeout: const Duration(milliseconds: 50),
      );

      await expectLater(
        transport.send(const SpreeRequest(method: 'GET', path: '/p')),
        throwsA(isA<SpreeTimeoutError>()),
      );
    });
  });
}
