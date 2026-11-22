/// Customer-account resource for the Spree Store API (Phase 05 group A).
///
/// Verified contracts (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `doc/research/store-api-contract.md` §7 — `customer.get/update`
///   (`GET`/`PATCH /customers/me`) and `customer.addresses.*` CRUD paths,
///   all KEY+JWT (the `/customers/me` surface is the authenticated surface;
///   see `doc/research/authentication-flows.md` §3);
/// * response shapes: `Customer` and `Address` (SPEC serializers, shared
///   with the cart models).
///
/// Auth rule (AGENTS.md §6): every operation below requires the customer
/// JWT — pass it explicitly per call via [RequestOptions.token] (or a
/// configured provider). No credentials are persisted and mutations are
/// never retried by this resource.
library;

import '../client.dart';
import '../errors/decode_error.dart';
import '../models/customer.dart';
import '../models/params_auth.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

export '../models/params_auth.dart' show AddressParams, UpdateCustomerParams;

/// Throws [SpreeDecodeError] unless [json] is a JSON object.
Map<String, Object?> _asObject(Object? json, String operation) {
  if (json is Map<String, Object?>) {
    return json;
  }
  if (json is Map) {
    return json.map(
      (Object? key, Object? value) =>
          MapEntry<String, Object?>(key.toString(), value),
    );
  }
  throw SpreeDecodeError(
    expected: '$operation response object',
    actual: json == null ? 'null' : json.runtimeType.toString(),
  );
}

/// Authenticated customer profile (`/customers/me`) with the nested
/// address-book resource at [addresses] (mirrors the TS SDK
/// `customer.addresses.*` nesting).
///
/// ```dart
/// final customers = CustomerResource(client);
/// final Customer me = await customers.get(
///   options: RequestOptions(token: jwt),
/// );
/// ```
class CustomerResource {
  /// Creates a customer resource bound to [SpreeClient].
  const CustomerResource(this.client);

  /// The Store API client used for every operation.
  final SpreeClient client;

  /// Nested address-book operations.
  CustomerAddressesResource get addresses => CustomerAddressesResource(client);

  /// `GET /customers/me` → [Customer]. Auth: KEY+JWT.
  Future<Customer> get({RequestOptions? options}) async {
    final Object? json = await client.request(
      'GET',
      '/customers/me',
      options: options,
    );
    return Customer.fromJson(_asObject(json, 'customer.get'));
  }

  /// `PATCH /customers/me` → updated [Customer]. Auth: KEY+JWT.
  /// Throws [SpreeHttpError] on 422 validation failures.
  Future<Customer> update({
    required UpdateCustomerParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'PATCH',
      '/customers/me',
      body: params.toJson(),
      options: options,
    );
    return Customer.fromJson(_asObject(json, 'customer.update'));
  }
}

/// Address-book CRUD (`/customers/me/addresses`). Auth: KEY+JWT on every
/// operation.
class CustomerAddressesResource {
  /// Creates an address-book resource bound to [SpreeClient].
  const CustomerAddressesResource(this.client);

  /// The Store API client used for every operation.
  final SpreeClient client;

  /// `GET /customers/me/addresses` → paged [Address] entries.
  Future<PaginatedResponse<Address>> list({
    ListQuery? list,
    Map<String, String>? query,
    RequestOptions? options,
  }) async {
    final Map<String, String> merged = <String, String>{
      ...?list?.toQueryParameters(),
      ...?query,
    };
    return client.requestPaginated<Address>(
      'GET',
      '/customers/me/addresses',
      query: merged,
      options: options,
      fromJson: (Object? item) =>
          Address.fromJson(_asObject(item, 'addresses.list')),
    );
  }

  /// `GET /customers/me/addresses/{id}` → single [Address].
  Future<Address> get(String id, {RequestOptions? options}) async {
    final Object? json = await client.request(
      'GET',
      '/customers/me/addresses/$id',
      options: options,
    );
    return Address.fromJson(_asObject(json, 'addresses.get'));
  }

  /// `POST /customers/me/addresses` → created [Address].
  /// Throws [SpreeHttpError] on 422 validation failures.
  Future<Address> create({
    required AddressParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/customers/me/addresses',
      body: params.toJson(),
      options: options,
    );
    return Address.fromJson(_asObject(json, 'addresses.create'));
  }

  /// `PATCH /customers/me/addresses/{id}` → updated [Address].
  /// Throws [SpreeHttpError] on 422 validation failures.
  Future<Address> update(
    String id, {
    required AddressParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'PATCH',
      '/customers/me/addresses/$id',
      body: params.toJson(),
      options: options,
    );
    return Address.fromJson(_asObject(json, 'addresses.update'));
  }

  /// `DELETE /customers/me/addresses/{id}` → `void`.
  Future<void> delete(String id, {RequestOptions? options}) async {
    await client.request(
      'DELETE',
      '/customers/me/addresses/$id',
      options: options,
    );
  }
}
