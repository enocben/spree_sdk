/// Phase 05 group A — customer account + address-book tests.
///
/// Covers one test per operation (method, URL, query, headers, body,
/// response) plus 401/403/422 error paths. Contracts:
/// `doc/research/store-api-contract.md` §7,
/// `doc/research/authentication-flows.md` §3 (all ops KEY+JWT).
library;

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/customer.dart';
import 'package:spree_sdk/src/pagination.dart';
import 'package:spree_sdk/src/resources/customers.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

const RequestOptions _jwt = RequestOptions(token: 'customer-jwt');

void main() {
  group('CustomerResource.get GET /customers/me', () {
    test('forwards the JWT and parses the Customer', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(customerFixture()),
      );
      addTearDown(client.close);

      final Customer me = await CustomerResource(client).get(options: _jwt);

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/customers/me'),
      );
      expect(calls.single.request.headers['x-spree-api-key'], isNotNull);
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(me.id, equals('cust_002'));
      expect(me.addresses, isEmpty);
    });

    test('401 surfaces SpreeAuthError without a JWT', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Unauthorized', 401),
      );
      addTearDown(client.close);

      expect(
        CustomerResource(client).get(),
        throwsA(
          isA<SpreeAuthError>().having((e) => e.statusCode, 'status', 401),
        ),
      );
    });
  });

  group('CustomerResource.update PATCH /customers/me', () {
    test('sends the update body with JWT and parses the Customer', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(customerFixture()),
      );
      addTearDown(client.close);

      final Customer me = await CustomerResource(client).update(
        params: const UpdateCustomerParams(firstName: 'Sam', phone: '+1'),
        options: _jwt,
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/customers/me'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{'first_name': 'Sam', 'phone': '+1'}),
      );
      expect(me.id, equals('cust_002'));
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
        CustomerResource(client)
            .update(params: const UpdateCustomerParams(), options: _jwt),
        throwsA(
          isA<SpreeAuthError>().having((e) => e.statusCode, 'status', 403),
        ),
      );
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('unprocessable_entity', 'Phone is invalid', 422),
      );
      addTearDown(client.close);

      expect(
        CustomerResource(client)
            .update(params: const UpdateCustomerParams(), options: _jwt),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });

  group('CustomerAddressesResource.list GET /customers/me/addresses', () {
    test('sends pagination query with JWT and parses the page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(pageFixture(<Object?>[addressFixture()])),
      );
      addTearDown(client.close);

      final PaginatedResponse<Address> page = await CustomerResource(client)
          .addresses
          .list(list: const ListQuery(page: 2, limit: 10), options: _jwt);

      expect(calls, hasLength(1));
      expect(calls.single.request.method, equals('GET'));
      final Uri url = calls.single.request.url;
      expect(url.path, equals('/api/v3/store/customers/me/addresses'));
      expect(url.queryParameters['page'], equals('2'));
      expect(url.queryParameters['limit'], equals('10'));
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(page.data, hasLength(1));
      expect(page.data.single.id, equals('addr_001'));
      expect(page.meta.page, equals(1));
    });

    test('401 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            errorResponse('invalid_token', 'Unauthorized', 401),
      );
      addTearDown(client.close);

      expect(
        CustomerResource(client).addresses.list(),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('CustomerAddressesResource.get GET /customers/me/addresses/{id}', () {
    test('fetches one address with JWT', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(addressFixture()),
      );
      addTearDown(client.close);

      final Address address = await CustomerResource(client).addresses
          .get('addr_001', options: _jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/customers/me/addresses/addr_001',
        ),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(address.fullName, equals('Sam Buyer'));
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
        CustomerResource(client).addresses.get('addr_001', options: _jwt),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('CustomerAddressesResource.create POST /customers/me/addresses', () {
    test('sends the address body with JWT', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async =>
            jsonResponse(addressFixture()),
      );
      addTearDown(client.close);

      final Address created = await CustomerResource(client).addresses.create(
        params: const AddressParams(
          firstName: 'Sam',
          city: 'San Francisco',
          countryIso: 'US',
        ),
        options: _jwt,
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/customers/me/addresses'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer customer-jwt'),
      );
      expect(
        calls.single.jsonBody(),
        equals(<String, Object?>{
          'first_name': 'Sam',
          'city': 'San Francisco',
          'country_iso': 'US',
        }),
      );
      expect(created.id, equals('addr_001'));
    });

    test('422 surfaces SpreeHttpError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final client = scriptedGroupAClient(
        calls,
        (int index, http.BaseRequest request) async => errorResponse(
          'unprocessable_entity',
          'Address1 can\'t be blank',
          422,
        ),
      );
      addTearDown(client.close);

      expect(
        CustomerResource(client).addresses
            .create(params: const AddressParams(), options: _jwt),
        throwsA(isA<SpreeHttpError>().having((e) => e.statusCode, 's', 422)),
      );
    });
  });

  group(
    'CustomerAddressesResource.update PATCH /customers/me/addresses/{id}',
    () {
      test('sends the partial body with JWT', () async {
        final List<CapturedCall> calls = <CapturedCall>[];
        final client = scriptedGroupAClient(
          calls,
          (int index, http.BaseRequest request) async =>
              jsonResponse(addressFixture()),
        );
        addTearDown(client.close);

        final Address updated = await CustomerResource(client).addresses.update(
          'addr_001',
          params: const AddressParams(city: 'Oakland'),
          options: _jwt,
        );

        expect(calls.single.request.method, equals('PATCH'));
        expect(
          calls.single.request.url.toString(),
          equals(
            'https://api.mystore.com/api/v3/store/customers/me/addresses/addr_001',
          ),
        );
        expect(
          calls.single.jsonBody(),
          equals(<String, Object?>{'city': 'Oakland'}),
        );
        expect(updated.id, equals('addr_001'));
      });

      test('401 surfaces SpreeAuthError', () async {
        final List<CapturedCall> calls = <CapturedCall>[];
        final client = scriptedGroupAClient(
          calls,
          (int index, http.BaseRequest request) async =>
              errorResponse('invalid_token', 'Unauthorized', 401),
        );
        addTearDown(client.close);

        expect(
          CustomerResource(client).addresses
              .update('addr_001', params: const AddressParams(city: 'Oakland')),
          throwsA(isA<SpreeAuthError>()),
        );
      });
    },
  );

  group(
    'CustomerAddressesResource.delete DELETE /customers/me/addresses/{id}',
    () {
      test('deletes with JWT and yields void on 204', () async {
        final List<CapturedCall> calls = <CapturedCall>[];
        final client = scriptedGroupAClient(
          calls,
          (int index, http.BaseRequest request) async => http.Response('', 204),
        );
        addTearDown(client.close);

        await CustomerResource(client).addresses
            .delete('addr_001', options: _jwt);

        expect(calls.single.request.method, equals('DELETE'));
        expect(
          calls.single.request.url.toString(),
          equals(
            'https://api.mystore.com/api/v3/store/customers/me/addresses/addr_001',
          ),
        );
        expect(
          calls.single.request.headers['authorization'],
          equals('Bearer customer-jwt'),
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
          CustomerResource(client).addresses.delete('addr_001', options: _jwt),
          throwsA(isA<SpreeAuthError>()),
        );
      });
    },
  );
}
