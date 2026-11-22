/// Customer returns on an order (Store API only).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `packages/sdk/src/store-client.ts` (`orders.returns.list` SRC 872,
///   `orders.returns.create` SRC 897);
/// * contracts: `docs/research/store-api-contract.md` section 5.
///
/// P2 scope excluded by the owner: the single-get
/// (`GET /orders/{id}/returns/{id}`) has no SPEC path and the shipping-label
/// path helper is client-side only — neither is implemented here.
library;

import '../client.dart';
import '../models/params_orders.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// Lists and opens returns on a completed order.
class OrderReturnsResource {
  /// Creates a returns resource bound to [client].
  const OrderReturnsResource(this._client);

  final SpreeClient _client;

  /// Lists returns opened on an order.
  ///
  /// `GET /orders/{id}/returns` (verified: SPEC path, SRC 872).
  /// Auth: JWT or guest `spreeToken`.
  Future<PaginatedResponse<Return>> list(
    String orderId, {
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Return>(
      'GET',
      '/orders/$orderId/returns',
      list: query,
      options: options,
      fromJson: (Object? item) => Return.fromJson(item as Map<String, Object?>),
    );
  }

  /// Opens a return on an order.
  ///
  /// `POST /orders/{id}/returns` (verified: SPEC path, SRC 897).
  /// `params.items` references shipped units via `fulfillment_item_id`
  /// (verified SRC comment). A rejected request surfaces as a 422
  /// (verified: `returns.create.validate`); the client surfaces it as an
  /// `SpreeHttpError` with the envelope code — callers match on status
  /// 422 rather than retrying. Auth: JWT or guest `spreeToken`.
  /// Never retried blindly (AGENTS.md section 3.9: non-idempotent mutation).
  Future<Return> create(
    String orderId,
    CreateReturnParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/orders/$orderId/returns',
      body: params.toJson(),
      options: options,
    );
    return Return.fromJson(json as Map<String, Object?>);
  }
}
