// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerGroup _$CustomerGroupFromJson(Map<String, dynamic> json) =>
    _CustomerGroup(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$CustomerGroupToJson(_CustomerGroup instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_NewsletterSubscriber _$NewsletterSubscriberFromJson(
  Map<String, dynamic> json,
) => _NewsletterSubscriber(
  id: json['id'] as String,
  email: json['email'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  verified: json['verified'] as bool,
  verifiedAt: json['verified_at'] as String?,
  customerId: json['customer_id'] as String?,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NewsletterSubscriberToJson(
  _NewsletterSubscriber instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'verified': instance.verified,
  'verified_at': instance.verifiedAt,
  'customer_id': instance.customerId,
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

_Customer _$CustomerFromJson(Map<String, dynamic> json) => _Customer(
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
  addresses: (json['addresses'] as List<dynamic>)
      .map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
  defaultBillingAddress: json['default_billing_address'] == null
      ? null
      : Address.fromJson(
          json['default_billing_address'] as Map<String, dynamic>,
        ),
  defaultShippingAddress: json['default_shipping_address'] == null
      ? null
      : Address.fromJson(
          json['default_shipping_address'] as Map<String, dynamic>,
        ),
  newsletterSubscriber: json['newsletter_subscriber'] == null
      ? null
      : NewsletterSubscriber.fromJson(
          json['newsletter_subscriber'] as Map<String, dynamic>,
        ),
  customerGroups: (json['customer_groups'] as List<dynamic>)
      .map((e) => CustomerGroup.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CustomerToJson(_Customer instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'accepts_email_marketing': instance.acceptsEmailMarketing,
  'email_marketing_consent_updated_at': instance.emailMarketingConsentUpdatedAt,
  'full_name': instance.fullName,
  'available_store_credit_total': instance.availableStoreCreditTotal,
  'addresses': instance.addresses.map((e) => e.toJson()).toList(),
  'default_billing_address': instance.defaultBillingAddress?.toJson(),
  'default_shipping_address': instance.defaultShippingAddress?.toJson(),
  'newsletter_subscriber': instance.newsletterSubscriber?.toJson(),
  'customer_groups': instance.customerGroups.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};
