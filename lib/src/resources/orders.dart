/// Post-purchase order reads (Store API only).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `packages/sdk/src/store-client.ts` (`orders.get` SRC 853,
///   `customer.orders.list` SRC 1250, `customer.orders.get` SRC 1263);
/// * contracts: `docs/research/store-api-contract.md` sections 5 and 7.
///
/// Auth: `orders.get` accepts a customer JWT (`RequestOptions.token`, or the
/// client's `AuthTokenProvider`) **or** a guest order token
/// (`RequestOptions(spreeToken: …)`, sent as `x-spree-token`). It also
/// accepts the cart id the checkout was placed from. Customer history reads
/// require the JWT.
library;

import '../client.dart';
import '../models/order.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// Reads for completed orders: guest-capable single get plus the
/// authenticated customer's order history.
class OrdersResource {
  /// Creates an orders resource bound to [SpreeClient].
  const OrdersResource(this._client);

  final SpreeClient _client;

  /// Fetches one completed order.
  ///
  /// `GET /orders/{id}` (verified: SPEC path, SRC 853). Returns an [Order],
  /// or an [OrderGroup] when the checkout reached several sellers — narrow
  /// the result with [isOrderGroup], exactly as `carts.complete` answers.
  /// Accepts the cart id the checkout was placed from in place of the
  /// order id. Auth: JWT **or** guest `spreeToken`.
  Future<Object> get(
    String id, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/orders/$id',
      query: ListQuery(expand: expand, fields: fields).toQueryParameters(),
      options: options,
    );
    if (json is Map<String, Object?> && isOrderGroup(json)) {
      return OrderGroup.fromJson(json);
    }
    return Order.fromJson(json as Map<String, Object?>);
  }

  /// Lists completed orders for the authenticated customer.
  ///
  /// `GET /customers/me/orders` (verified: SPEC path, SRC 1250). Auth: JWT.
  Future<PaginatedResponse<Order>> listCustomerOrders({
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Order>(
      'GET',
      '/customers/me/orders',
      list: query,
      options: options,
      fromJson: (Object? item) => Order.fromJson(item as Map<String, Object?>),
    );
  }

  /// Fetches one completed order of the authenticated customer by prefixed id.
  ///
  /// `GET /customers/me/orders/{id}` (verified: SPEC path, SRC 1263).
  /// Auth: JWT. Always an [Order] (never a group).
  Future<Order> getCustomerOrder(
    String id, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/customers/me/orders/$id',
      query: ListQuery(expand: expand, fields: fields).toQueryParameters(),
      options: options,
    );
    return Order.fromJson(json as Map<String, Object?>);
  }
}
