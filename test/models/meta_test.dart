import 'package:spree_sdk/src/models/meta.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('Country', () {
    test('parses states and absent market', () {
      final country = Country.fromJson(loadFixture('country_us.json'));

      expect(country.iso, CountryCode.us);
      expect(country.iso3, 'USA');
      expect(country.statesRequired, isTrue);
      expect(country.zipcodeRequired, isTrue);
      expect(country.states, hasLength(2));
      expect(country.states!.first.abbr, 'NY');
      expect(country.market, isNull);
    });

    test('distinguishes absent / empty / populated states', () {
      Map<String, Object?> base() =>
          Map<String, Object?>.of(loadFixture('country_us.json'))
            ..remove('states');

      final absent = Country.fromJson(base());
      expect(absent.states, isNull);

      final empty = Country.fromJson(base()..['states'] = const []);
      expect(empty.states, isEmpty);

      final populated = Country.fromJson(loadFixture('country_us.json'));
      expect(populated.states, hasLength(2));
    });

    test('round-trips through toJson', () {
      final country = Country.fromJson(loadFixture('country_us.json'));
      expect(Country.fromJson(country.toJson()), equals(country));
    });
  });

  group('Currency / SpreeLocale / Channel / Store / Policy', () {
    test('parses reference records', () {
      final currency = Currency.fromJson(loadFixture('currency_usd.json'));
      expect(currency.isoCode, CurrencyCode.usd);
      expect(currency.decimalPlaces, 2);

      final locale = SpreeLocale.fromJson(loadFixture('locale_en.json'));
      expect(locale.code, LocaleCode.enUs);
      expect(locale.isDefault, isTrue);
      expect(locale.rtl, isFalse);

      final channel = Channel.fromJson(loadFixture('channel_default.json'));
      expect(channel.code, 'default');
      expect(channel.guestCheckout, isTrue);

      final store = Store.fromJson(loadFixture('store.json'));
      expect(store.name, 'Example Store');
      expect(store.customerSupportEmail, 'support@example.com');

      final policy = Policy.fromJson(loadFixture('policy.json'));
      expect(policy.slug, 'returns');
      expect(policy.body, '30-day returns.');
    });

    test('nullable store fields default to null when absent', () {
      final store = Store.fromJson(const <String, Object?>{
        'id': 'store_001',
        'name': 'Example Store',
      });
      expect(store.seoTitle, isNull);
      expect(store.logoUrl, isNull);
    });

    test('round-trips through toJson', () {
      expect(
        Currency.fromJson(
          Currency.fromJson(loadFixture('currency_usd.json')).toJson(),
        ),
        equals(Currency.fromJson(loadFixture('currency_usd.json'))),
      );
      final locale = SpreeLocale.fromJson(loadFixture('locale_en.json'));
      expect(SpreeLocale.fromJson(locale.toJson()), equals(locale));
      final market = Market.fromJson(loadFixture('market_default.json'));
      expect(Market.fromJson(market.toJson()), equals(market));
    });
  });

  group('Market', () {
    test('parses codes, locales and expanded countries', () {
      final market = Market.fromJson(loadFixture('market_default.json'));

      expect(market.currency, CurrencyCode.usd);
      expect(market.defaultLocale, LocaleCode.enUs);
      expect(market.countryCodes, [CountryCode.us, CountryCode.de]);
      expect(market.supportedLocales, [LocaleCode.enUs, LocaleCode.de]);
      expect(market.countries, hasLength(1));
      expect(market.countries!.first.iso, CountryCode.us);
    });
  });

  group('code enums', () {
    test('parse every documented wire value of the unit enums', () {
      expect(['g', 'kg', 'lb', 'oz'].map(WeightUnit.fromJson), [
        WeightUnit.g,
        WeightUnit.kg,
        WeightUnit.lb,
        WeightUnit.oz,
      ]);
      expect(['mm', 'cm', 'in', 'ft'].map(DimensionUnit.fromJson), [
        DimensionUnit.mm,
        DimensionUnit.cm,
        DimensionUnit.inch,
        DimensionUnit.ft,
      ]);
      expect(DimensionUnit.inch.toJson(), 'in');
    });

    test('reserved-word collisions keep exact wire values', () {
      expect(CountryCode.fromJson('IN'), CountryCode.india);
      expect(CountryCode.india.toJson(), 'IN');
      expect(CountryCode.fromJson('IS'), CountryCode.iceland);
      expect(CountryCode.fromJson('AS'), CountryCode.americanSamoa);
      expect(CountryCode.fromJson('DO'), CountryCode.dominicanRepublic);
      expect(CurrencyCode.fromJson('TRY'), CurrencyCode.turkishLira);
      expect(CurrencyCode.turkishLira.toJson(), 'TRY');
      expect(LocaleCode.fromJson('as'), LocaleCode.assamese);
      expect(LocaleCode.fromJson('is'), LocaleCode.icelandic);
      expect(LocaleCode.fromJson('zh-CN'), LocaleCode.zhCn);
      expect(LocaleCode.zhCn.toJson(), 'zh-CN');
      expect(LocaleCode.fromJson('es-419'), LocaleCode.es419);
    });

    test('unknown, null and non-string inputs fall back to unknown', () {
      expect(CountryCode.fromJson('XX'), CountryCode.unknown);
      expect(CurrencyCode.fromJson('ZZZ'), CurrencyCode.unknown);
      expect(LocaleCode.fromJson('xx-YY'), LocaleCode.unknown);
      expect(WeightUnit.fromJson('stone'), WeightUnit.unknown);
      expect(DimensionUnit.fromJson('yard'), DimensionUnit.unknown);
      expect(CountryCode.fromJson(null), CountryCode.unknown);
      expect(CurrencyCode.fromJson(42), CurrencyCode.unknown);
      expect(PaymentStatus.fromJson('rocket'), PaymentStatus.unknown);
      expect(FeeKind.fromJson('someday-fee'), FeeKind.unknown);
      expect(OrderPaymentStatus.fromJson('barter'), OrderPaymentStatus.unknown);
      expect(GiftCardStatus.fromJson('duped'), GiftCardStatus.unknown);
      expect(MediaType.fromJson('hologram'), MediaType.unknown);
      expect(DeliveryStatus.fromJson('warp'), DeliveryStatus.unknown);
    });

    test('status enums parse their documented values', () {
      expect(
        PaymentStatus.fromJson('void'),
        PaymentStatus.voided,
        reason: 'wire `void` maps to voided (void is reserved in Dart)',
      );
      expect(PaymentStatus.voided.toJson(), 'void');
      expect(
        CollectionSortOrder.fromJson('price asc'),
        CollectionSortOrder.priceAsc,
      );
      expect(
        FulfillmentType.fromJson('pickup_point'),
        FulfillmentType.pickupPoint,
      );
      expect(const DeliveryStatusProbe().pending, DeliveryStatus.pending);
    });
  });
}

/// Delivery-status probe: `unknown` is both a genuine server value
/// and the client fallback.
class DeliveryStatusProbe {
  const DeliveryStatusProbe();
  DeliveryStatus get pending => DeliveryStatus.fromJson('pending');
}
