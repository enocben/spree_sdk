/// Cart payment-session operations for provider-delegated payments such as
/// Stripe (Store API).
///
/// Contracts: `docs/research/store-api-contract.md` §4
/// (`POST /carts/{id}/payment_sessions`,
/// `GET /carts/{id}/payment_sessions/{id}`,
/// `PATCH /carts/{id}/payment_sessions/{id}`,
/// `PATCH /carts/{id}/payment_sessions/{id}/complete`);
/// parity matrix row 16. Auth: customer JWT or guest cart token
/// (`KEY+JWT/TOKEN`, inferred — the exact per-endpoint credential matrix
/// is still open, open-questions.md Q6).
///
/// Payment-session mutations are never retried without an explicit
/// `Idempotency-Key` (AGENTS.md §3.9).
library;

import '../client.dart';
import '../models/meta.dart';
import '../models/params_checkout.dart';
import '../transport/request_options.dart';

/// Casts a decoded body to its JSON object shape.
Map<String, Object?> _asMap(Object? json) {
  if (json is Map<String, Object?>) {
    return json;
  }
  if (json is Map) {
    return Map<String, Object?>.from(json);
  }
  throw StateError('Expected a JSON object but got ${json.runtimeType}.');
}

/// A provider-delegated payment session (e.g. Stripe).
///
/// The exact response shape is not pinned by the research pass
/// (open-questions.md Q7: `CreatePaymentSessionParams` and friends carry
/// no extracted field lists), so the raw payload is retained and only the
/// commonly reported entries get typed accessors. Unknown entries are
/// never dropped — read them from [raw].
class PaymentSession {
  /// Creates a payment session from its decoded JSON shape.
  PaymentSession.fromJson(Map<String, Object?> json)
    : raw = Map<String, Object?>.unmodifiable(json);

  /// The raw server payload.
  final Map<String, Object?> raw;

  /// Session id, when reported.
  String? get id => raw['id'] as String?;

  /// Session status, when reported (`unknown` fallback included).
  PaymentSessionStatus? get status {
    final Object? value = raw['status'];
    if (value == null) {
      return null;
    }
    return PaymentSessionStatus.fromJson(value);
  }

  /// Serializes this session back to its JSON shape.
  Map<String, Object?> toJson() => Map<String, Object?>.from(raw);
}

/// Cart payment-session operations.
///
/// Upstream (`packages/sdk/src/store-client.ts`):
/// `carts.paymentSessions.create` (SRC 764),
/// `carts.paymentSessions.get` (SRC 774),
/// `carts.paymentSessions.update` (SRC 791),
/// `carts.paymentSessions.complete` (SRC 807).
class PaymentSessionsResource {
  /// Creates a payment-session resource bound to [SpreeClient].
  const PaymentSessionsResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Creates a payment session (`POST /carts/{id}/payment_sessions`).
  Future<PaymentSession> create(
    String cartId, {
    required CreatePaymentSessionParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/payment_sessions',
      body: params.toJson(),
      options: options,
    );
    return PaymentSession.fromJson(_asMap(json));
  }

  /// Fetches a payment session
  /// (`GET /carts/{id}/payment_sessions/{id}`).
  Future<PaymentSession> get(
    String cartId,
    String sessionId, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/carts/${Uri.encodeComponent(cartId)}/payment_sessions/${Uri.encodeComponent(sessionId)}',
      options: options,
    );
    return PaymentSession.fromJson(_asMap(json));
  }

  /// Updates a payment session
  /// (`PATCH /carts/{id}/payment_sessions/{id}`).
  Future<PaymentSession> update(
    String cartId,
    String sessionId, {
    required UpdatePaymentSessionParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/carts/${Uri.encodeComponent(cartId)}/payment_sessions/${Uri.encodeComponent(sessionId)}',
      body: params.toJson(),
      options: options,
    );
    return PaymentSession.fromJson(_asMap(json));
  }

  /// Completes a payment session
  /// (`PATCH /carts/{id}/payment_sessions/{id}/complete`).
  ///
  /// [params] is optional upstream (`CompletePaymentSessionParams?`,
  /// SRC 807); when omitted, no body is sent.
  Future<PaymentSession> complete(
    String cartId,
    String sessionId, {
    CompletePaymentSessionParams? params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/carts/${Uri.encodeComponent(cartId)}/payment_sessions/${Uri.encodeComponent(sessionId)}/complete',
      body: params?.toJson(),
      options: options,
    );
    return PaymentSession.fromJson(_asMap(json));
  }
}
