/// Request/response/error tests for the customer payment surfaces.
///
/// Covers credit cards (list/get/delete), gift cards (list only),
/// store credits (list only), digital links (list only) and payment setup
/// sessions (create/get/complete). The gift-card, store-credit and
/// digital-link single-gets are P2 (excluded: no SPEC item path) and have
/// no tests by design.
library;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/params_orders.dart';
import 'package:spree_sdk/src/resources/customer_payments.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> creditCardJson() => <String, Object?>{
  'id': 'cc_001',
  'brand': 'visa',
  'last4': '4242',
  'month': 12,
  'year': 2030,
  'name': 'Sam Buyer',
  'default': true,
  'gateway_payment_profile_id': 'prof_001',
  'payment_method_id': 'pm_001',
};

Map<String, Object?> paymentMethodJson() => <String, Object?>{
  'id': 'pm_stripe',
  'name': 'Stripe',
  'description': null,
  'type': 'stripe',
  'session_required': true,
  'source_required': false,
};

Map<String, Object?> setupSessionJson() => <String, Object?>{
  'id': 'pss_001',
  'status': 'pending',
  'external_id': 'seti_123',
  'external_client_secret': 'secret_abc',
  'external_data': <String, Object?>{'client': 'stripe'},
  'payment_method_id': 'pm_stripe',
  'payment_source_id': null,
  'payment_source_type': null,
  'customer_id': 'cust_001',
  'payment_method': paymentMethodJson(),
};

void main() {
  const RequestOptions jwt = RequestOptions(token: 'jwt-abc');

  group('CustomerCreditCardsResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerCreditCardsResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[creditCardJson()])),
        ),
      );

      final result = await resource.list(
        query: const ListQuery(page: 1, limit: 25),
        options: jwt,
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/credit_cards'
          '?page=1&limit=25',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-abc'),
      );
      expect(result.data.single.last4, equals('4242'));
      expect(result.data.single.isDefault, isTrue);
    });

    test('get sends GET item path and parses the card', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerCreditCardsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(creditCardJson()),
        ),
      );

      final card = await resource.get('cc_001', options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/credit_cards'
          '/cc_001',
        ),
      );
      expect(card.brand, equals('visa'));
    });

    test('delete sends DELETE and resolves on 204', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerCreditCardsResource(
        testClient(calls, (int index, request) async => http.Response('', 204)),
      );

      await resource.delete('cc_001', options: jwt);

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/credit_cards'
          '/cc_001',
        ),
      );
    });

    test('delete surfaces 401 SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerCreditCardsResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('invalid_token', 'Unauthorized', 401),
        ),
      );

      await expectLater(
        resource.delete('cc_001'),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('CustomerGiftCardsResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerGiftCardsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(
            pageOf(<Object?>[
              <String, Object?>{
                'id': 'gc_001',
                'code': 'GIFT-50',
                'status': 'active',
                'currency': 'USD',
                'amount': '50.00',
                'amount_used': '0.00',
                'amount_authorized': '0.00',
                'amount_remaining': '50.00',
                'expires_at': null,
                'redeemed_at': null,
                'expired': false,
                'active': true,
              },
            ]),
          ),
        ),
      );

      final result = await resource.list(options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/customers/me/gift_cards'),
      );
      expect(result.data.single.code, equals('GIFT-50'));
    });
  });

  group('CustomerStoreCreditsResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerStoreCreditsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(
            pageOf(<Object?>[
              <String, Object?>{
                'id': 'sc_001',
                'amount': '25.00',
                'amount_used': '0.00',
                'amount_remaining': '25.00',
                'currency': 'USD',
              },
            ]),
          ),
        ),
      );

      final result = await resource.list(
        query: const ListQuery(
          filter: <String, String>{'amount_remaining_gt': '0'},
        ),
        options: jwt,
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/store_credits'
          '?q%5Bamount_remaining_gt%5D=0',
        ),
      );
      expect(result.data.single.amountRemaining, equals('25.00'));
    });
  });

  group('CustomerDigitalLinksResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CustomerDigitalLinksResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(
            pageOf(<Object?>[
              <String, Object?>{
                'id': 'dl_001',
                'access_counter': 1,
                'filename': 'ebook.pdf',
                'content_type': 'application/pdf',
                'download_url': 'https://cdn.example.com/dl_001',
                'expires_at': null,
                'authorizable': true,
                'expired': false,
                'access_limit_exceeded': false,
              },
            ]),
          ),
        ),
      );

      final result = await resource.list(options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/digital_links',
        ),
      );
      expect(
        result.data.single.downloadUrl,
        equals('https://cdn.example.com/dl_001'),
      );
    });
  });

  group('PaymentSetupSessionsResource', () {
    test('create posts the payment method and parses the session', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = PaymentSetupSessionsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(setupSessionJson()),
        ),
      );
      const params = CreatePaymentSetupSessionParams(
        paymentMethodId: 'pm_stripe',
        externalData: <String, Object?>{'client': 'stripe'},
      );

      final session = await resource.create(params, options: jwt);

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me'
          '/payment_setup_sessions',
        ),
      );
      expect(jsonDecode(calls.single.body), equals(params.toJson()));
      expect(session.id, equals('pss_001'));
      expect(session.status, equals(PaymentSetupSessionStatus.pending));
      expect(session.paymentMethod.type, equals('stripe'));
    });

    test('get sends GET item path and parses the session', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = PaymentSetupSessionsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(setupSessionJson()),
        ),
      );

      final session = await resource.get('pss_001', options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me'
          '/payment_setup_sessions/pss_001',
        ),
      );
      expect(session.externalId, equals('seti_123'));
    });

    test('complete patches the session with completion data', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final completed = Map<String, Object?>.of(setupSessionJson())
        ..['status'] = 'completed';
      final resource = PaymentSetupSessionsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(completed),
        ),
      );

      final session = await resource.complete(
        'pss_001',
        params: const CompletePaymentSetupSessionParams(
          externalData: <String, Object?>{'token': 'tok_123'},
        ),
        options: jwt,
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me'
          '/payment_setup_sessions/pss_001/complete',
        ),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{
          'external_data': <String, Object?>{'token': 'tok_123'},
        }),
      );
      expect(session.status, equals(PaymentSetupSessionStatus.completed));
    });

    test('complete without params sends no body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = PaymentSetupSessionsResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(setupSessionJson()),
        ),
      );

      await resource.complete('pss_001', options: jwt);

      expect(calls.single.request.method, equals('PATCH'));
      expect(calls.single.body, isEmpty);
    });

    test('create surfaces 422 SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = PaymentSetupSessionsResource(
        testClient(
          calls,
          (int index, request) async => errorResponse(
            'unprocessable_entity',
            'Payment method not supported',
            422,
          ),
        ),
      );

      await expectLater(
        resource.create(
          const CreatePaymentSetupSessionParams(paymentMethodId: 'pm_nope'),
        ),
        throwsA(
          isA<SpreeHttpError>().having((e) => e.statusCode, 'statusCode', 422),
        ),
      );
    });
  });
}
