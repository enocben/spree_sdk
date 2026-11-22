import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/params_checkout.dart';
import 'package:spree_sdk/src/resources/payment_sessions.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
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

Map<String, Object?> _session() => <String, Object?>{
  'id': 'ps_001',
  'status': 'pending',
  'payment_method_id': 'pm_stripe',
};

void main() {
  group('PaymentSessionsResource', () {
    test('create sends POST /payment_sessions with guest token', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, () => _json(_session()));
      addTearDown(client.close);

      final session = await PaymentSessionsResource(client).create(
        'cart-001',
        params: const CreatePaymentSessionParams(
          extra: <String, Object?>{'payment_method_id': 'pm_stripe'},
        ),
        options: const RequestOptions(spreeToken: 'guest-token-001'),
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/payment_sessions'),
      );
      expect(
        calls.single.request.headers['x-spree-token'],
        equals('guest-token-001'),
      );
      expect(
        calls.single.request.headers['x-spree-api-key'],
        equals('pk_test_123'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'payment_method_id': 'pm_stripe'}),
      );
      expect(session.id, equals('ps_001'));
      expect(session.status?.value, equals('pending'));
    });

    test('get sends GET /payment_sessions/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(calls, () => _json(_session()));
      addTearDown(client.close);

      final session = await PaymentSessionsResource(client)
          .get('cart-001', 'ps_001');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/payment_sessions/ps_001'),
      );
      expect(session.id, equals('ps_001'));
      expect(session.toJson()['payment_method_id'], equals('pm_stripe'));
    });

    test('update sends PATCH /payment_sessions/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{'id': 'ps_001', 'status': 'processing'}),
      );
      addTearDown(client.close);

      final session = await PaymentSessionsResource(client).update(
        'cart-001',
        'ps_001',
        params: const UpdatePaymentSessionParams(
          extra: <String, Object?>{'return_url': 'https://shop.example/done'},
        ),
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/payment_sessions/ps_001'),
      );
      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'return_url': 'https://shop.example/done'}),
      );
      expect(session.status?.value, equals('processing'));
    });

    test('complete sends PATCH .../complete with no body by default', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{'id': 'ps_001', 'status': 'completed'}),
      );
      addTearDown(client.close);

      final session = await PaymentSessionsResource(client)
          .complete('cart-001', 'ps_001');

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/carts/cart-001/payment_sessions/ps_001/complete'),
      );
      expect(calls.single.body, isEmpty);
      expect(session.status?.value, equals('completed'));
    });

    test('complete forwards optional completion params', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{'id': 'ps_001', 'status': 'completed'}),
      );
      addTearDown(client.close);

      await PaymentSessionsResource(client).complete(
        'cart-001',
        'ps_001',
        params: const CompletePaymentSessionParams(
          extra: <String, Object?>{'token': 'tok_123'},
        ),
      );

      expect(
        jsonDecode(calls.single.body) as Map<String, Object?>,
        equals(<String, Object?>{'token': 'tok_123'}),
      );
    });

    test('failures surface as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'unprocessable',
            'message': 'Expired',
          },
        }, 422),
      );
      addTearDown(client.close);

      expect(
        () => PaymentSessionsResource(client).get('cart-001', 'ps_001'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });
}
