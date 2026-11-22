import 'package:spree_sdk/src/models/auth.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('AuthTokens', () {
    test('parses the documented superset (SPEC AuthResponse shape)', () {
      final tokens = AuthTokens.fromJson(loadFixture('auth_login.json'));

      expect(tokens.token, startsWith('eyJhbGciOi'));
      expect(tokens.refreshToken, 'synthetic-refresh-token-value');
      expect(tokens.user.id, 'cust_001');
      expect(tokens.user.email, 'sam.buyer@example.com');
      expect(tokens.user.firstName, 'Sam');
      expect(tokens.user.lastName, 'Buyer');
      expect(tokens.user.phone, '+15551234567');
      expect(tokens.user.acceptsEmailMarketing, isTrue);
      expect(
        tokens.user.emailMarketingConsentUpdatedAt,
        '2026-11-20T10:00:00.000Z',
      );
      expect(tokens.user.fullName, 'Sam Buyer');
      expect(tokens.user.availableStoreCreditTotal, isA<String>());
      expect(tokens.user.availableStoreCreditTotal, '25.00');
    });

    test('parses the narrow SDK shape (no SPEC extras)', () {
      final tokens = AuthTokens.fromJson(loadFixture('auth_login_narrow.json'));

      expect(tokens.user.id, 'cust_001');
      expect(tokens.user.firstName, isNull);
      expect(tokens.user.lastName, isNull);
      expect(tokens.user.phone, isNull);
      expect(tokens.user.acceptsEmailMarketing, isNull);
      expect(tokens.user.fullName, isNull);
      expect(tokens.user.availableStoreCreditTotal, isNull);
    });

    test('explicit nulls behave like absent keys', () {
      final fromNulls = AuthUser.fromJson(const <String, Object?>{
        'id': 'cust_001',
        'email': 'a@example.com',
        'first_name': null,
        'last_name': null,
        'phone': null,
      });
      final fromAbsent = AuthUser.fromJson(const <String, Object?>{
        'id': 'cust_001',
        'email': 'a@example.com',
      });

      expect(fromNulls.firstName, isNull);
      expect(fromAbsent.firstName, isNull);
      expect(fromNulls, equals(fromAbsent));
    });

    test('round-trips through toJson', () {
      final tokens = AuthTokens.fromJson(loadFixture('auth_login.json'));
      final reparsed = AuthTokens.fromJson(tokens.toJson());

      expect(reparsed, equals(tokens));
      expect(reparsed.toJson(), equals(tokens.toJson()));
    });
  });
}
