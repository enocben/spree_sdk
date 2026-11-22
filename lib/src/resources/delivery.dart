/// Delivery method operations (Store API).
///
/// Contracts: `docs/research/store-api-contract.md` §3
/// (`GET /delivery_methods`,
/// `GET /delivery_methods/{id}/pickup_locations`); parity matrix row 8.
/// Auth: publishable key only (`KEY`).
///
/// P2 exclusions (not implemented): single-get delivery method
/// (`GET /delivery_methods/{id}`) and third-party pickup points
/// (`GET /delivery_methods/{id}/pickup_points`) — both are called by the TS
/// SDK but absent from `store.yaml` at the pinned SHA (open-questions.md
/// Q1, contract §9). They must not be implemented until the server route is
/// confirmed.
library;

import '../client.dart';
import '../models/cart.dart';
import '../models/meta.dart';
import '../transport/request_options.dart';

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

/// Delivery method operations.
///
/// Upstream: `deliveryMethods.list` (SRC 411),
/// `deliveryMethods.pickupLocations` (SRC 428).
class DeliveryMethodsResource {
  /// Creates a delivery-method resource bound to [SpreeClient].
  const DeliveryMethodsResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists delivery methods (`GET /delivery_methods`).
  ///
  /// The `fulfillment_type` query value is verified (contract §3, SRC 411):
  /// one of `shipping`, `digital`, `pickup`, `pickup_point` (see
  /// [FulfillmentType]). An `unknown` value is never sent.
  Future<List<DeliveryMethod>> list({
    FulfillmentType? fulfillmentType,
    RequestOptions? options,
  }) async {
    final Map<String, String> query = <String, String>{};
    if (fulfillmentType != null && fulfillmentType != FulfillmentType.unknown) {
      query['fulfillment_type'] = fulfillmentType.toJson();
    }
    final Object? json = await _client.request(
      'GET',
      '/delivery_methods',
      query: query,
      options: options,
    );
    final Map<String, Object?> map = _asMap(json);
    final Object? data = map['data'];
    if (data is! List) {
      throw StateError('Expected a list response with a data list.');
    }
    return data.map((Object? e) {
      if (e is Map<String, Object?>) {
        return DeliveryMethod.fromJson(e);
      }
      return DeliveryMethod.fromJson(Map<String, Object?>.from(e as Map));
    }).toList();
  }

  /// Lists the pickup locations of a delivery method
  /// (`GET /delivery_methods/{id}/pickup_locations`).
  ///
  /// The optional `cart_id` query narrows locations to the given cart
  /// (verified contract §3, SRC 428).
  Future<List<StockLocation>> pickupLocations(
    String deliveryMethodId, {
    String? cartId,
    RequestOptions? options,
  }) async {
    final Map<String, String> query = <String, String>{};
    if (cartId != null && cartId.isNotEmpty) {
      query['cart_id'] = cartId;
    }
    final Object? json = await _client.request(
      'GET',
      '/delivery_methods/${Uri.encodeComponent(deliveryMethodId)}/pickup_locations',
      query: query,
      options: options,
    );
    final Map<String, Object?> map = _asMap(json);
    final Object? data = map['data'];
    if (data is! List) {
      throw StateError('Expected a list response with a data list.');
    }
    return data.map((Object? e) {
      if (e is Map<String, Object?>) {
        return StockLocation.fromJson(e);
      }
      return StockLocation.fromJson(Map<String, Object?>.from(e as Map));
    }).toList();
  }
}
