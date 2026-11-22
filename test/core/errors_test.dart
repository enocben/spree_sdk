import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/decode_error.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:test/test.dart';

SpreeClient _client(MockClient transport) {
  return SpreeClient(
    baseUrl: Uri.parse('https://api.mystore.com'),
    publishableKey: 'pk_test_123',
    httpClient: transport,
  );
}

MockClient _statusClient(int status, String body) {
  return MockClient(
    (http.BaseRequest request) async => http.Response(body, status),
  );
}

void main() {
  group('error mapping', () {
    final Map<int, Map<String, String>> cases = <int, Map<String, String>>{
      400: <String, String>{'code': 'bad_request', 'message': 'Bad input'},
      401: <String, String>{'code': 'invalid_token', 'message': 'Unauthorized'},
      403: <String, String>{'code': 'forbidden', 'message': 'Forbidden'},
      404: <String, String>{'code': 'not_found', 'message': 'Not found'},
      409: <String, String>{'code': 'conflict', 'message': 'Conflict'},
      422: <String, String>{
        'code': 'unprocessable',
        'message': 'Validation failed',
      },
      429: <String, String>{
        'code': 'rate_limit_exceeded',
        'message': 'Slow down',
      },
    };

    for (final MapEntry<int, Map<String, String>> entry in cases.entries) {
      test('status ${entry.key} maps code/message/details', () async {
        final SpreeClient client = _client(
          _statusClient(
            entry.key,
            '{"error":{"code":"${entry.value['code']}","message":'
            '"${entry.value['message']}","details":{"email":["taken"]}}}',
          ),
        );
        addTearDown(client.close);

        try {
          await client.request('GET', '/products');
          fail('expected SpreeHttpError');
        } on SpreeHttpError catch (error) {
          expect(error.statusCode, equals(entry.key));
          expect(error.code, equals(entry.value['code']));
          expect(error.message, equals(entry.value['message']));
          expect(
            error.details,
            equals(<String, Object?>{
              'email': <Object?>['taken'],
            }),
          );
          if (entry.key == 401 || entry.key == 403) {
            expect(error, isA<SpreeAuthError>());
          } else {
            expect(error, isNot(isA<SpreeAuthError>()));
          }
        }
      });
    }

    test('unparseable error bodies fall back to status messages', () async {
      final SpreeClient plain = _client(_statusClient(500, 'boom'));
      addTearDown(plain.close);
      try {
        await plain.request('GET', '/products');
        fail('expected SpreeHttpError');
      } on SpreeHttpError catch (error) {
        expect(error.statusCode, equals(500));
        expect(error.code, isNull);
        expect(error.message, contains('500'));
        expect(error.rawBody, equals('boom'));
      }

      final SpreeClient empty = _client(_statusClient(503, ''));
      addTearDown(empty.close);
      await expectLater(
        empty.request('GET', '/products'),
        throwsA(
          isA<SpreeHttpError>().having(
            (SpreeHttpError e) => e.statusCode,
            'statusCode',
            503,
          ),
        ),
      );
    });

    test('204 returns null and 202 JSON returns the body', () async {
      final SpreeClient noContent = _client(_statusClient(204, ''));
      addTearDown(noContent.close);
      expect(await noContent.request('DELETE', '/carts/1'), isNull);

      final SpreeClient accepted = _client(
        MockClient(
          (http.BaseRequest request) async => http.Response(
            '{"message":"queued"}',
            202,
            headers: <String, String>{'content-type': 'application/json'},
          ),
        ),
      );
      addTearDown(accepted.close);
      expect(
        await accepted.request('POST', '/password_resets'),
        equals(<String, String>{'message': 'queued'}),
      );
    });

    test('invalid JSON success bodies throw SpreeDecodeError', () async {
      final SpreeClient client = _client(
        MockClient(
          (http.BaseRequest request) async => http.Response(
            'not json{{',
            200,
            headers: <String, String>{'content-type': 'application/json'},
          ),
        ),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('GET', '/products'),
        throwsA(isA<SpreeDecodeError>()),
      );
    });

    test('non-JSON 2xx bodies return raw text', () async {
      final SpreeClient client = _client(
        MockClient(
          (http.BaseRequest request) async => http.Response(
            'plain body',
            200,
            headers: <String, String>{'content-type': 'text/plain'},
          ),
        ),
      );
      addTearDown(client.close);

      expect(await client.request('GET', '/products'), equals('plain body'));
    });
  });
}
