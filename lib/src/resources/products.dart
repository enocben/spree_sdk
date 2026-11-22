/// Catalog product operations (Store API).
///
/// Contracts: `docs/research/store-api-contract.md` §2
/// (`GET /products`, `GET /products/{id}`, `GET /products/filters`);
/// parity matrix rows 5–6. Auth: publishable key only (`KEY`).
library;

import '../client.dart';
import '../models/product.dart';
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

/// Catalog product operations.
///
/// Upstream: `products.list` (SRC 184), `products.get` (SRC 196),
/// `products.filters` (SRC 210) in `packages/sdk/src/store-client.ts`.
class ProductsResource {
  /// Creates a product resource bound to [SpreeClient].
  const ProductsResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists products (`GET /products`).
  ///
  /// [filter] entries are wrapped as `q[…]` (Ransack) per the verified
  /// global query conventions (contract §0).
  Future<PaginatedResponse<Product>> list({
    int? page,
    int? limit,
    List<String>? expand,
    List<String>? fields,
    String? sort,
    Map<String, String>? filter,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Product>(
      'GET',
      '/products',
      list: ListQuery(
        page: page,
        limit: limit,
        expand: expand,
        fields: fields,
        sort: sort,
        filter: filter,
      ),
      options: options,
      fromJson: (Object? json) => Product.fromJson(_asMap(json)),
    );
  }

  /// Fetches one product by id or slug (`GET /products/{idOrSlug}`).
  Future<Product> get(
    String idOrSlug, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Map<String, String> query = <String, String>{};
    if (expand != null && expand.isNotEmpty) {
      query['expand'] = expand.join(',');
    }
    if (fields != null && fields.isNotEmpty) {
      query['fields'] = fields.join(',');
    }
    final Object? json = await _client.request(
      'GET',
      '/products/${Uri.encodeComponent(idOrSlug)}',
      query: query,
      options: options,
    );
    return Product.fromJson(_asMap(json));
  }

  /// Fetches product listing facets (`GET /products/filters`).
  ///
  /// [filter] entries are wrapped as `q[…]` (the TS SDK splits `q` out
  /// specially via `getFiltersParams`; verified contract §2). No other
  /// query parameter is documented for this route, so none is sent.
  Future<ProductFiltersResponse> filters({
    Map<String, String>? filter,
    RequestOptions? options,
  }) async {
    final Map<String, String> query = <String, String>{};
    if (filter != null) {
      for (final MapEntry<String, String> entry in filter.entries) {
        query['q[${entry.key}]'] = entry.value;
      }
    }
    final Object? json = await _client.request(
      'GET',
      '/products/filters',
      query: query,
      options: options,
    );
    return ProductFiltersResponse.fromJson(_asMap(json));
  }
}
