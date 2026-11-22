import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/resources/taxons.dart';
import 'package:test/test.dart';

import '../../models/fixture_helpers.dart';

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
      calls.add(_Call(request, request is http.Request ? request.body : ''));
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

http.Response _notFound() => _json(<String, Object?>{
  'error': <String, Object?>{'code': 'not_found', 'message': 'Not found'},
}, 404);

void main() {
  group('CategoriesResource', () {
    test('list sends GET /categories with pagination and q filters', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(_page(loadFixture('category_tree.json'))),
      );
      addTearDown(client.close);

      final result = await CategoriesResource(client)
          .list(page: 1, limit: 25, filter: {'name_cont': 'shirt'});

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/categories'));
      expect(
        calls.single.request.url.queryParameters['q[name_cont]'],
        equals('shirt'),
      );
      expect(
        calls.single.request.headers['x-spree-api-key'],
        equals('pk_test_123'),
      );
      expect(result.data, hasLength(1));
      expect(result.meta.count, equals(1));
    });

    test('get sends GET /categories/{id} with expand', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('category_tree.json')),
      );
      addTearDown(client.close);

      final category = await CategoriesResource(client)
          .get('bags', expand: ['children']);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/categories/bags'),
      );
      expect(
        calls.single.request.url.queryParameters['expand'],
        equals('children'),
      );
      expect(category.permalink, equals('bags'));
    });

    test('get surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _notFound);
      addTearDown(client.close);

      expect(
        () => CategoriesResource(client).get('missing'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('SellersResource', () {
    test('list sends GET /sellers', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(_page(loadFixture('seller.json'))),
      );
      addTearDown(client.close);

      final result = await SellersResource(client).list(limit: 10);

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/sellers'));
      expect(calls.single.request.url.queryParameters['limit'], equals('10'));
      expect(
        calls.single.request.headers['x-spree-api-key'],
        equals('pk_test_123'),
      );
      expect(result.data.single.slug, equals('trailhead-supply'));
    });

    test('get sends GET /sellers/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('seller.json')),
      );
      addTearDown(client.close);

      final seller = await SellersResource(client).get('trailhead-supply');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/sellers/trailhead-supply'),
      );
      expect(seller.name, equals('Trailhead Supply'));
    });

    test('get surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _notFound);
      addTearDown(client.close);

      expect(
        () => SellersResource(client).get('missing'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('CollectionsResource', () {
    test('list sends GET /collections', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(_page(loadFixture('collection.json'))),
      );
      addTearDown(client.close);

      final result = await CollectionsResource(client).list();

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/collections'),
      );
      expect(
        calls.single.request.headers['x-spree-api-key'],
        equals('pk_test_123'),
      );
      expect(result.data.single.permalink, equals('staff-picks'));
    });

    test('get sends GET /collections/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('collection.json')),
      );
      addTearDown(client.close);

      final collection = await CollectionsResource(client).get('staff-picks');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/collections/staff-picks'),
      );
      expect(collection.name, equals('Staff Picks'));
    });

    test('products sends GET /collections/{id}/products', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(_page(loadFixture('product_minimal.json'))),
      );
      addTearDown(client.close);

      final result = await CollectionsResource(client)
          .products('staff-picks', limit: 5, filter: {'in_stock': 'true'});

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/collections/staff-picks/products'),
      );
      expect(calls.single.request.url.queryParameters['limit'], equals('5'));
      expect(
        calls.single.request.url.queryParameters['q[in_stock]'],
        equals('true'),
      );
      expect(result.data.single.id, equals('prod_001'));
    });

    test('products surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _notFound);
      addTearDown(client.close);

      expect(
        () => CollectionsResource(client).products('missing'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });
}
