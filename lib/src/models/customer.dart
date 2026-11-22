/// Customer account models.
///
/// Freezed immutable models with explicit, contract-verified JSON mappings.
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

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart.dart';
import 'meta.dart';

export 'cart.dart' show Address, AddressOwner, GiftCard, StoreCredit;
part 'customer.freezed.dart';
part 'customer.g.dart';

/// A customer group the customer belongs to.
///
/// Source: `packages/sdk/src/types/generated/CustomerGroup.ts`;
/// SPEC `store.yaml#/components/schemas/CustomerGroup`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CustomerGroup with _$CustomerGroup {
  const CustomerGroup._();

  /// Creates a customer group.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CustomerGroup({required String id, required String name}) =
      _CustomerGroup;

  /// Parses a customer group from its JSON shape.
  factory CustomerGroup.fromJson(Map<String, Object?> json) =>
      _$CustomerGroupFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Group name.
  @override
  String get name;

  /// Serializes this group back to its JSON shape.
}

/// A newsletter subscription linked to a customer.
///
/// Source: `packages/sdk/src/types/generated/NewsletterSubscriber.ts`;
/// SPEC `store.yaml#/components/schemas/NewsletterSubscriber`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class NewsletterSubscriber with _$NewsletterSubscriber {
  const NewsletterSubscriber._();

  /// Creates a newsletter subscriber record.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewsletterSubscriber({
    required String id,
    required String email,
    required String createdAt,
    required String updatedAt,
    required bool verified,
    String? verifiedAt,
    String? customerId,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _NewsletterSubscriber;

  /// Parses a subscriber record from its JSON shape.
  factory NewsletterSubscriber.fromJson(Map<String, Object?> json) =>
      _$NewsletterSubscriberFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Subscriber email.
  @override
  String get email;

  /// Creation timestamp, as reported by the API (kept as-is).
  @override
  String get createdAt;

  /// Update timestamp, as reported by the API (kept as-is).
  @override
  String get updatedAt;

  /// Whether the subscription is verified.
  @override
  bool get verified;

  /// Verification timestamp, when set.
  @override
  String? get verifiedAt;

  /// Linked customer id, when linked.
  @override
  String? get customerId;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this record back to its JSON shape.
}

/// The authenticated customer profile.
///
/// Source: `packages/sdk/src/types/generated/Customer.ts`;
/// SPEC `store.yaml#/components/schemas/Customer`.
/// Also the documented shape of `AuthResponse.user`
/// (SPEC `store.yaml#/components/schemas/AuthResponse`; see open-questions
/// Q4 and `auth.dart` for the narrowed login payload).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Customer with _$Customer {
  const Customer._();

  /// Creates a customer profile.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Customer({
    required String id,
    required String email,
    String? firstName,
    String? lastName,
    String? phone,
    required bool acceptsEmailMarketing,
    String? emailMarketingConsentUpdatedAt,
    required String fullName,
    required String availableStoreCreditTotal,
    required List<Address> addresses,
    Address? defaultBillingAddress,
    Address? defaultShippingAddress,
    NewsletterSubscriber? newsletterSubscriber,
    required List<CustomerGroup> customerGroups,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Customer;

  /// Parses a customer profile from its JSON shape.
  factory Customer.fromJson(Map<String, Object?> json) =>
      _$CustomerFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Customer email.
  @override
  String get email;

  /// First name, when set (SPEC `nullable: true`, required key).
  @override
  String? get firstName;

  /// Last name, when set (SPEC `nullable: true`, required key).
  @override
  String? get lastName;

  /// Phone number, when set (SPEC `nullable: true`, required key).
  @override
  String? get phone;

  /// Marketing opt-in flag.
  @override
  bool get acceptsEmailMarketing;

  /// Marketing-consent timestamp, when set.
  @override
  String? get emailMarketingConsentUpdatedAt;

  /// Computed full name.
  @override
  String get fullName;

  /// Usable store-credit total, decimal string.
  @override
  String get availableStoreCreditTotal;

  /// Address-book entries.
  @override
  List<Address> get addresses;

  /// Default billing address, when set (SPEC `nullable: true`, required key).
  @override
  Address? get defaultBillingAddress;

  /// Default shipping address, when set (SPEC `nullable: true`, required key).
  @override
  Address? get defaultShippingAddress;

  /// Linked newsletter subscription, when present (SPEC `nullable: true`,
  /// required key).
  @override
  NewsletterSubscriber? get newsletterSubscriber;

  /// Customer groups of the customer.
  @override
  List<CustomerGroup> get customerGroups;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this profile back to its JSON shape.
}
