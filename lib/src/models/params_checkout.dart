/// Checkout and payment request parameters for cart operations.
///
/// Hand-written immutable parameter bags with manual `toJson`
/// (ADR-002: no codegen).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * param names: `packages/sdk/src/types/params/*.ts`
///   (`UpdateCartParams`, `AddLineItemParams`, `UpdateLineItemParams`,
///   `CreatePaymentParams`, `CreatePaymentSessionParams`,
///   `UpdatePaymentSessionParams`, `CompletePaymentSessionParams`,
///   `UpdateFulfillmentParams`);
/// * contracts: `doc/research/store-api-contract.md` §4 (`SRC 560` update,
///   `SRC 632` items create `{variant_id, quantity, …}`,
///   `SRC 648` items update, `SRC 727` fulfillments update selecting the
///   delivery rate, `SRC 747` direct payments for non-session methods,
///   `SRC 764/774/791/807` payment sessions);
/// * money is always a decimal string, never a number
///   (`docs/developer/sdk/configuration.mdx` "Monetary Amounts").
///
/// Only the fields marked *verified* below are sent under their own names.
/// Every class also carries an [extra] passthrough map for server fields
/// whose exact upstream/SPEC shape is still unknown (open-questions.md Q7:
/// full field lists were not extracted in the research pass). Nothing is
/// invented: unknown fields are never guessed, they are forwarded verbatim
/// when the caller supplies them.
///
/// Checkout and payment mutations are never retried blindly (AGENTS.md
/// §3.9): pass an `Idempotency-Key` via `RequestOptions` only where the
/// server documents support (contract §4: cart create/update/items,
/// payments, store credit, complete).
library;

/// Parameters for `PATCH /carts/{id}`.
///
/// Verified (contract §4, `SRC 560`): `UpdateCartParams` exists and carries
/// at least the customer `email`. Address payloads and any further fields
/// are not pinned by the research pass — pass them via [extra].
class UpdateCartParams {
  /// Creates cart-update parameters.
  const UpdateCartParams({this.email, this.extra = const <String, Object?>{}});

  /// Customer email for the cart, when set.
  final String? email;

  /// Additional server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    if (email != null) 'email': email,
    ...extra,
  };
}

/// Parameters for `POST /carts/{id}/items`.
///
/// Verified (contract §4, `SRC 632`): `AddLineItemParams` carries
/// `variant_id` and `quantity`; further fields are unknown — pass them via
/// [extra].
class AddLineItemParams {
  /// Creates line-item creation parameters.
  const AddLineItemParams({
    required this.variantId,
    required this.quantity,
    this.extra = const <String, Object?>{},
  });

  /// Variant to add to the cart.
  final String variantId;

  /// Quantity to add.
  final int quantity;

  /// Additional server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    'variant_id': variantId,
    'quantity': quantity,
    ...extra,
  };
}

/// Parameters for `PATCH /carts/{id}/items/{id}`.
///
/// Verified (contract §4, `SRC 648`): `UpdateLineItemParams` exists; the
/// quantity field is the documented update target. Any further fields travel
/// via [extra].
class UpdateLineItemParams {
  /// Creates line-item update parameters.
  const UpdateLineItemParams({
    this.quantity,
    this.extra = const <String, Object?>{},
  });

  /// New quantity, when set.
  final int? quantity;

  /// Additional server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    if (quantity != null) 'quantity': quantity,
    ...extra,
  };
}

/// Parameters for `POST /carts/{id}/payments` (direct, non-session methods
/// such as check or cash on delivery).
///
/// Verified (contract §4, `SRC 747`): `CreatePaymentParams` exists. No body
/// field is pinned by the research pass, so this class is a verbatim
/// [extra] passthrough. Do not guess field names here.
class CreatePaymentParams {
  /// Creates direct-payment parameters.
  const CreatePaymentParams({this.extra = const <String, Object?>{}});

  /// Server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => Map<String, Object?>.from(extra);
}

/// Parameters for `POST /carts/{id}/payment_sessions`.
///
/// Verified (contract §4, `SRC 764`): `CreatePaymentSessionParams` exists
/// (Stripe-style provider delegation). No body field is pinned by the
/// research pass, so this class is a verbatim [extra] passthrough.
class CreatePaymentSessionParams {
  /// Creates payment-session creation parameters.
  const CreatePaymentSessionParams({this.extra = const <String, Object?>{}});

  /// Server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => Map<String, Object?>.from(extra);
}

/// Parameters for `PATCH /carts/{id}/payment_sessions/{id}`.
///
/// Verified (contract §4, `SRC 791`): `UpdatePaymentSessionParams` exists.
/// No body field is pinned by the research pass — verbatim [extra]
/// passthrough.
class UpdatePaymentSessionParams {
  /// Creates payment-session update parameters.
  const UpdatePaymentSessionParams({this.extra = const <String, Object?>{}});

  /// Server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => Map<String, Object?>.from(extra);
}

/// Parameters for `PATCH /carts/{id}/payment_sessions/{id}/complete`.
///
/// Verified (contract §4, `SRC 807`): `CompletePaymentSessionParams?`
/// exists and is optional (the call may carry no body). No body field is
/// pinned by the research pass — verbatim [extra] passthrough.
class CompletePaymentSessionParams {
  /// Creates payment-session completion parameters.
  const CompletePaymentSessionParams({this.extra = const <String, Object?>{}});

  /// Server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => Map<String, Object?>.from(extra);
}

/// Parameters for `PATCH /carts/{id}/fulfillments/{id}`.
///
/// Verified (contract §4, `SRC 727`): `UpdateFulfillmentParams` exists and
/// selects the delivery rate for the fulfillment. The exact body field is
/// not pinned by the research pass — verbatim [extra] passthrough.
class UpdateFulfillmentParams {
  /// Creates fulfillment-update parameters.
  const UpdateFulfillmentParams({this.extra = const <String, Object?>{}});

  /// Server fields, forwarded verbatim (see file docs).
  final Map<String, Object?> extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => Map<String, Object?>.from(extra);
}
