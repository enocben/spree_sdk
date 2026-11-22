import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/transport/http_transport.dart';
import 'package:spree_sdk/src/transport/transport.dart';
import 'package:test/test.dart';

void main() {
  group('HttpTransport URL handling', () {
    test('normalizeBaseUrl strips slashes and validates', () {
      expect(
        HttpTransport.normalizeBaseUrl(Uri.parse('https://a.test/')),
        equals(Uri.parse('https://a.test')),
      );
      expect(
        HttpTransport.normalizeBaseUrl(Uri.parse('https://a.test/shop//')),
        equals(Uri.parse('https://a.test/shop')),
      );
      expect(
        () => HttpTransport.normalizeBaseUrl(Uri.parse('/relative')),
        throwsA(
          isA<ArgumentError>().having(
            (ArgumentError error) => error.toString(),
            'message',
            contains('got "/relative"'),
          ),
        ),
      );
      expect(
        () => HttpTransport.normalizeBaseUrl(Uri.parse('ftp://a.test')),
        throwsA(
          isA<ArgumentError>().having(
            (ArgumentError error) => error.toString(),
            'message',
            contains('scheme must be http or https'),
          ),
        ),
      );
    });

    test('buildStoreUri prefixes once and merges queries', () {
      expect(
        HttpTransport.buildStoreUri(
          Uri.parse('https://a.test'),
          '/products',
          <String, String>{'page': '1'},
        ).toString(),
        equals('https://a.test/api/v3/store/products?page=1'),
      );
      expect(
        HttpTransport.buildStoreUri(
          Uri.parse('https://a.test/api/v3/store'),
          '/products',
        ).toString(),
        equals('https://a.test/api/v3/store/products'),
      );
      expect(
        HttpTransport.buildStoreUri(
          Uri.parse('https://a.test?locale=en'),
          '/products',
          <String, String>{'page': '1'},
        ).toString(),
        equals('https://a.test/api/v3/store/products?locale=en&page=1'),
      );
      expect(
        () => HttpTransport.buildStoreUri(
          Uri.parse('https://a.test'),
          'no-leading-slash',
        ),
        throwsArgumentError,
      );
    });

    test('cross-origin redirects strip credentials', () async {
      final List<http.BaseRequest> seen = <http.BaseRequest>[];
      final HttpTransport transport = HttpTransport(
        client: MockClient((http.BaseRequest request) async {
          seen.add(request);
          if (request.url.host == 'api.mystore.com') {
            return http.Response(
              '',
              302,
              headers: <String, String>{
                'location': 'https://cdn.other.com/target',
              },
            );
          }
          return http.Response('{}', 200);
        }),
        baseUrl: Uri.parse('https://api.mystore.com'),
      );

      final SpreeResponse response = await transport.send(
        const SpreeRequest(
          method: 'GET',
          path: '/products',
          headers: <String, String>{
            'authorization': 'Bearer secret',
            'x-spree-token': 'guest-secret',
            'x-spree-api-key': 'pk_live_secret',
            'accept': 'application/json',
          },
        ),
      );

      expect(response.statusCode, equals(200));
      expect(seen, hasLength(2));
      final Map<String, String> forwarded = seen.last.headers;
      expect(forwarded.containsKey('authorization'), isFalse);
      expect(forwarded.containsKey('x-spree-token'), isFalse);
      expect(forwarded.containsKey('x-spree-api-key'), isFalse);
      expect(forwarded['accept'], equals('application/json'));
    });

    test('same-origin redirects preserve credentials', () async {
      final List<http.BaseRequest> seen = <http.BaseRequest>[];
      final HttpTransport transport = HttpTransport(
        client: MockClient((http.BaseRequest request) async {
          seen.add(request);
          if (request.url.path.endsWith('/old')) {
            return http.Response(
              '',
              301,
              headers: <String, String>{'location': '/api/v3/store/new'},
            );
          }
          return http.Response('{}', 200);
        }),
        baseUrl: Uri.parse('https://api.mystore.com'),
      );

      final SpreeResponse response = await transport.send(
        const SpreeRequest(
          method: 'GET',
          path: '/old',
          headers: <String, String>{'authorization': 'Bearer secret'},
        ),
      );

      expect(response.statusCode, equals(200));
      expect(seen, hasLength(2));
      expect(seen.last.headers['authorization'], equals('Bearer secret'));
    });

    test(
      '303 converts POST to GET and redirect loops surface errors',
      () async {
        final List<http.BaseRequest> seen = <http.BaseRequest>[];
        final HttpTransport transport = HttpTransport(
          client: MockClient((http.BaseRequest request) async {
            seen.add(request);
            return http.Response(
              '',
              303,
              headers: <String, String>{'location': '/api/v3/store/done'},
            );
          }),
          baseUrl: Uri.parse('https://api.mystore.com'),
          maxRedirects: 1,
        );

        final SpreeClient client = SpreeClient(
          baseUrl: Uri.parse('https://api.mystore.com'),
          publishableKey: 'pk_test_123',
          maxRedirects: 1,
          httpClient: MockClient((http.BaseRequest request) async {
            seen.add(request);
            return http.Response(
              '',
              303,
              headers: <String, String>{'location': '/api/v3/store/done'},
            );
          }),
        );
        addTearDown(client.close);

        expect(seen, isEmpty);
        await expectLater(
          client.request('POST', '/carts', body: <String, String>{'a': 'b'}),
          throwsA(isA<SpreeHttpError>()),
        );
        // First POST, then the single GET follow-up; the second 303 exceeds
        // maxRedirects and is returned as a 3xx failure.
        expect(
          seen.map((http.BaseRequest r) => r.method).toList(),
          equals(<String>['POST', 'GET']),
        );
        expect(transport.maxRedirects, equals(1));
      },
    );
  });
}
