// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginParamsToJson(_LoginParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'provider': ?instance.provider,
    };

Map<String, dynamic> _$RegisterParamsToJson(_RegisterParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': ?instance.passwordConfirmation,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
    };

Map<String, dynamic> _$UpdateCustomerParamsToJson(
  _UpdateCustomerParams instance,
) => <String, dynamic>{
  'email': ?instance.email,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'phone': ?instance.phone,
  'accepts_email_marketing': ?instance.acceptsEmailMarketing,
};

Map<String, dynamic> _$AddressParamsToJson(_AddressParams instance) =>
    <String, dynamic>{
      'label': ?instance.label,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'address1': ?instance.address1,
      'address2': ?instance.address2,
      'city': ?instance.city,
      'postal_code': ?instance.postalCode,
      'phone': ?instance.phone,
      'company': ?instance.company,
      'country_iso': ?instance.countryIso,
      'state_name': ?instance.stateName,
      'state_abbr': ?instance.stateAbbr,
    };

Map<String, dynamic> _$RequestPasswordResetParamsToJson(
  _RequestPasswordResetParams instance,
) => <String, dynamic>{
  'email': instance.email,
  'redirect_url': ?instance.redirectUrl,
};

Map<String, dynamic> _$ResetPasswordParamsToJson(
  _ResetPasswordParams instance,
) => <String, dynamic>{
  'password': instance.password,
  'password_confirmation': ?instance.passwordConfirmation,
};

Map<String, dynamic> _$NewsletterSubscribeParamsToJson(
  _NewsletterSubscribeParams instance,
) => <String, dynamic>{
  'email': instance.email,
  'redirect_url': ?instance.redirectUrl,
};

Map<String, dynamic> _$NewsletterVerifyParamsToJson(
  _NewsletterVerifyParams instance,
) => <String, dynamic>{'token': instance.token};

Map<String, dynamic> _$NewsletterUnsubscribeRequestParamsToJson(
  _NewsletterUnsubscribeRequestParams instance,
) => <String, dynamic>{
  'email': instance.email,
  'redirect_url': ?instance.redirectUrl,
};

Map<String, dynamic> _$CreateDataRequestParamsToJson(
  _CreateDataRequestParams instance,
) => <String, dynamic>{
  'type': ?instance.type,
  'redirect_url': ?instance.redirectUrl,
  'current_password': ?instance.currentPassword,
};
