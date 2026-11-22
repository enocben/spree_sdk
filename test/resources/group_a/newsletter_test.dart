/// Phase 05 group A — newsletter resource tests.
///
/// Covers one test per operation (method, URL, query, headers, body,
/// response) plus 401/403/422 error paths. Contracts:
/// `doc/research/store-api-contract.md` §6,
/// `doc/research/authentication-flows.md` §K.
library;

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/customer.dart' show NewsletterSubscriber;
import 'package:spree_sdk/src/resources/newsletter.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  group('NewsletterResource.subscribe POST /newsletter_subscribers', () {
    test('forwards the optional JWT and parses the subscriber', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(subscriberFixture()),
      );
      addTearDown(client.close);

      final NewsletterSubscriber sub = await NewsletterResource(client)
          .subscribe(
            params: const NewsletterSubscribeParams(
              email: 'sam.buyer@example.com',
            ),
            options: const RequestOptions(token: 'customer-jwt'),
          );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/newsletter_subscribers'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'email': 'sam.buyer@example.com'}),
      );
      expect(sub.id, equals('ns_001'));
      expect(sub.verified, isTrue);
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('unprocessable_entity', 'Email is invalid', 422),
      );
      addTearDown(client.close);

      expect(
        NewsletterResource(client)
            .subscribe(params: const NewsletterSubscribeParams(email: 'bad')),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });

  group('NewsletterResource.verify POST /newsletter_subscribers/verify', () {
    test('sends the token KEY-only and parses the subscriber', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(subscriberFixture()),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final NewsletterSubscriber sub = await NewsletterResource(
        client,
      ).verify(params: const NewsletterVerifyParams(token: 'verify-token-123'));

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/newsletter_subscribers/verify',
        ),
      );
      // KEY-only: the configured provider JWT must NOT be attached.
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'token': 'verify-token-123'}),
      );
      expect(sub.verified, isTrue);
    });

    test('401 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Missing API key', 401),
      );
      addTearDown(client.close);

      expect(
        NewsletterResource(client)
            .verify(params: const NewsletterVerifyParams(token: 't')),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('NewsletterResource.requestUnsubscribe '
      'POST /newsletter_subscribers/request_unsubscribe', () {
    test('sends email KEY-only and yields void on 202', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => http.Response('', 202),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      await NewsletterResource(client).requestUnsubscribe(
        params: const NewsletterUnsubscribeRequestParams(
          email: 'sam.buyer@example.com',
        ),
      );

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/'
          'newsletter_subscribers/request_unsubscribe',
        ),
      );
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'email': 'sam.buyer@example.com'}),
      );
    });

    test('403 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('forbidden', 'Forbidden', 403),
      );
      addTearDown(client.close);

      expect(
        NewsletterResource(client).requestUnsubscribe(
          params: const NewsletterUnsubscribeRequestParams(email: 'a@b.c'),
        ),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('NewsletterResource.delete DELETE /newsletter_subscribers/{id}', () {
    test('sends JWT deletion without query', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => http.Response('', 204),
      );
      addTearDown(client.close);

      await NewsletterResource(
        client,
      ).delete('ns_001', options: const RequestOptions(token: 'customer-jwt'));

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/newsletter_subscribers/ns_001',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
    });

    test('sends email-link token as ?token= query', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => http.Response('', 204),
      );
      addTearDown(client.close);

      await NewsletterResource(client).delete('ns_001', token: 'email-token');

      expect(calls, hasLength(1));
      final Uri url = calls.single.request.url;
      expect(url.path, equals('/api/v3/store/newsletter_subscribers/ns_001'));
      expect(url.queryParameters['token'], equals('email-token'));
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => errorResponse(
          'unprocessable_entity',
          'Subscription cannot be removed',
          422,
        ),
      );
      addTearDown(client.close);

      expect(
        NewsletterResource(client).delete('ns_001', token: 'email-token'),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });
}
