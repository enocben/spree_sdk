/// Request/response/error tests for [OrdersResource].
///
/// Covers: `GET /orders/{id}` (single order + group union + 404),
/// `GET /customers/me/orders` (list + JWT + pagination) and
/// `GET /customers/me/orders/{id}` (history get). Order payloads reuse the
/// verified `test/models/fixtures/order_*.json` fixtures.
library;

import 'dart:convert';
import 'dart:io';

import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/order.dart';
import 'package:spree_sdk/src/resources/orders.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> loadOrderFixture(String name) {
  final File file = File('test/models/fixtures/$name');
  return jsonDecode(file.readAsStringSync()) as Map<String, Object?>;
}

void main() {
  group('OrdersResource.get', () {
    test('GET order with guest token parses an Order', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrdersResource resource = OrdersResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(loadOrderFixture('order_single.json')),
        ),
      );

      final Object result = await resource.get(
        'R001',
        expand: const <String>['payments'],
        options: const RequestOptions(spreeToken: 'guest-token-xyz'),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/orders/R001'
          '?expand=payments',
        ),
      );
      expect(
        calls.single.request.headers['x-spree-token'],
        equals('guest-token-xyz'),
      );
      expect(
        calls.single.request.headers['x-spree-api-key'],
        equals('pk_test_123'),
      );
      expect(result, isA<Order>());
      expect((result as Order).number, equals('R001'));
      expect(result.cartId, equals('cart-002'));
    });

    test('GET order with JWT parses an OrderGroup via isOrderGroup', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrdersResource resource = OrdersResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(loadOrderFixture('order_group.json')),
        ),
      );

      final Object result = await resource.get(
        'cart-009',
        options: const RequestOptions(token: 'jwt-abc'),
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/orders/cart-009'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-abc'),
      );
      expect(result, isA<OrderGroup>());
      expect((result as OrderGroup).orders.single.number, equals('R001'));
    });

    test('GET unknown order throws 404 SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrdersResource resource = OrdersResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('not_found', 'Order not found', 404),
        ),
      );

      await expectLater(
        resource.get('NOPE'),
        throwsA(
          isA<SpreeHttpError>()
              .having((e) => e.statusCode, 'statusCode', 404)
              .having((e) => e.code, 'code', 'not_found'),
        ),
      );
      expect(calls.single.request.method, equals('GET'));
    });
  });

  group('OrdersResource customer history', () {
    test('listCustomerOrders sends JWT and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrdersResource resource = OrdersResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(
            pageOf(<Object?>[loadOrderFixture('order_single.json')]),
          ),
        ),
      );

      final result = await resource.listCustomerOrders(
        query: const ListQuery(page: 1, limit: 25),
        options: const RequestOptions(token: 'jwt-abc'),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/orders'
          '?page=1&limit=25',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-abc'),
      );
      expect(result.data, hasLength(1));
      expect(result.data.single.number, equals('R001'));
      expect(result.meta.page, equals(1));
    });

    test('getCustomerOrder parses an Order with sparse fieldsets', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrdersResource resource = OrdersResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(loadOrderFixture('order_single.json')),
        ),
      );

      final Order order = await resource.getCustomerOrder(
        'ord_001',
        fields: const <String>['number', 'email'],
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/orders/ord_001'
          '?fields=number%2Cemail',
        ),
      );
      expect(order.number, equals('R001'));
      expect(order.email, equals('sam.buyer@example.com'));
    });

    test('history list 401 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrdersResource resource = OrdersResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('invalid_token', 'Unauthorized', 401),
        ),
      );

      await expectLater(
        resource.listCustomerOrders(),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });
}
