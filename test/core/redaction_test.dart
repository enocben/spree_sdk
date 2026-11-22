import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/errors/spree_exception.dart';
import 'package:test/test.dart';

void main() {
  group('secret redaction', () {
    test('redactHeaders masks credential headers case-insensitively', () {
      final Map<String, String> redacted = redactHeaders(<String, String>{
        'Authorization': 'Bearer secret-jwt',
        'X-Spree-Token': 'guest-secret',
        'x-spree-api-key': 'pk_live_secret',
        'Cookie': 'session=abc',
        'Set-Cookie': 'a=b',
        'Accept': 'application/json',
        'X-Spree-Currency': 'USD',
      });

      expect(redacted['Authorization'], equals('[REDACTED]'));
      expect(redacted['X-Spree-Token'], equals('[REDACTED]'));
      expect(redacted['x-spree-api-key'], equals('[REDACTED]'));
      expect(redacted['Cookie'], equals('[REDACTED]'));
      expect(redacted['Set-Cookie'], equals('[REDACTED]'));
      expect(redacted['Accept'], equals('application/json'));
      expect(redacted['X-Spree-Currency'], equals('USD'));
    });

    test('redactText masks bearer tokens and publishable keys', () {
      const String input =
          'got Authorization: Bearer secret-jwt-123 '
          'with key pk_live_abc456 done';
      final String output = redactText(input);

      expect(output, contains('Bearer [REDACTED]'));
      expect(output, contains('pk_[REDACTED]'));
      expect(output, isNot(contains('secret-jwt-123')));
      expect(output, isNot(contains('pk_live_abc456')));
    });

    test('redactUri masks secret query parameters only', () {
      final Uri uri = Uri.parse(
        'https://api.test/store?token=abc&spree_token=def'
        '&refresh_token=ghi&page=2',
      );
      final Uri redacted = redactUri(uri);

      expect(redacted.queryParameters['token'], equals('[REDACTED]'));
      expect(redacted.queryParameters['spree_token'], equals('[REDACTED]'));
      expect(redacted.queryParameters['refresh_token'], equals('[REDACTED]'));
      expect(redacted.queryParameters['page'], equals('2'));
    });

    test('exception toString never leaks secrets', () {
      final SpreeHttpError error = SpreeHttpError(
        statusCode: 401,
        message: 'bad Authorization: Bearer super-secret-jwt pk_live_topsecret',
        method: 'GET',
        uri: Uri.parse('https://api.test/store?token=topsecret&page=1'),
        code: 'invalid_token',
      );
      final String text = error.toString();

      expect(text, isNot(contains('super-secret-jwt')));
      expect(text, isNot(contains('pk_live_topsecret')));
      expect(text, isNot(contains('token=topsecret')));
      expect(text, contains('[REDACTED]'));
      expect(text, contains('401'));
      expect(text, contains('page=1'));
    });

    test('fromResponse redacts secrets from server messages', () {
      final SpreeHttpError error = SpreeHttpError.fromResponse(
        method: 'GET',
        uri: Uri.parse('https://api.test/store'),
        statusCode: 401,
        bodyText:
            '{"error":{"code":"invalid_token","message":"Bearer leaked-jwt"}}',
      );

      expect(error, isA<SpreeAuthError>());
      expect(error.toString(), isNot(contains('leaked-jwt')));
      expect(error.code, equals('invalid_token'));
    });
  });
}
