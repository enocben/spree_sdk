/// Phase 05 group A — auth resource tests.
///
/// Covers one test per operation (method, URL, query, headers, body,
/// response) plus 401/403/422 error paths. Contracts:
/// `doc/research/store-api-contract.md` §1,
/// `doc/research/authentication-flows.md` §B–E, §H.
library;

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/auth.dart';
import 'package:spree_sdk/src/models/params_auth.dart';
import 'package:spree_sdk/src/resources/auth.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  group('AuthResource.login POST /auth/login', () {
    test('sends KEY-only credentials body and parses AuthTokens', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(authTokensFixture()),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final AuthTokens tokens = await AuthResource(client)
          .login(email: 'sam.buyer@example.com', password: 'secret');

      expect(calls, hasLength(1));
      final http.BaseRequest sent = calls.single.request;
      expect(sent.method, equals('POST'));
      expect(
        sent.url.toString(),
        equals('https://api.mystore.com/api/v3/store/auth/login'),
      );
      expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
      // KEY-only: the configured provider JWT must NOT be attached.
      expect(sent.headers.containsKey('authorization'), isFalse);
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{
          'provider': 'email',
          'email': 'sam.buyer@example.com',
          'password': 'secret',
        }),
      );
      expect(tokens.token, equals('jwt-access-token'));
      expect(tokens.refreshToken, equals('synthetic-refresh-token-value'));
      expect(tokens.user.email, equals('sam.buyer@example.com'));
    });

    test('401 surfaces SpreeAuthError with invalid_token', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Missing API key', 401),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).login(email: 'a@b.c', password: 'x'),
        throwsA(
          isA<SpreeAuthError>()
              .having((e) => e.statusCode, 'status', 401)
              .having((e) => e.code, 'code', 'invalid_token'),
        ),
      );
    });

    test('422 surfaces SpreeHttpError with validation message', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => errorResponse(
          'unprocessable_entity',
          'Email has already been taken',
          422,
        ),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).login(email: 'a@b.c', password: 'x'),
        throwsA(
          isA<SpreeHttpError>()
              .having((e) => e.statusCode, 'status', 422)
              .having((e) => e.message, 'message', contains('taken')),
        ),
      );
    });
  });

  group('AuthResource.refresh POST /auth/refresh', () {
    test('sends refresh_token with no Authorization header', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(authTokensFixture()),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final AuthTokens tokens = await AuthResource(client)
          .refresh(refreshToken: 'old-refresh');

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/auth/refresh'),
      );
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'refresh_token': 'old-refresh'}),
      );
      expect(tokens.token, equals('jwt-access-token'));
    });

    test('401 invalid_refresh_token surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => errorResponse(
          'invalid_refresh_token',
          'Invalid or expired refresh token',
          401,
        ),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).refresh(refreshToken: 'stale'),
        throwsA(
          isA<SpreeAuthError>()
              .having((e) => e.statusCode, 'status', 401)
              .having((e) => e.code, 'code', 'invalid_refresh_token'),
        ),
      );
    });
  });

  group('AuthResource.logout POST /auth/logout', () {
    test('revokes the refresh token and yields void on 204', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => http.Response('', 204),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      await AuthResource(client).logout(refreshToken: 'rt-to-revoke');

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/auth/logout'),
      );
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'refresh_token': 'rt-to-revoke'}),
      );
    });

    test('403 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('forbidden', 'Forbidden', 403),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).logout(refreshToken: 'rt'),
        throwsA(
          isA<SpreeAuthError>().having((e) => e.statusCode, 'status', 403),
        ),
      );
    });
  });

  group('AuthResource.register POST /customers', () {
    test('sends RegisterParams and auto-logs in', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(authTokensFixture()),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final AuthTokens tokens = await AuthResource(client).register(
        params: const RegisterParams(
          email: 'new.shopper@example.com',
          password: 'secret',
          passwordConfirmation: 'secret',
          firstName: 'New',
        ),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/customers'),
      );
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      final Map<String, Object?> body = calls.single.jsonBody();
      expect(body['email'], equals('new.shopper@example.com'));
      expect(body['password_confirmation'], equals('secret'));
      expect(body['first_name'], equals('New'));
      expect(tokens.user.email, equals('sam.buyer@example.com'));
    });

    test('422 validation failure surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('unprocessable_entity', 'Email is invalid', 422),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).register(
          params: const RegisterParams(email: 'bad', password: 'x'),
        ),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });

  group('AuthResource.requestPasswordReset POST /password_resets', () {
    test('sends email and returns the 202 message', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => jsonResponse(
          <String, Object?>{'message': 'Reset instructions sent'},
          202,
        ),
      );
      addTearDown(client.close);

      final String message = await AuthResource(client).requestPasswordReset(
        params: const RequestPasswordResetParams(
          email: 'sam.buyer@example.com',
        ),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/password_resets'),
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'email': 'sam.buyer@example.com'}),
      );
      expect(message, equals('Reset instructions sent'));
    });

    test('401 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Missing API key', 401),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).requestPasswordReset(
          params: const RequestPasswordResetParams(email: 'a@b.c'),
        ),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('AuthResource.resetPassword PATCH /password_resets/{token}', () {
    test('consumes the token and auto-logs in', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(authTokensFixture()),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final AuthTokens tokens = await AuthResource(client).resetPassword(
        token: 'reset-token-abc',
        params: const ResetPasswordParams(
          password: 'new-secret',
          passwordConfirmation: 'new-secret',
        ),
        options: const RequestOptions(),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/password_resets/reset-token-abc',
        ),
      );
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(
        calls.single.jsonBody()['password_confirmation'],
        equals('new-secret'),
      );
      expect(tokens.token, equals('jwt-access-token'));
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('unprocessable_entity', 'Password is too short', 422),
      );
      addTearDown(client.close);

      expect(
        AuthResource(client).resetPassword(
          token: 't',
          params: const ResetPasswordParams(password: 'x'),
        ),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });
}
