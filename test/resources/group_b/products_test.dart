import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/resources/products.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:test/test.dart';

import '../../models/fixture_helpers.dart';

/// Captures the outgoing request and its decoded body (when present).
class _Call {
  _Call(this.request, this.body);

  final http.BaseRequest request;
  final String body;
}

SpreeClient _client(List<_Call> calls, http.Response Function() respond) {
  return SpreeClient(
    baseUrl: Uri.parse('https://api.mystore.com'),
    publishableKey: 'pk_test_123',
    httpClient: MockClient((http.BaseRequest request) async {
      final String body = request is http.Request ? request.body : '';
      calls.add(_Call(request, body));
      return respond();
    }),
  );
}

http.Response _json(Object body, [int status = 200]) {
  return http.Response(
    jsonEncode(body),
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

Map<String, Object?> _page(Object item) => <String, Object?>{
  'data': <Object?>[item],
  'meta': <String, Object?>{'page': 1, 'limit': 25, 'count': 1, 'pages': 1},
};

void main() {
  group('ProductsResource', () {
    test(
      'list sends GET /products with pagination, expand and q filters',
      () async {
        final List<_Call> calls = <_Call>[];
        final SpreeClient client = _client(
          calls,
          () => _json(_page(loadFixture('product_minimal.json'))),
        );
        addTearDown(client.close);

        final result = await ProductsResource(client).list(
          page: 2,
          limit: 10,
          expand: ['variants'],
          filter: {'name_cont': 'backpack'},
        );

        expect(calls, hasLength(1));
        final http.BaseRequest sent = calls.single.request;
        expect(sent.method, equals('GET'));
        expect(sent.url.path, equals('/api/v3/store/products'));
        expect(sent.url.queryParameters['page'], equals('2'));
        expect(sent.url.queryParameters['limit'], equals('10'));
        expect(sent.url.queryParameters['expand'], equals('variants'));
        expect(sent.url.queryParameters['q[name_cont]'], equals('backpack'));
        expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
        expect(sent.headers['accept'], equals('application/json'));
        expect(result.data.single.id, equals('prod_001'));
        expect(result.data.single.name, equals('Canvas Backpack'));
        expect(result.meta.page, equals(1));
      },
    );

    test('list surfaces 422 validation failures', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'invalid',
            'message': 'Bad filter',
          },
        }, 422),
      );
      addTearDown(client.close);

      expect(
        () => ProductsResource(client).list(filter: {'nope': 'x'}),
        throwsA(isA<SpreeHttpError>()),
      );
    });

    test('get sends GET /products/{id} with expand and fields', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('product_expanded.json')),
      );
      addTearDown(client.close);

      final product = await ProductsResource(client).get(
        'canvas-backpack',
        expand: ['variants'],
        fields: ['name', 'slug'],
        options: const RequestOptions(currency: 'USD'),
      );

      expect(calls, hasLength(1));
      final http.BaseRequest sent = calls.single.request;
      expect(sent.method, equals('GET'));
      expect(sent.url.path, equals('/api/v3/store/products/canvas-backpack'));
      expect(sent.url.queryParameters['expand'], equals('variants'));
      expect(sent.url.queryParameters['fields'], equals('name,slug'));
      expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
      expect(sent.headers['x-spree-currency'], equals('USD'));
      expect(product.slug, equals('canvas-backpack'));
    });

    test('get surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'not_found',
            'message': 'Not found',
          },
        }, 404),
      );
      addTearDown(client.close);

      expect(
        () => ProductsResource(client).get('missing'),
        throwsA(isA<SpreeHttpError>()),
      );
    });

    test('filters sends GET /products/filters with q params', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'id': 'filters',
          'default_sort': 'name_asc',
          'total_count': 3,
          'filters': <Object?>[
            <String, Object?>{
              'id': 'price',
              'type': 'price_range',
              'min': '10.00',
              'max': '99.99',
              'currency': 'USD',
            },
          ],
          'sort_options': <Object?>[
            <String, Object?>{'id': 'name_asc', 'label': 'Name A-Z'},
          ],
        }),
      );
      addTearDown(client.close);

      final filters = await ProductsResource(client)
          .filters(filter: {'name_cont': 'pack'});

      expect(calls, hasLength(1));
      final http.BaseRequest sent = calls.single.request;
      expect(sent.method, equals('GET'));
      expect(sent.url.path, equals('/api/v3/store/products/filters'));
      expect(sent.url.queryParameters['q[name_cont]'], equals('pack'));
      expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
      expect(filters.defaultSort, equals('name_asc'));
      expect(filters.totalCount, equals(3));
      expect(filters.filters, hasLength(1));
      expect(filters.sortOptions.single.id, equals('name_asc'));
    });
  });
}
