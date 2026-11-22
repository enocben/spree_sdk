import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/meta.dart';
import 'package:spree_sdk/src/resources/delivery.dart';
import 'package:test/test.dart';

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

Map<String, Object?> _deliveryMethod() => <String, Object?>{
  'id': 'dm_001',
  'name': 'Standard Shipping',
  'code': 'standard',
  'digital': false,
  'pickup': false,
  'pickup_point': false,
};

void main() {
  group('DeliveryMethodsResource', () {
    test('list sends GET /delivery_methods with fulfillment_type', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'data': <Object?>[_deliveryMethod()],
        }),
      );
      addTearDown(client.close);

      final methods = await DeliveryMethodsResource(client)
          .list(fulfillmentType: FulfillmentType.shipping);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/delivery_methods'),
      );
      expect(
        calls.single.request.url.queryParameters['fulfillment_type'],
        equals('shipping'),
      );
      expect(
        calls.single.request.headers['x-spree-api-key'],
        equals('pk_test_123'),
      );
      expect(methods.single.id, equals('dm_001'));
      expect(methods.single.pickupPoint, isFalse);
    });

    test('list omits fulfillment_type when no filter is given', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'data': <Object?>[_deliveryMethod()],
        }),
      );
      addTearDown(client.close);

      await DeliveryMethodsResource(client).list();

      expect(
        calls.single.request.url.queryParameters.containsKey(
          'fulfillment_type',
        ),
        isFalse,
      );
    });

    test('list surfaces 401 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'invalid_token',
            'message': 'Unauthorized',
          },
        }, 401),
      );
      addTearDown(client.close);

      expect(
        () => DeliveryMethodsResource(client).list(),
        throwsA(isA<SpreeHttpError>()),
      );
    });

    test(
      'pickupLocations sends GET with cart_id and parses locations',
      () async {
        final List<_Call> calls = <_Call>[];
        final SpreeClient client = _client(
          calls,
          () => _json(<String, Object?>{
            'data': <Object?>[
              <String, Object?>{
                'id': 'sl_001',
                'name': 'Berlin Store',
                'city': 'Berlin',
                'country_code': 'DE',
              },
            ],
          }),
        );
        addTearDown(client.close);

        final locations = await DeliveryMethodsResource(client)
            .pickupLocations('dm_001', cartId: 'cart_1');

        expect(calls.single.request.method, equals('GET'));
        expect(
          calls.single.request.url.path,
          equals('/api/v3/store/delivery_methods/dm_001/pickup_locations'),
        );
        expect(
          calls.single.request.url.queryParameters['cart_id'],
          equals('cart_1'),
        );
        expect(locations.single.id, equals('sl_001'));
        expect(locations.single.city, equals('Berlin'));
      },
    );

    test('pickupLocations without cart_id sends no query', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{'data': <Object?>[]}),
      );
      addTearDown(client.close);

      final locations = await DeliveryMethodsResource(client)
          .pickupLocations('dm_001');

      expect(calls.single.request.url.queryParameters, isEmpty);
      expect(locations, isEmpty);
    });
  });
}
