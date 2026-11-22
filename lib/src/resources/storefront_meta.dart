/// Storefront reference-data operations: countries, currencies, locales,
/// channel, store, policies, markets (Store API).
///
/// Contracts: `doc/research/store-api-contract.md` §3
/// (`GET /countries[/{iso}]`, `GET /currencies`, `GET /locales`,
/// `GET /channel`, `GET /store`, `GET /policies[/{id}]`,
/// `GET /markets[/{id}]`, `GET /markets/resolve`,
/// `GET /markets/{id}/countries[/{id}]`); parity matrix row 7.
/// Auth: publishable key only (`KEY`).
library;

import '../client.dart';
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

/// Extracts the `data` list of a non-paginated `ListResponse` envelope
/// (`{"data": [...]}`; verified contract §0).
List<T> _dataList<T>(Object? json, T Function(Map<String, Object?>) parse) {
  final Map<String, Object?> map = _asMap(json);
  final Object? data = map['data'];
  if (data is! List) {
    throw StateError('Expected a list response with a data list.');
  }
  return data.map((Object? e) {
    if (e is Map<String, Object?>) {
      return parse(e);
    }
    if (e is Map) {
      return parse(Map<String, Object?>.from(e));
    }
    throw StateError('Expected a JSON object in the data list.');
  }).toList();
}

/// Country operations.
///
/// Upstream: `countries.list` (SRC 345), `countries.get` (SRC 353).
class CountriesResource {
  /// Creates a country resource bound to [SpreeClient].
  const CountriesResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists countries (`GET /countries`).
  Future<List<Country>> list({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/countries',
      options: options,
    );
    return _dataList<Country>(json, Country.fromJson);
  }

  /// Fetches one country by ISO code (`GET /countries/{iso}`).
  Future<Country> get(
    String iso, {
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
      '/countries/${Uri.encodeComponent(iso)}',
      query: query,
      options: options,
    );
    return Country.fromJson(_asMap(json));
  }
}

/// Currency operations.
///
/// Upstream: `currencies.list` (SRC 368).
class CurrenciesResource {
  /// Creates a currency resource bound to [SpreeClient].
  const CurrenciesResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists currencies (`GET /currencies`).
  Future<List<Currency>> list({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/currencies',
      options: options,
    );
    return _dataList<Currency>(json, Currency.fromJson);
  }
}

/// Locale operations.
///
/// Upstream: `locales.list` (SRC 376).
class LocalesResource {
  /// Creates a locale resource bound to [SpreeClient].
  const LocalesResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists locales (`GET /locales`).
  Future<List<SpreeLocale>> list({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/locales',
      options: options,
    );
    return _dataList<SpreeLocale>(json, SpreeLocale.fromJson);
  }
}

/// Channel operations.
///
/// Upstream: `channel.get` (SRC 388).
class ChannelResource {
  /// Creates a channel resource bound to [SpreeClient].
  const ChannelResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Fetches the current channel (`GET /channel`).
  Future<Channel> get({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/channel',
      options: options,
    );
    return Channel.fromJson(_asMap(json));
  }
}

/// Store operations.
///
/// Upstream: `store.get` (SRC 398).
class StoreResource {
  /// Creates a store resource bound to [SpreeClient].
  const StoreResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Fetches the store settings (`GET /store`).
  Future<Store> get({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/store',
      options: options,
    );
    return Store.fromJson(_asMap(json));
  }
}

/// Policy operations.
///
/// Upstream: `policies.list` (SRC 459), `policies.get` (SRC 466).
class PoliciesResource {
  /// Creates a policy resource bound to [SpreeClient].
  const PoliciesResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists policies (`GET /policies`).
  Future<List<Policy>> list({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/policies',
      options: options,
    );
    return _dataList<Policy>(json, Policy.fromJson);
  }

  /// Fetches one policy (`GET /policies/{id}`).
  Future<Policy> get(String id, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/policies/${Uri.encodeComponent(id)}',
      options: options,
    );
    return Policy.fromJson(_asMap(json));
  }
}

/// Market operations, including market countries.
///
/// Upstream: `markets.list` (SRC 478), `markets.get` (SRC 485),
/// `markets.resolve` (SRC 492), `markets.countries.list` (SRC 506),
/// `markets.countries.get` (SRC 519).
class MarketsResource {
  /// Creates a market resource bound to [SpreeClient].
  const MarketsResource(this._client);

  /// Underlying Store API client.
  final SpreeClient _client;

  /// Lists markets (`GET /markets`).
  Future<List<Market>> list({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/markets',
      options: options,
    );
    return _dataList<Market>(json, Market.fromJson);
  }

  /// Fetches one market (`GET /markets/{id}`).
  Future<Market> get(String id, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/markets/${Uri.encodeComponent(id)}',
      options: options,
    );
    return Market.fromJson(_asMap(json));
  }

  /// Resolves the market for a country (`GET /markets/resolve?country=…`).
  ///
  /// The `country` query parameter is verified (contract §3, SRC 492).
  Future<Market> resolve(String country, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/markets/resolve',
      query: <String, String>{'country': country},
      options: options,
    );
    return Market.fromJson(_asMap(json));
  }

  /// Lists the countries of a market (`GET /markets/{id}/countries`).
  Future<List<Country>> countries(
    String marketId, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/markets/${Uri.encodeComponent(marketId)}/countries',
      options: options,
    );
    return _dataList<Country>(json, Country.fromJson);
  }

  /// Fetches one market country (`GET /markets/{id}/countries/{id}`).
  Future<Country> country(
    String marketId,
    String id, {
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
      '/markets/${Uri.encodeComponent(marketId)}/countries/${Uri.encodeComponent(id)}',
      query: query,
      options: options,
    );
    return Country.fromJson(_asMap(json));
  }
}
