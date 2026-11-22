/// Catalog taxonomy operations: categories, sellers, collections
/// (Store API).
///
/// Contracts: `doc/research/store-api-contract.md` §2
/// (`GET /categories[/{id}]`, `GET /sellers[/{id}]`,
/// `GET /collections[/{id}]`, `GET /collections/{id}/products`);
/// parity matrix row 6. Auth: publishable key only (`KEY`).
library;

import '../client.dart';
import '../models/product.dart';
import '../models/taxons.dart';
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

/// Joins `expand`/`fields` into query parameters shared by single-get ops.
Map<String, String> _sparseQuery({List<String>? expand, List<String>? fields}) {
  final Map<String, String> query = <String, String>{};
  if (expand != null && expand.isNotEmpty) {
    query['expand'] = expand.join(',');
  }
  if (fields != null && fields.isNotEmpty) {
    query['fields'] = fields.join(',');
  }
  return query;
}

/// Category operations.
///
/// Upstream: `categories.list` (SRC 228), `categories.get` (SRC 240).
class CategoriesResource {
  /// Creates a category resource bound to [SpreeClient].
  const CategoriesResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists categories (`GET /categories`).
  Future<PaginatedResponse<Category>> list({
    int? page,
    int? limit,
    List<String>? expand,
    List<String>? fields,
    String? sort,
    Map<String, String>? filter,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Category>(
      'GET',
      '/categories',
      list: ListQuery(
        page: page,
        limit: limit,
        expand: expand,
        fields: fields,
        sort: sort,
        filter: filter,
      ),
      options: options,
      fromJson: (Object? json) => Category.fromJson(_asMap(json)),
    );
  }

  /// Fetches one category by id or permalink (`GET /categories/{id}`).
  Future<Category> get(
    String idOrPermalink, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/categories/${Uri.encodeComponent(idOrPermalink)}',
      query: _sparseQuery(expand: expand, fields: fields),
      options: options,
    );
    return Category.fromJson(_asMap(json));
  }
}

/// Seller operations.
///
/// Upstream: `sellers.list` (SRC 269), `sellers.get` (SRC 279).
class SellersResource {
  /// Creates a seller resource bound to [SpreeClient].
  const SellersResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists sellers (`GET /sellers`).
  Future<PaginatedResponse<Seller>> list({
    int? page,
    int? limit,
    List<String>? expand,
    List<String>? fields,
    String? sort,
    Map<String, String>? filter,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Seller>(
      'GET',
      '/sellers',
      list: ListQuery(
        page: page,
        limit: limit,
        expand: expand,
        fields: fields,
        sort: sort,
        filter: filter,
      ),
      options: options,
      fromJson: (Object? json) => Seller.fromJson(_asMap(json)),
    );
  }

  /// Fetches one seller by id or slug (`GET /sellers/{id}`).
  Future<Seller> get(
    String idOrSlug, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/sellers/${Uri.encodeComponent(idOrSlug)}',
      query: _sparseQuery(expand: expand, fields: fields),
      options: options,
    );
    return Seller.fromJson(_asMap(json));
  }
}

/// Collection operations.
///
/// Upstream: `collections.list` (SRC 294), `collections.get` (SRC 306),
/// `collections.products.list` (SRC 324).
class CollectionsResource {
  /// Creates a collection resource bound to [SpreeClient].
  const CollectionsResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists collections (`GET /collections`).
  Future<PaginatedResponse<Collection>> list({
    int? page,
    int? limit,
    List<String>? expand,
    List<String>? fields,
    String? sort,
    Map<String, String>? filter,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Collection>(
      'GET',
      '/collections',
      list: ListQuery(
        page: page,
        limit: limit,
        expand: expand,
        fields: fields,
        sort: sort,
        filter: filter,
      ),
      options: options,
      fromJson: (Object? json) => Collection.fromJson(_asMap(json)),
    );
  }

  /// Fetches one collection by id or permalink
  /// (`GET /collections/{id}`).
  Future<Collection> get(
    String idOrPermalink, {
    List<String>? expand,
    List<String>? fields,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/collections/${Uri.encodeComponent(idOrPermalink)}',
      query: _sparseQuery(expand: expand, fields: fields),
      options: options,
    );
    return Collection.fromJson(_asMap(json));
  }

  /// Lists the products of a collection
  /// (`GET /collections/{id}/products`).
  Future<PaginatedResponse<Product>> products(
    String collectionId, {
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
      '/collections/${Uri.encodeComponent(collectionId)}/products',
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
}
