/// Customer account models.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * shapes: `packages/sdk/src/types/generated/{Customer,NewsletterSubscriber,
///   CustomerGroup}.ts` and `packages/sdk/src/types/index.ts` (re-exports);
/// * SPEC `store.yaml#/components/schemas/{Customer,NewsletterSubscriber,
///   CustomerGroup}`;
/// * contracts: `doc/research/store-api-contract.md` §7
///   (`GET/PATCH /customers/me`, address CRUD, `dataRequests`, `creditCards`,
///   `gift_cards`, `store_credits`, `digital_links`, `orders`).
///
/// Addresses, gift cards and store credits reuse the cart models
/// ([Address], [GiftCard], [StoreCredit] from `cart.dart`): the SPEC and TS
/// types are the same serializer in both surfaces.
library;

import 'cart.dart';
import 'meta.dart';

export 'cart.dart' show Address, AddressOwner, GiftCard, StoreCredit;

/// Compares two lists element-wise; both `null` counts as equal.
bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null || a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// A customer group the customer belongs to.
///
/// Source: `packages/sdk/src/types/generated/CustomerGroup.ts`;
/// SPEC `store.yaml#/components/schemas/CustomerGroup`.
class CustomerGroup {
  /// Creates a customer group.
  const CustomerGroup({required this.id, required this.name});

  /// Parses a customer group from its JSON shape.
  factory CustomerGroup.fromJson(Map<String, Object?> json) =>
      CustomerGroup(id: json['id'] as String, name: json['name'] as String);

  /// Unique identifier.
  final String id;

  /// Group name.
  final String name;

  /// Serializes this group back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{'id': id, 'name': name};

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerGroup && id == other.id && name == other.name;

  @override
  int get hashCode => Object.hash(id, name);
}

/// A newsletter subscription linked to a customer.
///
/// Source: `packages/sdk/src/types/generated/NewsletterSubscriber.ts`;
/// SPEC `store.yaml#/components/schemas/NewsletterSubscriber`.
class NewsletterSubscriber {
  /// Creates a newsletter subscriber record.
  const NewsletterSubscriber({
    required this.id,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.verified,
    this.verifiedAt,
    this.customerId,
    this.customFields,
  });

  /// Parses a subscriber record from its JSON shape.
  factory NewsletterSubscriber.fromJson(Map<String, Object?> json) =>
      NewsletterSubscriber(
        id: json['id'] as String,
        email: json['email'] as String,
        createdAt: json['created_at'] as String,
        updatedAt: json['updated_at'] as String,
        verified: json['verified'] as bool,
        verifiedAt: json['verified_at'] as String?,
        customerId: json['customer_id'] as String?,
        customFields: (json['custom_fields'] as List?)
            ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
            .toList(),
      );

  /// Unique identifier.
  final String id;

  /// Subscriber email.
  final String email;

  /// Creation timestamp, as reported by the API (kept as-is).
  final String createdAt;

  /// Update timestamp, as reported by the API (kept as-is).
  final String updatedAt;

  /// Whether the subscription is verified.
  final bool verified;

  /// Verification timestamp, when set.
  final String? verifiedAt;

  /// Linked customer id, when linked.
  final String? customerId;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this record back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'email': email,
    'created_at': createdAt,
    'updated_at': updatedAt,
    'verified': verified,
    'verified_at': verifiedAt,
    'customer_id': customerId,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsletterSubscriber &&
          id == other.id &&
          email == other.email &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          verified == other.verified &&
          verifiedAt == other.verifiedAt &&
          customerId == other.customerId &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, email, verified, customerId);
}

/// The authenticated customer profile.
///
/// Source: `packages/sdk/src/types/generated/Customer.ts`;
/// SPEC `store.yaml#/components/schemas/Customer`.
/// Also the documented shape of `AuthResponse.user`
/// (SPEC `store.yaml#/components/schemas/AuthResponse`; see open-questions
/// Q4 and `auth.dart` for the narrowed login payload).
class Customer {
  /// Creates a customer profile.
  const Customer({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.phone,
    required this.acceptsEmailMarketing,
    this.emailMarketingConsentUpdatedAt,
    required this.fullName,
    required this.availableStoreCreditTotal,
    required this.addresses,
    this.defaultBillingAddress,
    this.defaultShippingAddress,
    this.newsletterSubscriber,
    required this.customerGroups,
    this.customFields,
  });

