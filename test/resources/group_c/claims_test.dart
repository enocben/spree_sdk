/// Request/response/error tests for [OrderClaimsResource].
///
/// Covers `GET /orders/{id}/claims` (list) and
/// `POST /orders/{id}/claims` (create + error path). The single-get is P2
/// (excluded: no SPEC path) and has no test by design.
library;

import 'dart:convert';

import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/params_orders.dart';
import 'package:spree_sdk/src/resources/claims.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> claimJson() => <String, Object?>{
  'id': 'clm_001',
  'number': 'CLM-1',
  'status': 'open',
  'resolution': null,
  'order_id': 'ord_001',
  'reason_id': 'cr_001',
  'refund_total': null,
  'approved_at': null,
  'resolved_at': null,
  'denied_at': null,
  'canceled_at': null,
  'reason': <String, Object?>{
    'id': 'cr_001',
    'name': 'Missing item',
    'active': true,
  },
  'claim_line_items': <Object?>[
    <String, Object?>{
      'id': 'cli_001',
      'quantity': 1,
      'send_replacement': true,
      'description': 'box arrived empty',
      'refund_amount': null,
      'paid_amount': '89.99',
      'pre_tax_amount': null,
      'included_tax_total': null,
      'additional_tax_total': null,
      'tax_total': null,
      'variant_id': 'var_001',
      'replacement_variant_id': 'var_001',
      'line_item_id': 'li_001',
    },
  ],
};

void main() {
  group('OrderClaimsResource', () {
    test('list sends GET with list query and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrderClaimsResource resource = OrderClaimsResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[claimJson()])),
        ),
      );

      final result = await resource.list(
        'ord_001',
        query: const ListQuery(limit: 25),
        options: const RequestOptions(token: 'jwt-abc'),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/orders/ord_001/claims'
          '?limit=25',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-abc'),
      );
      expect(result.data, hasLength(1));
      final Claim parsed = result.data.single;
      expect(parsed.number, equals('CLM-1'));
      expect(parsed.status, equals(ClaimStatus.open));
      expect(parsed.reason?.name, equals('Missing item'));
      expect(parsed.claimLineItems?.single.sendReplacement, isTrue);
    });

    test('create posts line items and parses the Claim', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrderClaimsResource resource = OrderClaimsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(claimJson()),
        ),
      );
      const CreateClaimParams params = CreateClaimParams(
        items: <CreateClaimItem>[
          CreateClaimItem(
            lineItemId: 'li_001',
            quantity: 1,
            description: 'box arrived empty',
          ),
        ],
        reasonId: 'cr_001',
      );

      final Claim created = await resource.create('ord_001', params);

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/orders/ord_001/claims'),
      );
      expect(jsonDecode(calls.single.body), equals(params.toJson()));
      expect(created.id, equals('clm_001'));
      expect(created.status, equals(ClaimStatus.open));
    });

    test('create on unknown order throws 404 SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final OrderClaimsResource resource = OrderClaimsResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('not_found', 'Order not found', 404),
        ),
      );

      await expectLater(
        resource.create(
          'NOPE',
          const CreateClaimParams(
            items: <CreateClaimItem>[
              CreateClaimItem(lineItemId: 'li_001', quantity: 1),
            ],
          ),
        ),
        throwsA(
          isA<SpreeHttpError>().having((e) => e.statusCode, 'statusCode', 404),
        ),
      );
      expect(calls.single.request.method, equals('POST'));
    });
  });
}
