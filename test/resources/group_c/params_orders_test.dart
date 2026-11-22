/// Serialization tests for the group-C models in `params_orders.dart`.
///
/// Covers request-body shapes (`toJson` omits nulls, uses wire keys) and
/// response round-trips (`fromJson` → `toJson`), plus enum fallback rules.
library;

import 'package:spree_sdk/src/models/meta.dart';
import 'package:spree_sdk/src/models/params_orders.dart';
import 'package:test/test.dart';

void main() {
  group('return params', () {
    test('CreateReturnParams serializes items with wire keys', () {
      const params = CreateReturnParams(
        items: <CreateReturnItem>[
          CreateReturnItem(fulfillmentItemId: 'fi_001', quantity: 2),
        ],
        reasonId: 'rr_001',
        memo: 'cracked',
      );

      expect(
        params.toJson(),
        equals(<String, Object?>{
          'items': <Object?>[
            <String, Object?>{'fulfillment_item_id': 'fi_001', 'quantity': 2},
          ],
          'reason_id': 'rr_001',
          'memo': 'cracked',
        }),
      );
    });

    test('CreateReturnParams omits nulls', () {
      const params = CreateReturnParams(
        items: <CreateReturnItem>[
          CreateReturnItem(fulfillmentItemId: 'fi_001', quantity: 1),
        ],
      );

      expect(
        params.toJson(),
        equals(<String, Object?>{
          'items': <Object?>[
            <String, Object?>{'fulfillment_item_id': 'fi_001', 'quantity': 1},
          ],
        }),
      );
    });

    test('Return round-trips with nested reason and line items', () {
      final json = _returnJson();
      final parsed = Return.fromJson(json);

      expect(parsed.status, equals(ReturnStatus.requested));
      expect(parsed.reason?.active, isTrue);
      expect(
        parsed.returnLineItems?.single.fulfillmentItemId,
        equals('fi_001'),
      );
      expect(Return.fromJson(parsed.toJson()), equals(parsed));
    });

    test('ReturnStatus falls back to unknown', () {
      expect(ReturnStatus.fromJson('teleported'), equals(ReturnStatus.unknown));
      expect(ReturnStatus.fromJson(null), equals(ReturnStatus.unknown));
    });
  });

  group('claim params', () {
    test('CreateClaimParams serializes items with wire keys', () {
      const params = CreateClaimParams(
        items: <CreateClaimItem>[
          CreateClaimItem(
            lineItemId: 'li_001',
            quantity: 1,
            description: 'empty box',
          ),
        ],
        reasonId: 'cr_001',
      );

      expect(
        params.toJson(),
        equals(<String, Object?>{
          'items': <Object?>[
            <String, Object?>{
              'line_item_id': 'li_001',
              'quantity': 1,
              'description': 'empty box',
            },
          ],
          'reason_id': 'cr_001',
        }),
      );
    });

    test('Claim round-trips with nested reason and line items', () {
      final json = _claimJson();
      final parsed = Claim.fromJson(json);

      expect(parsed.status, equals(ClaimStatus.open));
      expect(parsed.resolution, isNull);
      expect(parsed.claimLineItems?.single.sendReplacement, isTrue);
      expect(Claim.fromJson(parsed.toJson()), equals(parsed));
    });

    test('ClaimResolution parses every documented value', () {
      expect(
        ClaimResolution.fromJson('refund_and_replacement'),
        equals(ClaimResolution.refundAndReplacement),
      );
      expect(
        () => ClaimResolution.fromJson('store_credit'),
        throwsArgumentError,
      );
    });
  });

  group('customer payment models', () {
    test('CreditCard round-trips', () {
      final json = <String, Object?>{
        'id': 'cc_001',
        'brand': 'visa',
        'last4': '4242',
        'month': 12,
        'year': 2030,
        'name': null,
        'default': false,
        'gateway_payment_profile_id': null,
        'payment_method_id': 'pm_001',
      };
      final parsed = CreditCard.fromJson(json);

      expect(parsed.isDefault, isFalse);
      expect(CreditCard.fromJson(parsed.toJson()), equals(parsed));
    });

    test('PaymentSetupSession round-trips with method and external data', () {
      final json = <String, Object?>{
        'id': 'pss_001',
        'status': 'processing',
        'external_id': null,
        'external_client_secret': null,
        'external_data': <String, Object?>{'client': 'stripe'},
        'payment_method_id': 'pm_stripe',
        'payment_source_id': null,
        'payment_source_type': null,
        'customer_id': null,
        'payment_method': <String, Object?>{
          'id': 'pm_stripe',
          'name': 'Stripe',
          'description': null,
          'type': 'stripe',
          'session_required': true,
          'source_required': false,
        },
      };
      final parsed = PaymentSetupSession.fromJson(json);

      expect(parsed.status, equals(PaymentSetupSessionStatus.processing));
      expect(parsed.paymentMethod.sessionRequired, isTrue);
      expect(PaymentSetupSession.fromJson(parsed.toJson()), equals(parsed));
    });

    test('PaymentSetupSessionStatus falls back to unknown', () {
      expect(
        PaymentSetupSessionStatus.fromJson('weird'),
        equals(PaymentSetupSessionStatus.unknown),
      );
    });

    test('setup session params omit null external data', () {
      expect(
        const CreatePaymentSetupSessionParams(paymentMethodId: 'pm_stripe')
            .toJson(),
        equals(<String, Object?>{'payment_method_id': 'pm_stripe'}),
      );
      expect(
        const CompletePaymentSetupSessionParams().toJson(),
        equals(<String, Object?>{}),
      );
    });
  });

  group('wishlist params and models', () {
    test('wishlist params use wire keys and omit nulls', () {
      expect(
        const CreateWishlistParams(name: 'Bday').toJson(),
        equals(<String, Object?>{'name': 'Bday'}),
      );
      expect(
        const UpdateWishlistParams(isPrivate: true).toJson(),
        equals(<String, Object?>{'is_private': true}),
      );
      expect(
        const CreateWishlistItemParams(variantId: 'v1').toJson(),
        equals(<String, Object?>{'variant_id': 'v1'}),
      );
      expect(
        const UpdateWishlistItemParams(quantity: 3).toJson(),
        equals(<String, Object?>{'quantity': 3}),
      );
    });

    test('Wishlist and WishlistItem round-trip', () {
      final wishlist = Wishlist.fromJson(<String, Object?>{
        'id': 'wl_001',
        'name': 'Bday',
        'token': 'tok_1',
        'is_default': false,
        'is_private': true,
        'items': <Object?>[
          <String, Object?>{
            'id': 'wli_1',
            'variant_id': 'v1',
            'product_id': 'p1',
            'wishlist_id': 'wl_001',
            'quantity': 1,
          },
        ],
      });

      expect(wishlist.isPrivate, isTrue);
      expect(wishlist.items?.single.variantId, equals('v1'));
      expect(Wishlist.fromJson(wishlist.toJson()), equals(wishlist));
    });
  });

  group('company params and models', () {
    test('UpdateCompanyParams omits null name', () {
      expect(const UpdateCompanyParams().toJson(), equals(<String, Object?>{}));
    });

    test('company address params use wire keys', () {
      const params = CompanyAddressCreateParams(
        firstName: 'Sam',
        lastName: 'Buyer',
        address1: '12 Market Street',
        city: 'San Francisco',
        countryCode: CountryCode.us,
        defaultBilling: true,
      );

      expect(params.toJson()['country_code'], equals('US'));
      expect(params.toJson()['default_billing'], isTrue);
      expect(params.toJson().containsKey('city'), isTrue);
      expect(params.toJson().containsKey('phone'), isFalse);

      const update = CompanyAddressUpdateParams(stateCode: 'CA');
      expect(update.toJson(), equals(<String, Object?>{'state_code': 'CA'}));
    });

    test('Company round-trips with ancestors', () {
      final company = Company.fromJson(<String, Object?>{
        'id': 'comp_001',
        'name': 'Acme',
        'kind': 'division',
        'po_number_required': true,
        'parent_id': 'comp_000',
        'ancestors': <Object?>[
          <String, Object?>{'id': 'c0', 'name': 'Root', 'kind': 'company'},
        ],
      });

      expect(company.kind, equals(CompanyKind.division));
      expect(company.ancestors.single.name, equals('Root'));
      expect(Company.fromJson(company.toJson()), equals(company));
    });

    test('membership, invitation and lookup round-trip', () {
      final membership = CompanyMembership.fromJson(<String, Object?>{
        'id': 'cm_1',
        'company_id': 'c1',
        'customer_id': 'u1',
        'email': null,
      });
      expect(
        CompanyMembership.fromJson(membership.toJson()),
        equals(membership),
      );

      final invitation = CompanyInvitation.fromJson(<String, Object?>{
        'id': 'ci_1',
        'email': 'a@example.com',
        'expires_at': null,
        'company_id': 'c1',
        'status': 'accepted',
      });
      expect(invitation.status, equals(CompanyInvitationStatus.accepted));

      final entry = AccountCompany.fromJson(<String, Object?>{
        'id': 'cm_1',
        'company_id': 'c1',
        'customer_id': 'u1',
        'email': null,
        'company': <String, Object?>{
          'id': 'c1',
          'name': 'Acme',
          'kind': 'company',
          'po_number_required': false,
          'parent_id': null,
          'ancestors': <Object?>[],
        },
      });
      expect(entry.company.name, equals('Acme'));

      final lookup = CompanyInvitationLookup.fromJson(<String, Object?>{
        'id': 'ci_1',
        'email': 'a@example.com',
        'expires_at': null,
        'company_id': 'c1',
        'status': 'pending',
        'company_name': 'Acme',
        'store_name': 'Main',
      });
      expect(lookup.storeName, equals('Main'));
      expect(CompanyInvitationLookup.fromJson(lookup.toJson()), equals(lookup));
    });

    test('member invite and accept params use wire keys', () {
      expect(
        const AddCompanyMemberParams(customerEmail: 'a@example.com').toJson(),
        equals(<String, Object?>{'customer_email': 'a@example.com'}),
      );
      expect(
        const AcceptCompanyInvitationParams().toJson(),
        equals(<String, Object?>{}),
      );
    });
  });
}

Map<String, Object?> _returnJson() => <String, Object?>{
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
      'variant_id': null,
      'line_item_id': null,
      'fulfillment_item_id': 'fi_001',
    },
  ],
};

Map<String, Object?> _claimJson() => <String, Object?>{
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
    'name': 'Missing',
    'active': true,
  },
  'claim_line_items': <Object?>[
    <String, Object?>{
      'id': 'cli_001',
      'quantity': 1,
      'send_replacement': true,
      'description': null,
      'refund_amount': null,
      'paid_amount': null,
      'pre_tax_amount': null,
      'included_tax_total': null,
      'additional_tax_total': null,
      'tax_total': null,
      'variant_id': null,
      'replacement_variant_id': null,
      'line_item_id': 'li_001',
    },
  ],
};
