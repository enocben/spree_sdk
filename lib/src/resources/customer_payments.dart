/// Saved payment instruments and payment setup sessions (Store API only).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `packages/sdk/src/store-client.ts` (`customer.creditCards` SRC 1144,
///   `customer.giftCards` SRC 1174, `customer.storeCredits` SRC 1199,
///   `customer.digitalLinks` SRC 1225, `customer.paymentSetupSessions`
///   SRC 1281);
/// * contracts: `docs/research/store-api-contract.md` section 7.
///
/// All reads here are under `/customers/me` and require the customer JWT.
/// P2 scope excluded by the owner: single-gets for gift cards, store
/// credits and digital links have no SPEC collection-item path (the SPEC
/// additionally exposes only `GET /digital_links/{token}`, which has no
/// SDK method) — only LIST is implemented for those three.
library;

import '../client.dart';
import '../models/cart.dart';
import '../models/params_orders.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// Saved credit cards of the authenticated customer.
class CustomerCreditCardsResource {
  /// Creates a credit-cards resource bound to [client].
  const CustomerCreditCardsResource(this._client);

  final SpreeClient _client;

  /// Lists saved credit cards.
  ///
  /// `GET /customers/me/credit_cards` (verified: SPEC path, SRC 1144).
  Future<PaginatedResponse<CreditCard>> list({
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<CreditCard>(
      'GET',
      '/customers/me/credit_cards',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          CreditCard.fromJson(item as Map<String, Object?>),
    );
  }

  /// Fetches one saved credit card by id.
  ///
  /// `GET /customers/me/credit_cards/{id}` (verified: SPEC path, SRC 1153).
  Future<CreditCard> get(String id, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/customers/me/credit_cards/$id',
      options: options,
    );
    return CreditCard.fromJson(json as Map<String, Object?>);
  }

  /// Deletes a saved credit card.
  ///
  /// `DELETE /customers/me/credit_cards/{id}` (verified: SPEC path,
  /// SRC 1159). Resolves on 2xx with no body.
  Future<void> delete(String id, {RequestOptions? options}) async {
    await _client.request(
      'DELETE',
      '/customers/me/credit_cards/$id',
      options: options,
    );
  }
}

/// Gift cards of the authenticated customer (list only).
class CustomerGiftCardsResource {
  /// Creates a gift-cards resource bound to [client].
  const CustomerGiftCardsResource(this._client);

  final SpreeClient _client;

  /// Lists gift cards, newest first.
  ///
  /// `GET /customers/me/gift_cards` (verified: SPEC path, SRC 1174).
  /// Single-get is P2 (excluded): no SPEC item path.
  Future<PaginatedResponse<GiftCard>> list({
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<GiftCard>(
      'GET',
      '/customers/me/gift_cards',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          GiftCard.fromJson(item as Map<String, Object?>),
    );
  }
}

/// Store credits of the authenticated customer (list only).
class CustomerStoreCreditsResource {
  /// Creates a store-credits resource bound to [client].
  const CustomerStoreCreditsResource(this._client);

  final SpreeClient _client;

  /// Lists store credits, filtered by current store and currency.
  ///
  /// `GET /customers/me/store_credits` (verified: SPEC path, SRC 1199).
  /// Single-get is P2 (excluded): no SPEC item path.
  Future<PaginatedResponse<StoreCredit>> list({
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<StoreCredit>(
      'GET',
      '/customers/me/store_credits',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          StoreCredit.fromJson(item as Map<String, Object?>),
    );
  }
}

/// Downloads of the authenticated customer (list only).
class CustomerDigitalLinksResource {
  /// Creates a digital-links resource bound to [client].
  const CustomerDigitalLinksResource(this._client);

  final SpreeClient _client;

  /// Lists downloads across completed orders, newest first.
  ///
  /// `GET /customers/me/digital_links` (verified: SPEC path, SRC 1225).
  /// Single-get is P2 (excluded): SPEC has only the collection path.
  Future<PaginatedResponse<DigitalLink>> list({
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<DigitalLink>(
      'GET',
      '/customers/me/digital_links',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          DigitalLink.fromJson(item as Map<String, Object?>),
    );
  }
}

/// Payment setup sessions: the save-method flow against a payment gateway.
class PaymentSetupSessionsResource {
  /// Creates a payment-setup-sessions resource bound to [client].
  const PaymentSetupSessionsResource(this._client);

  final SpreeClient _client;

  /// Creates a payment setup session.
  ///
  /// `POST /customers/me/payment_setup_sessions` (verified: SPEC path,
  /// SRC 1281). Delegates to the gateway to initialize a setup flow for
  /// saving a payment method. Never retried blindly (AGENTS.md 3.9).
  Future<PaymentSetupSession> create(
    CreatePaymentSetupSessionParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/customers/me/payment_setup_sessions',
      body: params.toJson(),
      options: options,
    );
    return PaymentSetupSession.fromJson(json as Map<String, Object?>);
  }

  /// Fetches a payment setup session by id.
  ///
  /// `GET /customers/me/payment_setup_sessions/{id}` (verified: SPEC path,
  /// SRC 1290).
  Future<PaymentSetupSession> get(String id, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/customers/me/payment_setup_sessions/$id',
      options: options,
    );
    return PaymentSetupSession.fromJson(json as Map<String, Object?>);
  }

  /// Completes a payment setup session, saving the payment method.
  ///
  /// `PATCH /customers/me/payment_setup_sessions/{id}/complete`
  /// (verified: SPEC path, SRC 1305). Confirms the setup with the provider.
  /// Never retried blindly (AGENTS.md 3.9).
  Future<PaymentSetupSession> complete(
    String id, {
    CompletePaymentSetupSessionParams? params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/customers/me/payment_setup_sessions/$id/complete',
      body: params?.toJson(),
      options: options,
    );
    return PaymentSetupSession.fromJson(json as Map<String, Object?>);
  }
}