  /// Parses a customer profile from its JSON shape.
  factory Customer.fromJson(Map<String, Object?> json) => Customer(
    id: json['id'] as String,
    email: json['email'] as String,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    phone: json['phone'] as String?,
    acceptsEmailMarketing: json['accepts_email_marketing'] as bool,
    emailMarketingConsentUpdatedAt:
        json['email_marketing_consent_updated_at'] as String?,
    fullName: json['full_name'] as String,
    availableStoreCreditTotal: json['available_store_credit_total'] as String,
    addresses: (json['addresses'] as List)
        .map((e) => Address.fromJson(e as Map<String, Object?>))
        .toList(),
    defaultBillingAddress: json['default_billing_address'] == null
        ? null
        : Address.fromJson(
            json['default_billing_address'] as Map<String, Object?>,
          ),
    defaultShippingAddress: json['default_shipping_address'] == null
        ? null
        : Address.fromJson(
            json['default_shipping_address'] as Map<String, Object?>,
          ),
    newsletterSubscriber: json['newsletter_subscriber'] == null
        ? null
        : NewsletterSubscriber.fromJson(
            json['newsletter_subscriber'] as Map<String, Object?>,
          ),
    customerGroups: (json['customer_groups'] as List)
        .map((e) => CustomerGroup.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Customer email.
  final String email;

  /// First name, when set (SPEC `nullable: true`, required key).
  final String? firstName;

  /// Last name, when set (SPEC `nullable: true`, required key).
  final String? lastName;

  /// Phone number, when set (SPEC `nullable: true`, required key).
  final String? phone;

  /// Marketing opt-in flag.
  final bool acceptsEmailMarketing;

  /// Marketing-consent timestamp, when set.
  final String? emailMarketingConsentUpdatedAt;

  /// Computed full name.
  final String fullName;

  /// Usable store-credit total, decimal string.
  final String availableStoreCreditTotal;

  /// Address-book entries.
  final List<Address> addresses;

  /// Default billing address, when set (SPEC `nullable: true`, required key).
  final Address? defaultBillingAddress;

  /// Default shipping address, when set (SPEC `nullable: true`, required key).
  final Address? defaultShippingAddress;

  /// Linked newsletter subscription, when present (SPEC `nullable: true`,
  /// required key).
  final NewsletterSubscriber? newsletterSubscriber;

  /// Customer groups of the customer.
  final List<CustomerGroup> customerGroups;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this profile back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
    'phone': phone,
    'accepts_email_marketing': acceptsEmailMarketing,
    'email_marketing_consent_updated_at': emailMarketingConsentUpdatedAt,
    'full_name': fullName,
    'available_store_credit_total': availableStoreCreditTotal,
    'addresses': addresses.map((e) => e.toJson()).toList(),
    'default_billing_address': defaultBillingAddress?.toJson(),
    'default_shipping_address': defaultShippingAddress?.toJson(),
    'newsletter_subscriber': newsletterSubscriber?.toJson(),
    'customer_groups': customerGroups.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Customer &&
          id == other.id &&
          email == other.email &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          phone == other.phone &&
          acceptsEmailMarketing == other.acceptsEmailMarketing &&
          emailMarketingConsentUpdatedAt ==
              other.emailMarketingConsentUpdatedAt &&
          fullName == other.fullName &&
          availableStoreCreditTotal == other.availableStoreCreditTotal &&
          _listEquals(addresses, other.addresses) &&
          defaultBillingAddress == other.defaultBillingAddress &&
          defaultShippingAddress == other.defaultShippingAddress &&
          newsletterSubscriber == other.newsletterSubscriber &&
          _listEquals(customerGroups, other.customerGroups) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, email, fullName);
}
