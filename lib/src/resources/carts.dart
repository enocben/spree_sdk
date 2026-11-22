/// Cart and checkout operations (Store API).
///
/// Contracts: `docs/research/store-api-contract.md` §4
/// (`GET /carts`, `GET /carts/{id}`, `POST /carts`, `PATCH /carts/{id}`,
/// `DELETE /carts/{id}`, `PATCH /carts/{id}/associate`,
/// `POST /carts/{id}/complete`, `GET /carts/{id}/addresses`,
/// `POST|PATCH|DELETE /carts/{id}/items[/{id}]`,
/// `POST|DELETE /carts/{id}/discount_codes[/{id}]`,
/// `POST|DELETE /carts/{id}/gift_cards[/{id}]`,
/// `PATCH /carts/{id}/fulfillments/{id}`,
/// `POST /carts/{id}/payments`,
/// `POST|DELETE /carts/{id}/store_credits`); parity matrix rows 11–17.
///
/// Guest credential: the cart `token` from create travels via
/// `RequestOptions(spreeToken: …)` as `x-spree-token` (verified contract
/// §4). Mutating operations are never retried without an explicit
/// `Idempotency-Key` (AGENTS.md §3.9); pass one via `RequestOptions`
/// where the server documents support (contract §4).
///
/// P2 exclusions (not implemented): `POST /carts/{id}/po_document` and
/// `PATCH /carts/{id}/tax_identifier` — SPEC-only routes with no TS SDK
/// method to copy behavior from (open-questions.md Q2, contract §9).
library;

import '../client.dart';
import '../models/cart.dart';
import '../models/order.dart';
import '../models/params_checkout.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// Casts a decoded single-resource body to its JSON object shape.
Map<String, Object?> _asMap(Object? json) {
  if (json is Map<String, Object?>) {
    return json;
  }
  if (json is Map) {
    return Map<String, Object?>.from(json);
  }
  throw StateError('Expected a JSON object but got ${json.runtimeType}.');
}

/// Result of `POST /carts/{id}/complete`: either one [Order] or the
/// [OrderGroup] a multi-seller cart was divided into.
///
/// Narrowed with [isOrderGroup], the direct Dart port of `isOrderGroup`
/// in `packages/sdk/src/order-group.ts` (verified: the group payload
/// carries the `orders` key, which a single order never has).
sealed class CompletedCheckout {
  /// Creates a checkout result.
  const CompletedCheckout();

  /// Parses a `complete` response, narrowing on the `orders` key.
  factory CompletedCheckout.fromJson(Map<String, Object?> json) {
    if (isOrderGroup(json)) {
      return CompletedOrderGroup(OrderGroup.fromJson(json));
    }
    return CompletedOrder(Order.fromJson(json));
  }
}

/// A checkout that completed as a single order.
final class CompletedOrder extends CompletedCheckout {
  /// Creates a single-order result.
  const CompletedOrder(this.order);

  /// The placed order.
  final Order order;
}

/// A checkout that completed as a multi-seller order group.
final class CompletedOrderGroup extends CompletedCheckout {
  /// Creates an order-group result.
  const CompletedOrderGroup(this.group);

  /// The order group, holding one order per seller.
  final OrderGroup group;
}

