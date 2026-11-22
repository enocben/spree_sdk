import 'dart:math' as math;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/errors/transport_error.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/transport/retry_transport.dart';
import 'package:spree_sdk/src/utils/retry_config.dart';
import 'package:test/test.dart';

const RetryConfig _fastRetry = RetryConfig(
  maxRetries: 2,
  initialDelay: Duration(milliseconds: 1),
  maxDelay: Duration(milliseconds: 5),
  jitterFraction: 0,
);

http.Response _json(Object body, [int status = 200]) {
  return http.Response(
    '{"ok":true}',
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

void main() {
  group('retry policy', () {
    test('GET retries 503s then succeeds', () async {
      int calls = 0;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          if (calls < 3) {
            return http.Response('busy', 503);
          }
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(client.close);

      final Object? result = await client.request('GET', '/products');
      expect(result, equals(<String, bool>{'ok': true}));
      expect(calls, equals(3));
    });

    test('GET gives up after maxRetries', () async {
      int calls = 0;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          return http.Response('boom', 500);
        }),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('GET', '/products'),
        throwsA(isA<SpreeHttpError>()),
      );
      expect(calls, equals(3));
    });

    test('mutations are never retried without idempotence', () async {
      int calls = 0;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          return http.Response('busy', 503);
        }),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('POST', '/carts'),
        throwsA(isA<SpreeHttpError>()),
      );
      expect(calls, equals(1));
    });

    test('mutations with idempotency key are retried', () async {
      int calls = 0;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          if (calls == 1) {
            expect(request.headers['idempotency-key'], equals('idem-1'));
            return http.Response('busy', 503);
          }
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(client.close);

      final Object? result = await client.request(
        'POST',
        '/carts',
        options: const RequestOptions(idempotencyKey: 'idem-1'),
      );
      expect(result, equals(<String, bool>{'ok': true}));
      expect(calls, equals(2));
    });

    test('4xx without 429 is never retried', () async {
      int calls = 0;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          return http.Response('{"error":{"code":"not_found"}}', 404);
        }),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('GET', '/products/nope'),
        throwsA(isA<SpreeHttpError>()),
      );
      expect(calls, equals(1));
    });

    test('429 with Retry-After is honored on reads', () async {
      int calls = 0;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          if (calls == 1) {
            return http.Response(
              '{"error":{"code":"rate_limit_exceeded"}}',
              429,
              headers: <String, String>{'retry-after': '0'},
            );
          }
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(client.close);

      final Object? result = await client.request('GET', '/products');
      expect(result, equals(<String, bool>{'ok': true}));
      expect(calls, equals(2));
    });

    test('network failures retry reads but not bare mutations', () async {
      int readCalls = 0;
      final SpreeClient reads = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          readCalls++;
          if (readCalls == 1) {
            throw http.ClientException('connection reset');
          }
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(reads.close);
      expect(
        await reads.request('GET', '/products'),
        equals(<String, bool>{'ok': true}),
      );
      expect(readCalls, equals(2));

      int writeCalls = 0;
      final SpreeClient writes = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        retry: _fastRetry,
        httpClient: MockClient((http.BaseRequest request) async {
          writeCalls++;
          throw http.ClientException('connection reset');
        }),
      );
      addTearDown(writes.close);
      await expectLater(
        writes.request('POST', '/carts'),
        throwsA(isA<SpreeTransportError>()),
      );
      expect(writeCalls, equals(1));
    });
  });

  group('RetryConfig unit behavior', () {
    const RetryConfig config = RetryConfig();

    test('defaults match the approved policy', () {
      expect(config.maxRetries, equals(2));
      expect(config.respectRetryAfter, isTrue);
      expect(config.retryableStatuses, containsAll(<int>{408, 429, 500}));
      expect(config.retryableStatuses, isNot(contains(404)));
      expect(config.retryableStatuses, isNot(contains(422)));
    });

    test('shouldRetry gates method, attempts and status', () {
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 1, networkError: true),
        isTrue,
      );
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 0, networkError: true),
        isFalse,
      );
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 3, networkError: true),
        isFalse,
      );
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 1, statusCode: 503),
        isTrue,
      );
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 1, statusCode: 429),
        isTrue,
      );
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 1, statusCode: 404),
        isFalse,
      );
      expect(
        config.shouldRetry(method: 'GET', retryNumber: 1, statusCode: 422),
        isFalse,
      );
      expect(
        config.shouldRetry(method: 'POST', retryNumber: 1, statusCode: 503),
        isFalse,
      );
      expect(
        config.shouldRetry(
          method: 'POST',
          retryNumber: 1,
          statusCode: 503,
          idempotent: true,
        ),
        isTrue,
      );
      expect(
        config.shouldRetry(
          method: 'post',
          retryNumber: 1,
          networkError: true,
          idempotent: true,
        ),
        isTrue,
      );
    });

    test('delayForAttempt is exponential, capped, and honors Retry-After', () {
      const RetryConfig exact = RetryConfig(jitterFraction: 0);
      expect(
        exact.delayForAttempt(1),
        equals(const Duration(milliseconds: 500)),
      );
      expect(exact.delayForAttempt(2), equals(const Duration(seconds: 1)));
      expect(exact.delayForAttempt(10), equals(const Duration(seconds: 5)));
      expect(
        exact.delayForAttempt(1, retryAfter: const Duration(seconds: 2)),
        equals(const Duration(seconds: 2)),
      );
      const RetryConfig ignore = RetryConfig(
        jitterFraction: 0,
        respectRetryAfter: false,
      );
      expect(
        ignore.delayForAttempt(1, retryAfter: const Duration(seconds: 2)),
        equals(const Duration(milliseconds: 500)),
      );
    });

    test('jitter stays within bounds and is seedable', () {
      const RetryConfig jittered = RetryConfig();
      final Duration first = jittered.delayForAttempt(
        1,
        random: math.Random(42),
      );
      final Duration second = jittered.delayForAttempt(
        1,
        random: math.Random(42),
      );
      expect(first, equals(second));
      expect(first >= const Duration(milliseconds: 500), isTrue);
      expect(first <= const Duration(milliseconds: 625), isTrue);
    });

    test('parseRetryAfter supports delta-seconds only', () {
      expect(parseRetryAfter(null), isNull);
      expect(parseRetryAfter('3'), equals(const Duration(seconds: 3)));
      expect(parseRetryAfter('not-a-date'), isNull);
    });
  });
}
