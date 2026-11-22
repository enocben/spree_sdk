/// Request/response/error tests for the B2B company surfaces.
///
/// Covers `GET /account/companies`, company get/update, addresses
/// list/create/update/delete, members list/create, invitations
/// list/delete, company orders list and invitation lookup/accept.
/// Member removal and member-side invitation revoke are P2 (excluded: no
/// SPEC path) and have no tests by design.
library;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/models/meta.dart';
import 'package:spree_sdk/src/models/params_orders.dart';
import 'package:spree_sdk/src/resources/companies.dart';
import 'package:spree_sdk/src/transport/request_options.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> companyJson() => <String, Object?>{
  'id': 'comp_001',
  'name': 'Acme',
  'kind': 'company',
  'po_number_required': false,
  'parent_id': null,
  'ancestors': <Object?>[],
};

Map<String, Object?> accountCompanyJson() => <String, Object?>{
  'id': 'cm_001',
  'company_id': 'comp_001',
  'customer_id': 'cust_001',
  'email': 'sam.buyer@example.com',
  'company': companyJson(),
};

Map<String, Object?> addressJson() => <String, Object?>{
  'id': 'addr_001',
  'label': 'HQ',
  'first_name': 'Sam',
  'last_name': 'Buyer',
  'full_name': 'Sam Buyer',
  'address1': '12 Market Street',
  'address2': null,
  'postal_code': '94105',
  'city': 'San Francisco',
  'phone': null,
  'company': 'Acme',
  'country_name': 'United States',
  'country_code': 'US',
  'state_text': null,
  'state_code': 'CA',
  'quick_checkout': false,
  'is_default_billing': true,
  'is_default_shipping': true,
  'state_abbr': null,
  'country_iso': 'US',
  'state_name': null,
  'owner': null,
};

Map<String, Object?> membershipJson() => <String, Object?>{
  'id': 'cm_001',
  'company_id': 'comp_001',
  'customer_id': 'cust_001',
  'email': 'sam.buyer@example.com',
};

Map<String, Object?> invitationJson() => <String, Object?>{
  'id': 'ci_001',
  'email': 'new.hire@example.com',
  'expires_at': '2026-12-01T00:00:00.000Z',
  'company_id': 'comp_001',
  'status': 'pending',
};