/// Cart and checkout operations.
///
/// Upstream (`packages/sdk/src/store-client.ts`): `carts.list` (SRC 535),
/// `carts.get` (SRC 542), `carts.create` (SRC 549), `carts.update`
/// (SRC 560), `carts.delete` (SRC 570), `carts.associate` (SRC 578),
/// `carts.complete` (SRC 588), `carts.addresses.list` (SRC 612),
/// `carts.items.create/update/delete` (SRC 632/648/659),
/// `carts.discountCodes.apply/remove` (SRC 672/683),
/// `carts.giftCards.apply/remove` (SRC 698/709),
/// `carts.fulfillments.update` (SRC 727), `carts.payments.create`
/// (SRC 747), `carts.storeCredits.apply/remove` (SRC 819/829).
class CartsResource {
  /// Creates a cart resource bound to [SpreeClient].
  const CartsResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists the active carts of the authenticated customer
  /// (`GET /carts`; `KEY+JWT` — guest token is not accepted here).
  Future<PaginatedResponse<Cart>> list({
    int? page,
    int? limit,
    List<String>? expand,
    Map<String, String>? filter,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Cart>(
      'GET',
      '/carts',
      list: ListQuery(page: page, limit: limit, expand: expand, filter: filter),
      options: options,
      fromJson: (Object? json) => Cart.fromJson(_asMap(json)),
    );
  }

  /// Fetches one cart (`GET /carts/{id}`).
  Future<Cart> get(String cartId, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/carts/${Uri.encodeComponent(cartId)}',
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Creates a cart (`POST /carts`).
  ///
  /// The creation body schema is not pinned by the research pass
  /// (open-questions.md Q7); [body] is forwarded verbatim when the caller
  /// supplies documented fields, and omitted otherwise.
  Future<Cart> create({
    Map<String, Object?>? body,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts',
      body: body,
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Updates a cart (`PATCH /carts/{id}`).
  Future<Cart> update(
    String cartId, {
    UpdateCartParams params = const UpdateCartParams(),
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/carts/${Uri.encodeComponent(cartId)}',
      body: params.toJson(),
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Deletes a cart (`DELETE /carts/{id}`).
  Future<void> delete(String cartId, {RequestOptions? options}) async {
    await _client.request(
      'DELETE',
      '/carts/${Uri.encodeComponent(cartId)}',
      options: options,
    );
  }

  /// Associates a guest cart with the authenticated customer
  /// (`PATCH /carts/{id}/associate`).
  ///
  /// Upstream requires per-call credentials ("Must include `token`",
  /// SRC 578), so [options] is required — typically
  /// `RequestOptions(token: <customer JWT>)`.
  Future<Cart> associate(
    String cartId, {
    required RequestOptions options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/carts/${Uri.encodeComponent(cartId)}/associate',
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Completes checkout (`POST /carts/{id}/complete`).
  ///
  /// Returns a [CompletedOrder] or a [CompletedOrderGroup] for
  /// multi-seller carts. Never retried without an explicit
  /// `Idempotency-Key` (AGENTS.md §3.9).
  Future<CompletedCheckout> complete(
    String cartId, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/complete',
      options: options,
    );
    return CompletedCheckout.fromJson(_asMap(json));
  }

  /// Lists the address-book entries usable for a cart
  /// (`GET /carts/{id}/addresses`).
  ///
  /// JWT-only: the guest cart token is NOT accepted on this route
  /// (verified contract §4, SRC 612). Each entry carries its [AddressOwner]
  /// origin.
  Future<PaginatedResponse<Address>> addresses(
    String cartId, {
    int? page,
    int? limit,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Address>(
      'GET',
      '/carts/${Uri.encodeComponent(cartId)}/addresses',
      list: ListQuery(page: page, limit: limit),
      options: options,
      fromJson: (Object? json) => Address.fromJson(_asMap(json)),
    );
  }

  /// Adds a line item (`POST /carts/{id}/items`); returns the
  /// recalculated cart.
  Future<Cart> addItem(
    String cartId, {
    required AddLineItemParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/items',
      body: params.toJson(),
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Updates a line item (`PATCH /carts/{id}/items/{id}`); returns the
  /// recalculated cart.
  Future<Cart> updateItem(
    String cartId,
    String itemId, {
    required UpdateLineItemParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/carts/${Uri.encodeComponent(cartId)}/items/${Uri.encodeComponent(itemId)}',
      body: params.toJson(),
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Removes a line item (`DELETE /carts/{id}/items/{id}`); returns the
  /// recalculated cart (not void — verified contract §4, SRC 659).
  Future<Cart> removeItem(
    String cartId,
    String itemId, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'DELETE',
      '/carts/${Uri.encodeComponent(cartId)}/items/${Uri.encodeComponent(itemId)}',
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Applies a discount code (`POST /carts/{id}/discount_codes`
  /// with `{code}`; verified contract §4, SRC 672).
  Future<Cart> applyDiscountCode(
    String cartId, {
    required String code,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/discount_codes',
      body: <String, Object?>{'code': code},
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Removes a discount code
  /// (`DELETE /carts/{id}/discount_codes/{id}`, where the path segment
  /// carries the code string — verified contract §4, SRC 683).
  Future<Cart> removeDiscountCode(
    String cartId,
    String code, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'DELETE',
      '/carts/${Uri.encodeComponent(cartId)}/discount_codes/${Uri.encodeComponent(code)}',
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Applies a gift card (`POST /carts/{id}/gift_cards` with `{code}`;
  /// the cart total is unchanged while `amount_due` drops — verified
  /// contract §4, SRC 698).
  Future<Cart> applyGiftCard(
    String cartId, {
    required String code,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/gift_cards',
      body: <String, Object?>{'code': code},
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Removes a gift card (`DELETE /carts/{id}/gift_cards/{id}`, where the
  /// path segment carries the code string — verified contract §4,
  /// SRC 709).
  Future<Cart> removeGiftCard(
    String cartId,
    String code, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'DELETE',
      '/carts/${Uri.encodeComponent(cartId)}/gift_cards/${Uri.encodeComponent(code)}',
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Selects the delivery rate of a fulfillment
  /// (`PATCH /carts/{id}/fulfillments/{id}`; verified contract §4,
  /// SRC 727).
  Future<Cart> selectFulfillmentRate(
    String cartId,
    String fulfillmentId, {
    required UpdateFulfillmentParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/carts/${Uri.encodeComponent(cartId)}/fulfillments/${Uri.encodeComponent(fulfillmentId)}',
      body: params.toJson(),
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Creates a direct payment for non-session methods such as check or
  /// cash on delivery (`POST /carts/{id}/payments`; verified contract §4,
  /// SRC 747). Never retried without an explicit `Idempotency-Key`.
  Future<Payment> createPayment(
    String cartId, {
    required CreatePaymentParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/payments',
      body: params.toJson(),
      options: options,
    );
    return Payment.fromJson(_asMap(json));
  }

  /// Applies store credit (`POST /carts/{id}/store_credits`).
  ///
  /// [amount] is a decimal string (never a number); omitting it applies
  /// the maximum usable credit (verified contract §4, SRC 819).
  Future<Cart> applyStoreCredit(
    String cartId, {
    String? amount,
    RequestOptions? options,
  }) async {
    final Map<String, Object?> body = <String, Object?>{};
    if (amount != null) {
      body['amount'] = amount;
    }
    final Object? json = await _client.request(
      'POST',
      '/carts/${Uri.encodeComponent(cartId)}/store_credits',
      body: body,
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }

  /// Removes store credit (`DELETE /carts/{id}/store_credits`; verified
  /// contract §4, SRC 829).
  Future<Cart> removeStoreCredit(
    String cartId, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'DELETE',
      '/carts/${Uri.encodeComponent(cartId)}/store_credits',
      options: options,
    );
    return Cart.fromJson(_asMap(json));
  }
}
