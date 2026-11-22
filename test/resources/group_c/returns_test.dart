/// Request/response/error tests for [OrderReturnsResource].
///
/// Covers `GET /orders/{id}/returns` (list) and
/// `POST /orders/{id}/returns` (create + 422 hook). The single-get is P2
/// (excluded: no SPEC path) and has no test by design.
library;

import 'dart:convert';

import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/params_orders.dart';
import 'package:spree_sdk/src/resources/returns.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> returnJson() => <String, Object?>{
  'id': 'ret_001',
  'number': 'RMA-1',
  'status': 'requested',
  'order_id': 'ord_001',
  'reason_id': 'rr_001',
  'refund_total': null,
  'refund_tax_total': null,
  'approved_at': null,
  'received_at': null,
  'refunded_at': null,
  'canceled_at': null,
  'reason': <String, Object?>{
    'id': 'rr_001',
    'name': 'Damaged',
    'active': true,
  },
  'return_line_items': <Object?>[
    <String, Object?>{
      'id': 'rli_001',
      'quantity': 1,
      'received_quantity': 0,
      'resellable': false,
      'pre_tax_amount': '89.99',
      'included_tax_total': null,
      'additional_tax_total': null,
      'tax_total': null,
      'refund_amount': null,
      'variant_id': 'var_001',
      'line_item_id': 'li_001',
      'fulfillment_item_id': 'fi_001',
    },
  ],
};

void main() {
  group('OrderReturnsResource', () {
    test('list sends GET with list query and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrderReturnsResource resource = OrderReturnsResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[returnJson()])),
        ),
      );

      final result = await resource.list(
        'ord_001',
        query: const ListQuery(page: 2, limit: 10),
        options: const RequestOptions(spreeToken: 'guest-token-xyz'),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/orders/ord_001/returns'
          '?page=2&limit=10',
        ),
      );
      expect(
        calls.single.request.headers['x-spree-token'],
        equals('guest-token-xyz'),
      );
      expect(result.data, hasLength(1));
      final Return parsed = result.data.single;
      expect(parsed.number, equals('RMA-1'));
      expect(parsed.status, equals(ReturnStatus.requested));
      expect(parsed.reason?.name, equals('Damaged'));
      expect(
        parsed.returnLineItems?.single.fulfillmentItemId,
        equals('fi_001'),
      );
    });

    test('create posts fulfillment items and parses the Return', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrderReturnsResource resource = OrderReturnsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(returnJson()),
        ),
      );
      const CreateReturnParams params = CreateReturnParams(
        items: <CreateReturnItem>[
          CreateReturnItem(fulfillmentItemId: 'fi_001', quantity: 1),
        ],
        reasonId: 'rr_001',
        memo: 'arrived cracked',
      );

      final Return created = await resource.create('ord_001', params);

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/orders/ord_001/returns'),
      );
      expect(jsonDecode(calls.single.body), equals(params.toJson()));
      expect(created.id, equals('ret_001'));
      expect(created.status, equals(ReturnStatus.requested));
    });

    test('create surfaces store-policy 422 without retry', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrderReturnsResource resource = OrderReturnsResource(
        testClient(
          calls,
          (int index, request) async => errorResponse(
            'unprocessable_entity',
            'Returns are not allowed for this order',
            422,
          ),
        ),
      );

      // One attempt only: the transport never retries a POST without an
      // idempotency key, and the 422 envelope code is preserved.
      await expectLater(
        resource.create(
          'ord_001',
          const CreateReturnParams(
            items: <CreateReturnItem>[
              CreateReturnItem(fulfillmentItemId: 'fi_001', quantity: 1),
            ],
          ),
        ),
        throwsA(
          isA<SpreeHttpError>()
              .having((e) => e.statusCode, 'statusCode', 422)
              .having((e) => e.code, 'code', 'unprocessable_entity'),
        ),
      );
      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
    });
  });
}
