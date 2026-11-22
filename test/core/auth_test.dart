import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/auth/provider.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:test/test.dart';

class _StubProvider extends AuthTokenProvider {
  _StubProvider({this.token, this.refreshed});

  final String? token;
  final String? refreshed;
  int getCalls = 0;
  int refreshCalls = 0;

  @override
  Future<String?> getToken() async {
    getCalls++;
    return token;
  }

  @override
  Future<String?> refreshToken() async {
    refreshCalls++;
    return refreshed;
  }
}

http.Response _json(Object body, [int status = 200]) {
  return http.Response(
    '{"ok":true}',
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

void main() {
  group('auth provider hooks', () {
    test('provider token is sent as Bearer', () async {
      String? authorization;
      final _StubProvider provider = _StubProvider(token: 'jwt-123');
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        authProvider: provider,
        httpClient: MockClient((http.BaseRequest request) async {
          authorization = request.headers['authorization'];
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(client.close);

      await client.request('GET', '/customers/me');
      expect(authorization, equals('Bearer jwt-123'));
      expect(provider.getCalls, equals(1));
    });

    test('per-request token overrides the provider', () async {
      String? authorization;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        authProvider: _StubProvider(token: 'jwt-provider'),
        httpClient: MockClient((http.BaseRequest request) async {
          authorization = request.headers['authorization'];
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(client.close);

      await client.request(
        'GET',
        '/customers/me',
        options: const RequestOptions(token: 'jwt-request'),
      );
      expect(authorization, equals('Bearer jwt-request'));
    });

    test('no provider means no Authorization header', () async {
      bool hasAuth = true;
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        httpClient: MockClient((http.BaseRequest request) async {
          hasAuth = request.headers.containsKey('authorization');
          return _json(<String, bool>{'ok': true});
        }),
      );
      addTearDown(client.close);

      await client.request('GET', '/products');
      expect(hasAuth, isFalse);
    });

    test(
      '401 triggers refresh and a single retry with the new token',
      () async {
        final List<String?> authorizations = <String?>[];
        final _StubProvider provider = _StubProvider(
          token: 'jwt-expired',
          refreshed: 'jwt-fresh',
        );
        final SpreeClient client = SpreeClient(
          baseUrl: Uri.parse('https://api.mystore.com'),
          publishableKey: 'pk_test_123',
          authProvider: provider,
          httpClient: MockClient((http.BaseRequest request) async {
            authorizations.add(request.headers['authorization']);
            if (authorizations.length == 1) {
              return http.Response(
                '{"error":{"code":"invalid_token","message":"expired"}}',
                401,
              );
            }
            return _json(<String, bool>{'ok': true});
          }),
        );
        addTearDown(client.close);

        final Object? result = await client.request('GET', '/customers/me');
        expect(result, equals(<String, bool>{'ok': true}));
        expect(
          authorizations,
          equals(<String?>['Bearer jwt-expired', 'Bearer jwt-fresh']),
        );
        expect(provider.refreshCalls, equals(1));
      },
    );

    test('401 without refresh support throws SpreeAuthError', () async {
      int calls = 0;
      final _StubProvider provider = _StubProvider(token: 'jwt-expired');
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        authProvider: provider,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          return http.Response('{"error":{"code":"invalid_token"}}', 401);
        }),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('GET', '/customers/me'),
        throwsA(isA<SpreeAuthError>()),
      );
      expect(calls, equals(1));
      expect(provider.refreshCalls, equals(1));
    });

    test('403 never triggers refresh', () async {
      int calls = 0;
      final _StubProvider provider = _StubProvider(
        token: 'jwt-ok',
        refreshed: 'jwt-fresh',
      );
      final SpreeClient client = SpreeClient(
        baseUrl: Uri.parse('https://api.mystore.com'),
        publishableKey: 'pk_test_123',
        authProvider: provider,
        httpClient: MockClient((http.BaseRequest request) async {
          calls++;
          return http.Response('{"error":{"code":"forbidden"}}', 403);
        }),
      );
      addTearDown(client.close);

      await expectLater(
        client.request('GET', '/customers/me'),
        throwsA(isA<SpreeAuthError>()),
      );
      expect(calls, equals(1));
      expect(provider.refreshCalls, equals(0));
    });
  });
}
