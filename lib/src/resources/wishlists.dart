/// Wishlists and wishlist items (Store API only).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `packages/sdk/src/store-client.ts` (`wishlists.list` SRC 1540,
///   `wishlists.get` SRC 1553, `wishlists.create` SRC 1562,
///   `wishlists.update` SRC 1575, `wishlists.delete` SRC 1584,
///   `wishlists.items.create` SRC 1598, `wishlists.items.update` SRC 1612,
///   `wishlists.items.delete` SRC 1621);
/// * contracts: `docs/research/store-api-contract.md` section 8.
///
/// Auth: account-scoped; the customer JWT is required.
library;

import '../client.dart';
import '../models/params_orders.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// Wishlists of the authenticated customer.
class WishlistsResource {
  /// Creates a wishlists resource bound to [SpreeClient].
  const WishlistsResource(this._client);

  final SpreeClient _client;

  /// Lists wishlists.
  ///
  /// `GET /wishlists` (verified: SPEC path, SRC 1540).
  Future<PaginatedResponse<Wishlist>> list({
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Wishlist>(
      'GET',
      '/wishlists',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          Wishlist.fromJson(item as Map<String, Object?>),
    );
  }

  /// Fetches one wishlist by id.
  ///
  /// `GET /wishlists/{id}` (verified: SPEC path, SRC 1553).
  Future<Wishlist> get(
    String id, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/wishlists/$id',
      query: ListQuery(expand: expand, fields: fields).toQueryParameters(),
      options: options,
    );
    return Wishlist.fromJson(json as Map<String, Object?>);
  }

  /// Creates a wishlist.
  ///
  /// `POST /wishlists` (verified: SPEC path, SRC 1562).
  Future<Wishlist> create(
    CreateWishlistParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/wishlists',
      body: params.toJson(),
      options: options,
    );
    return Wishlist.fromJson(json as Map<String, Object?>);
  }

  /// Updates a wishlist.
  ///
  /// `PATCH /wishlists/{id}` (verified: SPEC path, SRC 1575).
  Future<Wishlist> update(
    String id,
    UpdateWishlistParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/wishlists/$id',
      body: params.toJson(),
      options: options,
    );
    return Wishlist.fromJson(json as Map<String, Object?>);
  }

  /// Deletes a wishlist.
  ///
  /// `DELETE /wishlists/{id}` (verified: SPEC path, SRC 1584). Resolves on
  /// 2xx with no body.
  Future<void> delete(String id, {RequestOptions? options}) async {
    await _client.request('DELETE', '/wishlists/$id', options: options);
  }
}

/// Items on one wishlist.
class WishlistItemsResource {
  /// Creates a wishlist-items resource bound to [SpreeClient].
  const WishlistItemsResource(this._client);

  final SpreeClient _client;

  /// Adds an item to a wishlist.
  ///
  /// `POST /wishlists/{id}/items` (verified: SPEC path, SRC 1598).
  Future<WishlistItem> create(
    String wishlistId,
    CreateWishlistItemParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/wishlists/$wishlistId/items',
      body: params.toJson(),
      options: options,
    );
    return WishlistItem.fromJson(json as Map<String, Object?>);
  }

  /// Updates a wishlist item.
  ///
  /// `PATCH /wishlists/{id}/items/{id}` (verified: SPEC path, SRC 1612).
  Future<WishlistItem> update(
    String wishlistId,
    String itemId,
    UpdateWishlistItemParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/wishlists/$wishlistId/items/$itemId',
      body: params.toJson(),
      options: options,
    );
    return WishlistItem.fromJson(json as Map<String, Object?>);
  }

  /// Removes an item from a wishlist.
  ///
  /// `DELETE /wishlists/{id}/items/{id}` (verified: SPEC path, SRC 1621).
  /// Resolves on 2xx with no body.
  Future<void> delete(
    String wishlistId,
    String itemId, {
    RequestOptions? options,
  }) async {
    await _client.request(
      'DELETE',
      '/wishlists/$wishlistId/items/$itemId',
      options: options,
    );
  }
}
