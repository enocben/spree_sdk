import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:spree_sdk/src/client.dart';
import 'package:spree_sdk/src/errors/http_error.dart';
import 'package:spree_sdk/src/resources/storefront_meta.dart';
import 'package:test/test.dart';

import '../../models/fixture_helpers.dart';

class _Call {
  _Call(this.request, this.body);

  final http.BaseRequest request;
  final String body;
}

SpreeClient _client(List<_Call> calls, http.Response Function() respond) {
  return SpreeClient(
    baseUrl: Uri.parse('https://api.mystore.com'),
    publishableKey: 'pk_test_123',
    httpClient: MockClient((http.BaseRequest request) async {
      calls.add(_Call(request, request is http.Request ? request.body : ''));
      return respond();
    }),
  );
}

http.Response _json(Object body, [int status = 200]) {
  return http.Response(
    jsonEncode(body),
    status,
    headers: <String, String>{'content-type': 'application/json'},
  );
}

Map<String, Object?> _list(Object item) => <String, Object?>{
  'data': <Object?>[item],
};

http.Response _listResponse(String fixture) =>
    _json(_list(loadFixture(fixture)));

void _expectKeyHeader(http.BaseRequest sent) {
  expect(sent.headers['x-spree-api-key'], equals('pk_test_123'));
  expect(sent.headers['accept'], equals('application/json'));
}

void main() {
  group('CountriesResource', () {
    test('list sends GET /countries', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _listResponse('country_us.json'),
      );
      addTearDown(client.close);

      final countries = await CountriesResource(client).list();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/countries'));
      _expectKeyHeader(calls.single.request);
      expect(countries.single.iso.value, equals('US'));
    });

    test('get sends GET /countries/{iso} with expand', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('country_us.json')),
      );
      addTearDown(client.close);

      final country = await CountriesResource(client)
          .get('US', expand: ['states']);

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/countries/US'),
      );
      expect(
        calls.single.request.url.queryParameters['expand'],
        equals('states'),
      );
      expect(country.name, equals('United States'));
    });

    test('get surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'not_found',
            'message': 'Not found',
          },
        }, 404),
      );
      addTearDown(client.close);

      expect(
        () => CountriesResource(client).get('XX'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('CurrenciesResource', () {
    test('list sends GET /currencies', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _listResponse('currency_usd.json'),
      );
      addTearDown(client.close);

      final currencies = await CurrenciesResource(client).list();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/currencies'));
      _expectKeyHeader(calls.single.request);
      expect(currencies.single.isoCode.value, equals('USD'));
    });
  });

  group('LocalesResource', () {
    test('list sends GET /locales', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _listResponse('locale_en.json'),
      );
      addTearDown(client.close);

      final locales = await LocalesResource(client).list();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/locales'));
      _expectKeyHeader(calls.single.request);
      expect(locales.single.code.value, equals('en-US'));
    });
  });

  group('ChannelResource', () {
    test('get sends GET /channel', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('channel_default.json')),
      );
      addTearDown(client.close);

      final channel = await ChannelResource(client).get();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/channel'));
      _expectKeyHeader(calls.single.request);
      expect(channel.code, equals('default'));
    });
  });

  group('StoreResource', () {
    test('get sends GET /store', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('store.json')),
      );
      addTearDown(client.close);

      final store = await StoreResource(client).get();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/store'));
      _expectKeyHeader(calls.single.request);
      expect(store.name, equals('Example Store'));
    });
  });

  group('PoliciesResource', () {
    test('list sends GET /policies', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _listResponse('policy.json'),
      );
      addTearDown(client.close);

      final policies = await PoliciesResource(client).list();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/policies'));
      _expectKeyHeader(calls.single.request);
      expect(policies.single.slug, equals('returns'));
    });

    test('get sends GET /policies/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('policy.json')),
      );
      addTearDown(client.close);

      final policy = await PoliciesResource(client).get('pol_001');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/policies/pol_001'),
      );
      expect(policy.name, equals('Returns'));
    });

    test('get surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'not_found',
            'message': 'Not found',
          },
        }, 404),
      );
      addTearDown(client.close);

      expect(
        () => PoliciesResource(client).get('missing'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });

  group('MarketsResource', () {
    test('list sends GET /markets', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _listResponse('market_default.json'),
      );
      addTearDown(client.close);

      final markets = await MarketsResource(client).list();

      expect(calls.single.request.method, equals('GET'));
      expect(calls.single.request.url.path, equals('/api/v3/store/markets'));
      _expectKeyHeader(calls.single.request);
      expect(markets.single.name, equals('Default'));
    });

    test('get sends GET /markets/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('market_default.json')),
      );
      addTearDown(client.close);

      final market = await MarketsResource(client).get('mkt_001');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/markets/mkt_001'),
      );
      expect(market.name, equals('Default'));
    });

    test('resolve sends GET /markets/resolve with country', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('market_default.json')),
      );
      addTearDown(client.close);

      final market = await MarketsResource(client).resolve('US');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/markets/resolve'),
      );
      expect(calls.single.request.url.queryParameters['country'], equals('US'));
      expect(market.id, equals('mkt_001'));
    });

    test('countries sends GET /markets/{id}/countries', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _listResponse('country_us.json'),
      );
      addTearDown(client.close);

      final countries = await MarketsResource(client).countries('mkt_001');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/markets/mkt_001/countries'),
      );
      expect(countries.single.iso.value, equals('US'));
    });

    test('country sends GET /markets/{id}/countries/{id}', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(loadFixture('country_us.json')),
      );
      addTearDown(client.close);

      final country = await MarketsResource(client).country('mkt_001', 'US');

      expect(calls.single.request.method, equals('GET'));
      expect(
        calls.single.request.url.path,
        equals('/api/v3/store/markets/mkt_001/countries/US'),
      );
      expect(country.name, equals('United States'));
    });

    test('resolve surfaces 404 as SpreeHttpError', () async {
      final List<_Call> calls = <_Call>[];
      final SpreeClient client = _client(
        calls,
        () => _json(<String, Object?>{
          'error': <String, Object?>{
            'code': 'not_found',
            'message': 'No market',
          },
        }, 404),
      );
      addTearDown(client.close);

      expect(
        () => MarketsResource(client).resolve('XX'),
        throwsA(isA<SpreeHttpError>()),
      );
    });
  });
}
