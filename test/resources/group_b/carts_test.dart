import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/params_checkout.dart';
import 'package:spree_sdk/src/resources/carts.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
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

http.Response _cartResponse([String fixture = 'cart_empty.json']) =>
    _json(loadFixture(fixture));

http.Response _unprocessable() => _json(<String, Object?>{
  'error': <String, Object?>{
    'code': 'unprocessable',
    'message': 'Validation failed',
  },
}, 422);

void _expectKeyHeader(http.BaseRequest sent) {
  expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
}

void main() {
  group('CartsResource lifecycle', () {
    test('list sends GET /carts with JWT', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(_page(loadFixture('cart_empty.json'))),
      );
      addTearDown(client.close);

      final result = await CartsResource(client)
          .list(options: const RequestOptions(token: 'jwt-123'));

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/carts'));
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-123'),
      );
      _expectKeyHeader(calls.single.request);
      expect(result.data, hasLength(1));
    });

    test('get sends GET /carts/{id} with guest token', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _cartResponse('cart_full.json'),
      );
      addTearDown(client.close);

      final cart = await CartsResource(client).get(
        'cart-002',
        options: const RequestOptions(spreeToken: 'guest-token-002'),
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-002'),
      );
      expect(
        calls.single.request.headers['x-spree-token'],
        equals('guest-token-002'),
      );
      _expectKeyHeader(calls.single.request);
      expect(cart.email, equals('sam.buyer@example.com'));
    });

    test('create sends POST /carts with no body by default', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      final cart = await CartsResource(client).create();

      expect(calls.single.request.method, equals('POST'));
      expect(calls.single.request.url.path, equals('/api/v3/store/carts'));
      expect(calls.single.body, isEmpty);
      _expectKeyHeader(calls.single.request);
      expect(cart.token, equals('guest-token-001'));
    });

    test('update sends PATCH /carts/{id} with email body', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).update(
        'cart-001',
        params: const UpdateCartParams(email: 'sam@example.com'),
        options: const RequestOptions(spreeToken: 'guest-token-001'),
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'email': 'sam@example.com'}),
      );
      expect(
        calls.single.request.headers['content-type'],
        contains('application/json'),
      );
      expect(
        calls.single.request.headers['x-spree-token'],
        equals('guest-token-001'),
      );
    });

    test('delete sends DELETE /carts/{id} and returns void', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{}),
      );
      addTearDown(client.close);

      await CartsResource(client).delete('cart-001');

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001'),
      );
      _expectKeyHeader(calls.single.request);
    });

    test('associate sends PATCH /carts/{id}/associate with JWT', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      final cart = await CartsResource(
        client,
      ).associate('cart-001', options: const RequestOptions(token: 'jwt-123'));

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/associate'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-123'),
      );
      expect(cart.token, isNotEmpty);
    });

    test('complete maps a single order payload to CompletedOrder', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('order_single.json')),
      );
      addTearDown(client.close);

      final result = await CartsResource(client).complete(
        'cart-002',
        options: const RequestOptions(spreeToken: 'guest-token-002'),
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-002/complete'),
      );
      expect(result, isA<CompletedOrder>());
      expect((result as CompletedOrder).order.number, equals('R001'));
    });

    test('complete maps a group payload to CompletedOrderGroup', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('order_group.json')),
      );
      addTearDown(client.close);

      final result = await CartsResource(client).complete('cart-002');

      expect(result, isA<CompletedOrderGroup>());
      expect((result as CompletedOrderGroup).group.number, equals('G001'));
    });

    test('complete surfaces 422 validation failures', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _unprocessable);
      addTearDown(client.close);

      expect(
        () => CartsResource(client).complete('cart-002'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('CartsResource addresses', () {
    test('addresses sends GET /carts/{id}/addresses with JWT', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(_page(loadFixture('address_book_entry.json'))),
      );
      addTearDown(client.close);

      final result = await CartsResource(
        client,
      ).addresses('cart-001', options: const RequestOptions(token: 'jwt-123'));

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/addresses'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-123'),
      );
      expect(result.data.single.fullName, equals('Sam Buyer'));
    });
  });

  group('CartsResource items', () {
    test('addItem sends POST /carts/{id}/items with variant body', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).addItem(
        'cart-001',
        params: const AddLineItemParams(variantId: 'var_001', quantity: 2),
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/items'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'variant_id': 'var_001', 'quantity': 2}),
      );
      _expectKeyHeader(calls.single.request);
    });

    test('updateItem sends PATCH /carts/{id}/items/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).updateItem(
        'cart-001',
        'item-1',
        params: const UpdateLineItemParams(quantity: 3),
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/items/item-1'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'quantity': 3}),
      );
    });

    test('removeItem sends DELETE and returns the updated cart', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      final cart = await CartsResource(client).removeItem('cart-001', 'item-1');

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/items/item-1'),
      );
      expect(cart.token, equals('guest-token-001'));
    });

    test('items surface 422 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _unprocessable);
      addTearDown(client.close);

      expect(
        () => CartsResource(client).addItem(
          'cart-001',
          params: const AddLineItemParams(variantId: 'var_x', quantity: 99),
        ),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('CartsResource discounts and gift cards', () {
    test('applyDiscountCode sends POST with code body', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).applyDiscountCode('cart-001', code: 'SAVE10');

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/discount_codes'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'code': 'SAVE10'}),
      );
    });

    test('removeDiscountCode sends DELETE with the code in the path', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).removeDiscountCode('cart-001', 'SAVE10');

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/discount_codes/SAVE10'),
      );
    });

    test('applyGiftCard sends POST with code body', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).applyGiftCard('cart-001', code: 'GIFT-1');

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/gift_cards'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'code': 'GIFT-1'}),
      );
    });

    test('removeGiftCard sends DELETE with the code in the path', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).removeGiftCard('cart-001', 'GIFT-1');

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/gift_cards/GIFT-1'),
      );
    });

    test('discount failures surface as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _unprocessable);
      addTearDown(client.close);

      expect(
        () => CartsResource(client).applyDiscountCode('cart-001', code: 'BAD'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('CartsResource fulfillment, payments, store credit', () {
    test('selectFulfillmentRate sends PATCH /fulfillments/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).selectFulfillmentRate(
        'cart-001',
        'ful-1',
        params: const UpdateFulfillmentParams(
          extra: <String, Object?>{'delivery_rate_id': 'rate_1'},
        ),
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/fulfillments/ful-1'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'delivery_rate_id': 'rate_1'}),
      );
    });

    test('createPayment sends POST /payments and parses Payment', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'id': 'pay_1',
          'payment_method_id': 'pm_1',
          'number': 'P1',
          'status': 'checkout',
          'payment_method': <String, Object?>{
            'id': 'pm_1',
            'name': 'Check',
            'type': 'check',
            'session_required': false,
            'source_required': false,
          },
        }),
      );
      addTearDown(client.close);

      final payment = await CartsResource(client).createPayment(
        'cart-001',
        params: const CreatePaymentParams(
          extra: <String, Object?>{'payment_method_id': 'pm_1'},
        ),
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/payments'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'payment_method_id': 'pm_1'}),
      );
      expect(payment.id, equals('pay_1'));
      expect(payment.paymentMethod.name, equals('Check'));
    });

    test('applyStoreCredit sends decimal-string amount', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).applyStoreCredit('cart-001', amount: '12.50');

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/store_credits'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'amount': '12.50'}),
      );
    });

    test('applyStoreCredit without amount applies the maximum', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).applyStoreCredit('cart-001');

      expect(calls.single.request.method, equals('POST'));
      expect(jsonDecode(calls.single.body) as Map<String, Object?>, isEmpty);
    });

    test('removeStoreCredit sends DELETE /store_credits', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _cartResponse);
      addTearDown(client.close);

      await CartsResource(client).removeStoreCredit('cart-001');

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/store_credits'),
      );
    });

    test('payment failures surface as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, _unprocessable);
      addTearDown(client.close);

      expect(
        () =>
            CartsResource(client)
                .createPayment('cart-001', params: const CreatePaymentParams()),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });
}
