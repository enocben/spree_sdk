/// Customer claims on an order (Store API only).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `packages/sdk/src/store-client.ts` (`orders.claims.list` SRC 925,
///   `orders.claims.create` SRC 949);
/// * contracts: `docs/research/store-api-contract.md` section 5.
///
/// P2 scope excluded by the owner: the single-get
/// (`GET /orders/{id}/claims/{id}`) has no SPEC path and is not implemented
/// here.
library;

import '../client.dart';
import '../models/params_orders.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// Lists and files claims on a completed order.
class OrderClaimsResource {
  /// Creates a claims resource bound to [SpreeClient].
  const OrderClaimsResource(this._client);

  final SpreeClient _client;

  /// Lists claims filed on an order.
  ///
  /// `GET /orders/{id}/claims` (verified: SPEC path, SRC 925).
  /// Auth: JWT or guest `spreeToken`.
  Future<PaginatedResponse<Claim>> list(
    String orderId, {
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Claim>(
      'GET',
      '/orders/$orderId/claims',
      list: query,
      options: options,
      fromJson: (Object? item) => Claim.fromJson(item as Map<String, Object?>),
    );
  }

  /// Files a claim on an order.
  ///
  /// `POST /orders/{id}/claims` (verified: SPEC path, SRC 949).
  /// `params.reasonId` is one of the store's claim reasons (verified SRC
  /// comment). Auth: JWT or guest `spreeToken`.
  /// Never retried blindly (AGENTS.md section 3.9: non-idempotent mutation).
  Future<Claim> create(
    String orderId,
    CreateClaimParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/orders/$orderId/claims',
      body: params.toJson(),
      options: options,
    );
    return Claim.fromJson(json as Map<String, Object?>);
  }
}
