// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnReason _$ReturnReasonFromJson(Map<String, dynamic> json) =>
    _ReturnReason(
      id: json['id'] as String,
      name: json['name'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$ReturnReasonToJson(_ReturnReason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };

_ClaimReason _$ClaimReasonFromJson(Map<String, dynamic> json) => _ClaimReason(
  id: json['id'] as String,
  name: json['name'] as String,
  active: json['active'] as bool,
);

Map<String, dynamic> _$ClaimReasonToJson(_ClaimReason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };

_ReturnLineItem _$ReturnLineItemFromJson(Map<String, dynamic> json) =>
    _ReturnLineItem(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      receivedQuantity: (json['received_quantity'] as num).toInt(),
      resellable: json['resellable'] as bool,
      preTaxAmount: json['pre_tax_amount'] as String?,
      includedTaxTotal: json['included_tax_total'] as String?,
      additionalTaxTotal: json['additional_tax_total'] as String?,
      taxTotal: json['tax_total'] as String?,
      refundAmount: json['refund_amount'] as String?,
      variantId: json['variant_id'] as String?,
      lineItemId: json['line_item_id'] as String?,
      fulfillmentItemId: json['fulfillment_item_id'] as String?,
      variant: json['variant'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ReturnLineItemToJson(_ReturnLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'received_quantity': instance.receivedQuantity,
      'resellable': instance.resellable,
      'pre_tax_amount': instance.preTaxAmount,
      'included_tax_total': instance.includedTaxTotal,
      'additional_tax_total': instance.additionalTaxTotal,
      'tax_total': instance.taxTotal,
      'refund_amount': instance.refundAmount,
      'variant_id': instance.variantId,
      'line_item_id': instance.lineItemId,
      'fulfillment_item_id': instance.fulfillmentItemId,
      'variant': instance.variant,
    };

_Return _$ReturnFromJson(Map<String, dynamic> json) => _Return(
  id: json['id'] as String,
  number: json['number'] as String,
  status: $enumDecode(
    _$ReturnStatusEnumMap,
    json['status'],
    unknownValue: ReturnStatus.unknown,
  ),
  orderId: json['order_id'] as String?,
  reasonId: json['reason_id'] as String?,
  refundTotal: json['refund_total'] as String?,
  refundTaxTotal: json['refund_tax_total'] as String?,
  approvedAt: json['approved_at'] as String?,
  receivedAt: json['received_at'] as String?,
  refundedAt: json['refunded_at'] as String?,
  canceledAt: json['canceled_at'] as String?,
  reason: json['reason'] == null
      ? null
      : ReturnReason.fromJson(json['reason'] as Map<String, dynamic>),
  returnLineItems: (json['return_line_items'] as List<dynamic>?)
      ?.map((e) => ReturnLineItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ReturnToJson(_Return instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'status': instance.status.toJson(),
  'order_id': instance.orderId,
  'reason_id': instance.reasonId,
  'refund_total': instance.refundTotal,
  'refund_tax_total': instance.refundTaxTotal,
  'approved_at': instance.approvedAt,
  'received_at': instance.receivedAt,
  'refunded_at': instance.refundedAt,
  'canceled_at': instance.canceledAt,
  'reason': instance.reason?.toJson(),
  'return_line_items': instance.returnLineItems
      ?.map((e) => e.toJson())
      .toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

const _$ReturnStatusEnumMap = {
  ReturnStatus.requested: 'requested',
  ReturnStatus.approved: 'approved',
  ReturnStatus.received: 'received',
  ReturnStatus.refunded: 'refunded',
  ReturnStatus.canceled: 'canceled',
  ReturnStatus.unknown: '',
};

_ClaimLineItem _$ClaimLineItemFromJson(Map<String, dynamic> json) =>
    _ClaimLineItem(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      sendReplacement: json['send_replacement'] as bool,
      description: json['description'] as String?,
      refundAmount: json['refund_amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      preTaxAmount: json['pre_tax_amount'] as String?,
      includedTaxTotal: json['included_tax_total'] as String?,
      additionalTaxTotal: json['additional_tax_total'] as String?,
      taxTotal: json['tax_total'] as String?,
      variantId: json['variant_id'] as String?,
      replacementVariantId: json['replacement_variant_id'] as String?,
      lineItemId: json['line_item_id'] as String?,
      variant: json['variant'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ClaimLineItemToJson(_ClaimLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'send_replacement': instance.sendReplacement,
      'description': instance.description,
      'refund_amount': instance.refundAmount,
      'paid_amount': instance.paidAmount,
      'pre_tax_amount': instance.preTaxAmount,
      'included_tax_total': instance.includedTaxTotal,
      'additional_tax_total': instance.additionalTaxTotal,
      'tax_total': instance.taxTotal,
      'variant_id': instance.variantId,
      'replacement_variant_id': instance.replacementVariantId,
      'line_item_id': instance.lineItemId,
      'variant': instance.variant,
    };

_Claim _$ClaimFromJson(Map<String, dynamic> json) => _Claim(
  id: json['id'] as String,
  number: json['number'] as String,
  status: $enumDecode(
    _$ClaimStatusEnumMap,
    json['status'],
    unknownValue: ClaimStatus.unknown,
  ),
  resolution: $enumDecodeNullable(_$ClaimResolutionEnumMap, json['resolution']),
  orderId: json['order_id'] as String?,
  reasonId: json['reason_id'] as String?,
  refundTotal: json['refund_total'] as String?,
  approvedAt: json['approved_at'] as String?,
  resolvedAt: json['resolved_at'] as String?,
  deniedAt: json['denied_at'] as String?,
  canceledAt: json['canceled_at'] as String?,
  reason: json['reason'] == null
      ? null
      : ClaimReason.fromJson(json['reason'] as Map<String, dynamic>),
  claimLineItems: (json['claim_line_items'] as List<dynamic>?)
      ?.map((e) => ClaimLineItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ClaimToJson(_Claim instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'status': instance.status.toJson(),
  'resolution': instance.resolution?.toJson(),
  'order_id': instance.orderId,
  'reason_id': instance.reasonId,
  'refund_total': instance.refundTotal,
  'approved_at': instance.approvedAt,
  'resolved_at': instance.resolvedAt,
  'denied_at': instance.deniedAt,
  'canceled_at': instance.canceledAt,
  'reason': instance.reason?.toJson(),
  'claim_line_items': instance.claimLineItems?.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

const _$ClaimStatusEnumMap = {
  ClaimStatus.open: 'open',
  ClaimStatus.approved: 'approved',
  ClaimStatus.resolved: 'resolved',
  ClaimStatus.denied: 'denied',
  ClaimStatus.canceled: 'canceled',
  ClaimStatus.unknown: '',
};

const _$ClaimResolutionEnumMap = {
  ClaimResolution.refund: 'refund',
  ClaimResolution.replacement: 'replacement',
  ClaimResolution.refundAndReplacement: 'refund_and_replacement',
};

_CreditCard _$CreditCardFromJson(Map<String, dynamic> json) => _CreditCard(
  id: json['id'] as String,
  brand: json['brand'] as String,
  last4: json['last4'] as String,
  month: (json['month'] as num).toInt(),
  year: (json['year'] as num).toInt(),
  name: json['name'] as String?,
  isDefault: json['default'] as bool,
  gatewayPaymentProfileId: json['gateway_payment_profile_id'] as String?,
  paymentMethodId: json['payment_method_id'] as String?,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreditCardToJson(_CreditCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'last4': instance.last4,
      'month': instance.month,
      'year': instance.year,
      'name': instance.name,
      'default': instance.isDefault,
      'gateway_payment_profile_id': instance.gatewayPaymentProfileId,
      'payment_method_id': instance.paymentMethodId,
      'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
    };

_PaymentSetupSession _$PaymentSetupSessionFromJson(Map<String, dynamic> json) =>
    _PaymentSetupSession(
      id: json['id'] as String,
      status: $enumDecode(
        _$PaymentSetupSessionStatusEnumMap,
        json['status'],
        unknownValue: PaymentSetupSessionStatus.unknown,
      ),
      externalId: json['external_id'] as String?,
      externalClientSecret: json['external_client_secret'] as String?,
      externalData: json['external_data'] as Map<String, dynamic>,
      paymentMethodId: json['payment_method_id'] as String?,
      paymentSourceId: json['payment_source_id'] as String?,
      paymentSourceType: json['payment_source_type'] as String?,
      customerId: json['customer_id'] as String?,
      paymentMethod: PaymentMethod.fromJson(
        json['payment_method'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PaymentSetupSessionToJson(
  _PaymentSetupSession instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status.toJson(),
  'external_id': instance.externalId,
  'external_client_secret': instance.externalClientSecret,
  'external_data': instance.externalData,
  'payment_method_id': instance.paymentMethodId,
  'payment_source_id': instance.paymentSourceId,
  'payment_source_type': instance.paymentSourceType,
  'customer_id': instance.customerId,
  'payment_method': instance.paymentMethod.toJson(),
};

const _$PaymentSetupSessionStatusEnumMap = {
  PaymentSetupSessionStatus.pending: 'pending',
  PaymentSetupSessionStatus.processing: 'processing',
  PaymentSetupSessionStatus.completed: 'completed',
  PaymentSetupSessionStatus.failed: 'failed',
  PaymentSetupSessionStatus.canceled: 'canceled',
  PaymentSetupSessionStatus.expired: 'expired',
  PaymentSetupSessionStatus.unknown: '',
};

_Wishlist _$WishlistFromJson(Map<String, dynamic> json) => _Wishlist(
  id: json['id'] as String,
  name: json['name'] as String,
  token: json['token'] as String,
  isDefault: json['is_default'] as bool,
  isPrivate: json['is_private'] as bool,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WishlistToJson(_Wishlist instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'token': instance.token,
  'is_default': instance.isDefault,
  'is_private': instance.isPrivate,
  'items': instance.items?.map((e) => e.toJson()).toList(),
};

_WishlistItem _$WishlistItemFromJson(Map<String, dynamic> json) =>
    _WishlistItem(
      id: json['id'] as String,
      variantId: json['variant_id'] as String,
      productId: json['product_id'] as String,
      wishlistId: json['wishlist_id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      variant: json['variant'] as Map<String, dynamic>?,
      product: json['product'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$WishlistItemToJson(_WishlistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant_id': instance.variantId,
      'product_id': instance.productId,
      'wishlist_id': instance.wishlistId,
      'quantity': instance.quantity,
      'variant': instance.variant,
      'product': instance.product,
    };

_CompanyAncestor _$CompanyAncestorFromJson(Map<String, dynamic> json) =>
    _CompanyAncestor(
      id: json['id'] as String,
      name: json['name'] as String,
      kind: json['kind'] as String,
    );

Map<String, dynamic> _$CompanyAncestorToJson(_CompanyAncestor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kind': instance.kind,
    };

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  id: json['id'] as String,
  name: json['name'] as String,
  kind: $enumDecode(_$CompanyKindEnumMap, json['kind']),
  poNumberRequired: json['po_number_required'] as bool,
  parentId: json['parent_id'] as String?,
  ancestors: (json['ancestors'] as List<dynamic>)
      .map((e) => CompanyAncestor.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'kind': instance.kind.toJson(),
  'po_number_required': instance.poNumberRequired,
  'parent_id': instance.parentId,
  'ancestors': instance.ancestors.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

const _$CompanyKindEnumMap = {
  CompanyKind.company: 'company',
  CompanyKind.division: 'division',
};

_CompanyMembership _$CompanyMembershipFromJson(Map<String, dynamic> json) =>
    _CompanyMembership(
      id: json['id'] as String,
      companyId: json['company_id'] as String,
      customerId: json['customer_id'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$CompanyMembershipToJson(_CompanyMembership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'customer_id': instance.customerId,
      'email': instance.email,
    };

_CompanyInvitation _$CompanyInvitationFromJson(Map<String, dynamic> json) =>
    _CompanyInvitation(
      id: json['id'] as String,
      email: json['email'] as String,
      expiresAt: json['expires_at'] as String?,
      companyId: json['company_id'] as String,
      status: $enumDecode(_$CompanyInvitationStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$CompanyInvitationToJson(_CompanyInvitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'expires_at': instance.expiresAt,
      'company_id': instance.companyId,
      'status': instance.status.toJson(),
    };

const _$CompanyInvitationStatusEnumMap = {
  CompanyInvitationStatus.pending: 'pending',
  CompanyInvitationStatus.accepted: 'accepted',
  CompanyInvitationStatus.revoked: 'revoked',
  CompanyInvitationStatus.expired: 'expired',
};

_AccountCompany _$AccountCompanyFromJson(Map<String, dynamic> json) =>
    _AccountCompany(
      id: json['id'] as String,
      companyId: json['company_id'] as String,
      customerId: json['customer_id'] as String,
      email: json['email'] as String?,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountCompanyToJson(_AccountCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'customer_id': instance.customerId,
      'email': instance.email,
      'company': instance.company.toJson(),
    };

_CompanyInvitationLookup _$CompanyInvitationLookupFromJson(
  Map<String, dynamic> json,
) => _CompanyInvitationLookup(
  id: json['id'] as String,
  email: json['email'] as String,
  expiresAt: json['expires_at'] as String?,
  companyId: json['company_id'] as String,
  status: $enumDecode(_$CompanyInvitationStatusEnumMap, json['status']),
  companyName: json['company_name'] as String,
  storeName: json['store_name'] as String,
);

Map<String, dynamic> _$CompanyInvitationLookupToJson(
  _CompanyInvitationLookup instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'expires_at': instance.expiresAt,
  'company_id': instance.companyId,
  'status': instance.status.toJson(),
  'company_name': instance.companyName,
  'store_name': instance.storeName,
};

Map<String, dynamic> _$CreateReturnItemToJson(_CreateReturnItem instance) =>
    <String, dynamic>{
      'fulfillment_item_id': instance.fulfillmentItemId,
      'quantity': instance.quantity,
    };

Map<String, dynamic> _$CreateReturnParamsToJson(_CreateReturnParams instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'reason_id': ?instance.reasonId,
      'memo': ?instance.memo,
    };

Map<String, dynamic> _$CreateClaimItemToJson(_CreateClaimItem instance) =>
    <String, dynamic>{
      'line_item_id': instance.lineItemId,
      'quantity': instance.quantity,
      'description': ?instance.description,
    };

Map<String, dynamic> _$CreateClaimParamsToJson(_CreateClaimParams instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'reason_id': ?instance.reasonId,
      'memo': ?instance.memo,
    };

Map<String, dynamic> _$CreateWishlistParamsToJson(
  _CreateWishlistParams instance,
) => <String, dynamic>{
  'name': instance.name,
  'is_private': ?instance.isPrivate,
  'is_default': ?instance.isDefault,
};

Map<String, dynamic> _$UpdateWishlistParamsToJson(
  _UpdateWishlistParams instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'is_private': ?instance.isPrivate,
  'is_default': ?instance.isDefault,
};

Map<String, dynamic> _$CreateWishlistItemParamsToJson(
  _CreateWishlistItemParams instance,
) => <String, dynamic>{
  'variant_id': instance.variantId,
  'quantity': ?instance.quantity,
};

Map<String, dynamic> _$UpdateWishlistItemParamsToJson(
  _UpdateWishlistItemParams instance,
) => <String, dynamic>{
  'variant_id': ?instance.variantId,
  'quantity': ?instance.quantity,
};

Map<String, dynamic> _$CreatePaymentSetupSessionParamsToJson(
  _CreatePaymentSetupSessionParams instance,
) => <String, dynamic>{
  'payment_method_id': instance.paymentMethodId,
  'external_data': ?instance.externalData,
};

Map<String, dynamic> _$CompletePaymentSetupSessionParamsToJson(
  _CompletePaymentSetupSessionParams instance,
) => <String, dynamic>{'external_data': ?instance.externalData};

Map<String, dynamic> _$UpdateCompanyParamsToJson(
  _UpdateCompanyParams instance,
) => <String, dynamic>{'name': ?instance.name};

Map<String, dynamic> _$CompanyAddressCreateParamsToJson(
  _CompanyAddressCreateParams instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'company': ?instance.company,
  'address1': instance.address1,
  'address2': ?instance.address2,
  'city': instance.city,
  'postal_code': ?instance.postalCode,
  'phone': ?instance.phone,
  'label': ?instance.label,
  'country_code': instance.countryCode.toJson(),
  'state_code': ?instance.stateCode,
  'state_name': ?instance.stateName,
  'zipcode': ?instance.zipcode,
  'default_billing': ?instance.defaultBilling,
  'default_shipping': ?instance.defaultShipping,
};

Map<String, dynamic> _$CompanyAddressUpdateParamsToJson(
  _CompanyAddressUpdateParams instance,
) => <String, dynamic>{
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'company': ?instance.company,
  'address1': ?instance.address1,
  'address2': ?instance.address2,
  'city': ?instance.city,
  'postal_code': ?instance.postalCode,
  'phone': ?instance.phone,
  'label': ?instance.label,
  'country_code': ?instance.countryCode?.toJson(),
  'state_code': ?instance.stateCode,
  'state_name': ?instance.stateName,
  'zipcode': ?instance.zipcode,
  'default_billing': ?instance.defaultBilling,
  'default_shipping': ?instance.defaultShipping,
};

Map<String, dynamic> _$AddCompanyMemberParamsToJson(
  _AddCompanyMemberParams instance,
) => <String, dynamic>{'customer_email': instance.customerEmail};

Map<String, dynamic> _$AcceptCompanyInvitationParamsToJson(
  _AcceptCompanyInvitationParams instance,
) => <String, dynamic>{
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'phone': ?instance.phone,
  'password': ?instance.password,
  'password_confirmation': ?instance.passwordConfirmation,
};
