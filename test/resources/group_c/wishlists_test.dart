/// Request/response/error tests for wishlists and wishlist items.
///
/// Covers `GET|POST /wishlists`, `GET|PATCH|DELETE /wishlists/{id}` and
/// item `POST|PATCH|DELETE` under `/wishlists/{id}/items[/{id}]`.
library;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/params_orders.dart';
import 'package:spree_sdk/src/resources/wishlists.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> wishlistJson() => <String, Object?>{
  'id': 'wl_001',
  'name': 'Birthday',
  'token': 'tok_wl_001',
  'is_default': true,
  'is_private': false,
};

Map<String, Object?> wishlistItemJson() => <String, Object?>{
  'id': 'wli_001',
  'variant_id': 'var_001',
  'product_id': 'prod_001',
  'wishlist_id': 'wl_001',
  'quantity': 2,
};

void main() {
  const RequestOptions jwt = RequestOptions(token: 'jwt-abc');

  group('WishlistsResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistsResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[wishlistJson()])),
        ),
      );

      final result = await resource.list(options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/wishlists'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-abc'),
      );
      expect(result.data.single.name, equals('Birthday'));
      expect(result.data.single.isDefault, isTrue);
    });

    test('get sends GET with expand and parses the wishlist', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(wishlistJson()),
        ),
      );

      final wishlist = await resource.get(
        'wl_001',
        expand: const <String>['items'],
        options: jwt,
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/wishlists/wl_001'
          '?expand=items',
        ),
      );
      expect(wishlist.token, equals('tok_wl_001'));
    });

    test('create posts the wishlist body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(wishlistJson()),
        ),
      );
      const params = CreateWishlistParams(name: 'Birthday', isDefault: true);

      final wishlist = await resource.create(params, options: jwt);

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/wishlists'),
      );
      expect(jsonDecode(calls.single.body), equals(params.toJson()));
      expect(wishlist.id, equals('wl_001'));
    });

    test('update patches the wishlist body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final updated = Map<String, Object?>.of(wishlistJson())
        ..['name'] = 'Xmas';
      final resource = WishlistsResource(
        testClient(calls, (int index, request) async => jsonResponse(updated)),
      );

      final wishlist = await resource.update(
        'wl_001',
        const UpdateWishlistParams(name: 'Xmas', isPrivate: true),
        options: jwt,
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/wishlists/wl_001'),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{'name': 'Xmas', 'is_private': true}),
      );
      expect(wishlist.name, equals('Xmas'));
    });

    test('delete sends DELETE and resolves on 204', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistsResource(
        testClient(calls, (int index, request) async => http.Response('', 204)),
      );

      await resource.delete('wl_001', options: jwt);

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/wishlists/wl_001'),
      );
    });

    test('get on unknown wishlist throws 404', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistsResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('not_found', 'Wishlist not found', 404),
        ),
      );

      await expectLater(
        resource.get('NOPE', options: jwt),
        throwsA(
          isA<SpreeHttpError>().having((e) => e.statusCode, 'statusCode', 404),
        ),
      );
    });
  });

  group('WishlistItemsResource', () {
    test('create posts the item body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistItemsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(wishlistItemJson()),
        ),
      );
      const params = CreateWishlistItemParams(
        variantId: 'var_001',
        quantity: 2,
      );

      final item = await resource.create('wl_001', params, options: jwt);

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/wishlists/wl_001/items'),
      );
      expect(jsonDecode(calls.single.body), equals(params.toJson()));
      expect(item.variantId, equals('var_001'));
      expect(item.quantity, equals(2));
    });

    test('update patches the item body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final updated = Map<String, Object?>.of(wishlistItemJson())
        ..['quantity'] = 3;
      final resource = WishlistItemsResource(
        testClient(calls, (int index, request) async => jsonResponse(updated)),
      );

      final item = await resource.update(
        'wl_001',
        'wli_001',
        const UpdateWishlistItemParams(quantity: 3),
        options: jwt,
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/wishlists/wl_001/items'
          '/wli_001',
        ),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{'quantity': 3}),
      );
      expect(item.quantity, equals(3));
    });

    test('delete sends DELETE and resolves on 204', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = WishlistItemsResource(
        testClient(calls, (int index, request) async => http.Response('', 204)),
      );

      await resource.delete('wl_001', 'wli_001', options: jwt);

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/wishlists/wl_001/items'
          '/wli_001',
        ),
      );
    });
  });
}
