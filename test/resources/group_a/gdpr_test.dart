/// Phase 05 group A — GDPR data-request resource tests.
///
/// Covers one test per operation (method, URL, query, headers, body,
/// response) plus 401/403/422 error paths. Contracts:
/// `docs/research/store-api-contract.md` §§7–8,
/// `docs/research/authentication-flows.md` §I (double opt-in; the token
/// endpoints carry no credential because the path token IS the credential).
library;

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/pagination.dart';
import 'package:spree_sdk/src/resources/gdpr.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

const RequestOptions _jwt = RequestOptions(token: 'customer-jwt');

void main() {
  group('GdprResource.list GET /customers/me/data_requests', () {
    test('sends pagination query with JWT and parses the page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(pageFixture(<Object?>[dataRequestFixture()])),
      );
      addTearDown(client.close);

      final PaginatedResponse<DataRequest> page = await GdprResource(client)
          .list(list: const ListQuery(page: 1, limit: 25), options: _jwt);

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      final Uri url = calls.single.request.url;
      expect(url.path, equals('/api/v3/store/customers/me/data_requests'));
      expect(url.queryParameters['page'], equals('1'));
      expect(url.queryParameters['limit'], equals('25'));
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(page.data, hasLength(1));
      expect(page.data.single.status, equals('awaiting_confirmation'));
    });

    test('401 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Unauthorized', 401),
      );
      addTearDown(client.close);

      expect(GdprResource(client).list(), throwsA(isA<SpreeAuthError>()));
    });
  });

  group('GdprResource.get GET /customers/me/data_requests/{id}', () {
    test('fetches one request with JWT and no download link', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(dataRequestFixture()),
      );
      addTearDown(client.close);

      final DataRequest req = await GdprResource(client)
          .get('dr_001', options: _jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/data_requests/dr_001',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(req.id, equals('dr_001'));
      expect(req.downloadUrl, isNull);
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
        GdprResource(client).get('dr_001', options: _jwt),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('GdprResource.create POST /customers/me/data_requests', () {
    test('sends the create body with JWT', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(dataRequestFixture()),
      );
      addTearDown(client.close);

      final DataRequest req = await GdprResource(client).create(
        params: const CreateDataRequestParams(
          type: 'export',
          redirectUrl: 'https://shop.example.com/gdpr',
        ),
        options: _jwt,
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/data_requests',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{
          'type': 'export',
          'redirect_url': 'https://shop.example.com/gdpr',
        }),
      );
      expect(req.status, equals('awaiting_confirmation'));
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => errorResponse(
          'unprocessable_entity',
          'Current password is required for erasure',
          422,
        ),
      );
      addTearDown(client.close);

      expect(
        GdprResource(client).create(
          params: const CreateDataRequestParams(type: 'erasure'),
          options: _jwt,
        ),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });

  group('GdprResource.getByToken GET /data_requests/{token}', () {
    test('sends no credential and parses the download link', () async {
      final Map<String, Object?> ready = dataRequestFixture()
        ..['download_url'] = 'https://cdn.example.com/exports/dr_001.zip';
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => jsonResponse(ready),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final DataRequest req = await GdprResource(client).getByToken('tok-1');

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/data_requests/tok-1'),
      );
      // The path token is the credential: no Authorization, even with a
      // configured provider.
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(
        req.downloadUrl,
        equals('https://cdn.example.com/exports/dr_001.zip'),
      );
    });

    test('401 surfaces SpreeAuthError for an unknown token', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Not found', 401),
      );
      addTearDown(client.close);

      expect(
        GdprResource(client).getByToken('stale'),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('GdprResource.confirm POST /data_requests/{token}/confirmation', () {
    test('confirms with no credential and parses the request', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(dataRequestFixture()),
        token: 'provider-jwt',
      );
      addTearDown(client.close);

      final DataRequest req = await GdprResource(client).confirm('tok-1');

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/data_requests/tok-1/confirmation',
        ),
      );
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(calls.single.body, isEmpty);
      expect(req.id, equals('dr_001'));
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => errorResponse(
          'unprocessable_entity',
          'Request already confirmed',
          422,
        ),
      );
      addTearDown(client.close);

      expect(
        GdprResource(client).confirm('tok-1'),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });
}