void main() {
  const RequestOptions jwt = RequestOptions(token: 'jwt-abc');

  group('AccountCompaniesResource', () {
    test('list sends GET and parses the bare data envelope', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = AccountCompaniesResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(<String, Object?>{
            'data': <Object?>[accountCompanyJson()],
          }),
        ),
      );

      final entries = await resource.list(options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/account/companies'),
      );
      expect(
        calls.single.request.headers['authorization'],
        equals('Bearer jwt-abc'),
      );
      expect(entries, hasLength(1));
      expect(entries.single.company.name, equals('Acme'));
      expect(entries.single.membership.customerId, equals('cust_001'));
    });
  });

  group('CompaniesResource', () {
    test('get sends GET and parses the company', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompaniesResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(companyJson()),
        ),
      );

      final company = await resource.get('comp_001', options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/companies/comp_001'),
      );
      expect(company.kind, equals(CompanyKind.company));
      expect(company.poNumberRequired, isFalse);
    });

    test('update patches the company body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final updated = Map<String, Object?>.of(companyJson())
        ..['name'] = 'Acme Inc';
      final resource = CompaniesResource(
        testClient(calls, (int index, request) async => jsonResponse(updated)),
      );

      final company = await resource.update(
        'comp_001',
        const UpdateCompanyParams(name: 'Acme Inc'),
        options: jwt,
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals('https://api.mystore.com/api/v3/store/companies/comp_001'),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{'name': 'Acme Inc'}),
      );
      expect(company.name, equals('Acme Inc'));
    });
  });

  group('CompanyAddressesResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyAddressesResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[addressJson()])),
        ),
      );

      final result = await resource.list('comp_001', options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/addresses',
        ),
      );
      expect(result.data.single.city, equals('San Francisco'));
    });

    test('create posts the address body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyAddressesResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(addressJson()),
        ),
      );
      const params = CompanyAddressCreateParams(
        firstName: 'Sam',
        lastName: 'Buyer',
        address1: '12 Market Street',
        city: 'San Francisco',
        postalCode: '94105',
        countryCode: CountryCode.us,
        defaultBilling: true,
        defaultShipping: true,
      );

      final address = await resource.create('comp_001', params, options: jwt);

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/addresses',
        ),
      );
      expect(
        (jsonDecode(calls.single.body) as Map)['country_code'],
        equals('US'),
      );
      expect(address.id, equals('addr_001'));
    });

    test('update patches the address body', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyAddressesResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(addressJson()),
        ),
      );

      final address = await resource.update(
        'comp_001',
        'addr_001',
        const CompanyAddressUpdateParams(city: 'Oakland'),
        options: jwt,
      );

      expect(calls.single.request.method, equals('PATCH'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/addresses'
          '/addr_001',
        ),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{'city': 'Oakland'}),
      );
      expect(address.city, equals('San Francisco'));
    });

    test('delete sends DELETE and resolves on 204', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyAddressesResource(
        testClient(calls, (int index, request) async => http.Response('', 204)),
      );

      await resource.delete('comp_001', 'addr_001', options: jwt);

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/addresses'
          '/addr_001',
        ),
      );
    });
  });

  group('CompanyMembersResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyMembersResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[membershipJson()])),
        ),
      );

      final result = await resource.list(
        'comp_001',
        query: const ListQuery(page: 1, limit: 25),
        options: jwt,
      );

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/members'
          '?page=1&limit=25',
        ),
      );
      expect(result.data.single.email, equals('sam.buyer@example.com'));
    });

    test('create invites by email and parses the invitation', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyMembersResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(invitationJson()),
        ),
      );

      final invitation = await resource.create(
        'comp_001',
        const AddCompanyMemberParams(customerEmail: 'new.hire@example.com'),
        options: jwt,
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/members',
        ),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{'customer_email': 'new.hire@example.com'}),
      );
      expect(invitation.status, equals(CompanyInvitationStatus.pending));
    });

    test('list 403 surfaces SpreeAuthError', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyMembersResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('forbidden', 'No standing', 403),
        ),
      );

      await expectLater(
        resource.list('comp_001'),
        throwsA(isA<SpreeAuthError>()),
      );
    });
  });

  group('CompanyInvitationsResource', () {
    test('list sends GET and parses a page', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyInvitationsResource(
        testClient(
          calls,
          (int index, request) async =>
              jsonResponse(pageOf(<Object?>[invitationJson()])),
        ),
      );

      final result = await resource.list('comp_001', options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001'
          '/invitations',
        ),
      );
      expect(result.data.single.email, equals('new.hire@example.com'));
    });

    test('delete sends DELETE and resolves on 204', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyInvitationsResource(
        testClient(calls, (int index, request) async => http.Response('', 204)),
      );

      await resource.delete('comp_001', 'ci_001', options: jwt);

      expect(calls.single.request.method, equals('DELETE'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001'
          '/invitations/ci_001',
        ),
      );
    });
  });

  group('CompanyOrdersResource', () {
    test('list sends GET and parses a page of orders', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyOrdersResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(
            pageOf(<Object?>[
              <String, Object?>{
                'number': 'R010',
                'email': 'ops@example.com',
                'currency': 'USD',
                'total_quantity': 1,
                'covered_by_store_credit': false,
                'payments': <Object?>[],
                'discounts': <Object?>[],
                'fees': <Object?>[],
                'items': <Object?>[],
                'fulfillments': <Object?>[],
                'within_withdrawal_period': false,
                'shipping_eq_billing_address': true,
              },
            ]),
          ),
        ),
      );

      final result = await resource.list('comp_001', options: jwt);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/companies/comp_001/orders',
        ),
      );
      expect(result.data.single.number, equals('R010'));
    });
  });

  group('CompanyInvitationTokenResource', () {
    test('lookup sends GET by token and parses context', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyInvitationTokenResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(<String, Object?>{
            ...invitationJson(),
            'company_name': 'Acme',
            'store_name': 'Main store',
          }),
        ),
      );

      final lookup = await resource.lookup('tok_invite_001');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/company_invitations'
          '/tok_invite_001',
        ),
      );
      // No credentials attached: the token is the credential.
      expect(
        calls.single.request.headers.containsKey('authorization'),
        isFalse,
      );
      expect(lookup.companyName, equals('Acme'));
      expect(lookup.storeName, equals('Main store'));
      expect(lookup.invitation.status, equals(CompanyInvitationStatus.pending));
    });

    test('accept with payload posts the payload', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyInvitationTokenResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(membershipJson()),
        ),
      );

      final membership = await resource.accept(
        'tok_invite_001',
        params: const AcceptCompanyInvitationParams(
          firstName: 'New',
          lastName: 'Hire',
          password: 's3cret!',
          passwordConfirmation: 's3cret!',
        ),
      );

      expect(calls.single.request.method, equals('POST'));
      expect(
        calls.single.request.url.toString(),
        equals(
          'https://api.mystore.com/api/v3/store/company_invitations'
          '/tok_invite_001/accept',
        ),
      );
      expect(
        jsonDecode(calls.single.body),
        equals(<String, Object?>{
          'first_name': 'New',
          'last_name': 'Hire',
          'password': 's3cret!',
          'password_confirmation': 's3cret!',
        }),
      );
      expect(membership.companyId, equals('comp_001'));
    });

    test('accept without payload posts an empty object', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyInvitationTokenResource(
        testClient(
          calls,
          (int index, request) async => jsonResponse(membershipJson()),
        ),
      );

      await resource.accept('tok_invite_001', options: jwt);

      expect(calls.single.request.method, equals('POST'));
      expect(jsonDecode(calls.single.body), equals(<String, Object?>{}));
    });

    test('accept on revoked token throws 422', () async {
      final List<CapturedCall> calls = <CapturedCall>[];
      final resource = CompanyInvitationTokenResource(
        testClient(
          calls,
          (int index, request) async =>
              errorResponse('unprocessable_entity', 'Invitation revoked', 422),
        ),
      );

      await expectLater(
        resource.accept('tok_revoked'),
        throwsA(
          isA<SpreeHttpError>().having((e) => e.statusCode, 'statusCode', 422),
        ),
      );
    });
  });
}
