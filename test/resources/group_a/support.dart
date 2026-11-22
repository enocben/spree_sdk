/// Shared scripted-HTTP helpers for Phase 05 group A resource tests.
///
/// Every test builds a [SpreeClient] over a [MockClient] whose handler is
/// chosen by call index, captures the outgoing request (method, URL,
/// headers, body) and answers with canned responses. No test touches the
/// network or production services (AGENTS.md §8).
library;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/auth/provider.dart';
import 'package:spree_sdk/src/client.dart';

/// One captured outgoing request.
class CapturedCall {
  /// Creates a captured call record.
  CapturedCall(this.request, this.body);

  /// The outgoing request (method, URL, headers).
  final http.BaseRequest request;

  /// The outgoing body text (`''` when none).
  final String body;

  /// Decodes the captured body as a JSON object.
  Map<String, Object?> jsonBody() => jsonDecode(body) as Map<String, Object?>;
}

/// Builds a [SpreeClient] whose HTTP layer appends each outgoing request
/// to [calls] and answers via [handler] (selected by zero-based call
/// index). A [token] installs a stub JWT provider to prove which
/// operations do (and do not) forward credentials.
SpreeClient scriptedGroupAClient(
  List<CapturedCall> calls,
  Future<http.Response> Function(int index, http.BaseRequest request) handler, {
  String? token,
}) {
  var index = 0;
  return SpreeClient(
    baseUrl: Uri.parse('https://api.mystore.com'),
    publishableKey: 'pk_test_123',
    authProvider: token == null ? null : _StubProvider(token),
    httpClient: MockClient((http.BaseRequest request) async {
      String body = '';
      if (request is http.Request) {
        body = request.body;
      }
      final int current = index;
      index++;
      calls.add(CapturedCall(request, body));
      return handler(current, request);
    }),
  );
}

/// Minimal [AuthTokenProvider] stub counting its invocations.
class StubProvider extends AuthTokenProvider {
  /// Creates a stub returning [token].
  StubProvider(this.token);

  /// Token returned by [getToken].
  final String? token;

  /// Number of [getToken] calls observed.
  int getCalls = 0;

  @override
  Future<String?> getToken() async {
    getCalls++;
    return token;
  }

  @override
  Future<String?> refreshToken() async => null;
}

class _StubProvider extends AuthTokenProvider {
  _StubProvider(this.token);

  final String? token;

  @override
  Future<String?> getToken() async => token;

  @override
  Future<String?> refreshToken() async => null;
}

/// Builds a JSON response with [status].
http.Response jsonResponse(Object? body, [int status = 200]) {
  return http.Response(
    jsonEncode(body),
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

/// Builds a `{error: {code, message}}` failure response with [status].
http.Response errorResponse(String code, String message, int status) {
  return jsonResponse(<String, Object?>{
    'error': <String, Object?>{'code': code, 'message': message},
  }, status);
}

/// Synthetic auth tokens payload (narrow SDK shape + SPEC-documented
/// extras, mirroring `test/models/fixtures/auth_login.json`).
Map<String, Object?> authTokensFixture() => <String, Object?>{
  'token': 'jwt-access-token',
  'refresh_token': 'synthetic-refresh-token-value',
  'user': <String, Object?>{
    'id': 'cust_001',
    'email': 'sam.buyer@example.com',
    'first_name': 'Sam',
    'last_name': 'Buyer',
    'phone': '+155****4567',
    'accepts_email_marketing': true,
    'email_marketing_consent_updated_at': '2026-11-20T10:00:00.000Z',
    'full_name': 'Sam Buyer',
    'available_store_credit_total': '25.00',
  },
};

/// Synthetic customer payload (mirrors
/// `test/models/fixtures/customer_minimal.json`).
Map<String, Object?> customerFixture() => <String, Object?>{
  'id': 'cust_002',
  'email': 'new.shopper@example.com',
  'first_name': null,
  'last_name': null,
  'phone': null,
  'accepts_email_marketing': false,
  'email_marketing_consent_updated_at': null,
  'full_name': 'new.shopper@example.com',
  'available_store_credit_total': '0.00',
  'addresses': <Object?>[],
  'default_billing_address': null,
  'default_shipping_address': null,
  'newsletter_subscriber': null,
  'customer_groups': <Object?>[],
};

/// Synthetic address payload (mirrors the address entry in
/// `test/models/fixtures/customer_full.json`).
Map<String, Object?> addressFixture() => <String, Object?>{
  'id': 'addr_001',
  'label': 'Home',
  'first_name': 'Sam',
  'last_name': 'Buyer',
  'full_name': 'Sam Buyer',
  'address1': '12 Market Street',
  'address2': null,
  'postal_code': '94105',
  'city': 'San Francisco',
  'phone': null,
  'company': null,
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

/// Synthetic newsletter-subscriber payload.
Map<String, Object?> subscriberFixture() => <String, Object?>{
  'id': 'ns_001',
  'email': 'sam.buyer@example.com',
  'created_at': '2026-11-19T00:00:00.000Z',
  'updated_at': '2026-11-19T01:00:00.000Z',
  'verified': true,
  'verified_at': '2026-11-19T01:00:00.000Z',
  'customer_id': 'cust_001',
};

/// Synthetic GDPR data-request payload.
Map<String, Object?> dataRequestFixture() => <String, Object?>{
  'id': 'dr_001',
  'type': 'export',
  'status': 'awaiting_confirmation',
  'email': 'sam.buyer@example.com',
  'created_at': '2026-11-21T00:00:00.000Z',
  'updated_at': '2026-11-21T00:00:00.000Z',
};

/// Synthetic paginated envelope for [items].
Map<String, Object?> pageFixture(List<Object?> items) => <String, Object?>{
  'data': items,
  'meta': <String, Object?>{
    'page': 1,
    'limit': 25,
    'count': items.length,
    'pages': 1,
  },
};
