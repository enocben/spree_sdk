/// Reference-data models and shared codes for the Spree Store API.
///
/// Freezed immutable models with explicit, contract-verified JSON mappings.
///
/// Evidence (all consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * type shapes: `packages/sdk/src/types/generated/{Country,Currency,Locale,
///   Channel,Store,Policy,Market,CustomField,State}.ts` and
///   `packages/sdk/src/types/index.ts` (re-exports);
/// * code lists: `packages/core/src/code-lists.generated.ts` (`CountryCode`,
///   `CurrencyCode`, `LocaleCode`, `WeightUnit`, `DimensionUnit`);
/// * status/kind values: `packages/core/src/enums.generated.ts`;
/// * envelopes: `packages/sdk-core/src/types.ts` (`ListResponse`).
///
/// Conventions (ADR-002 + file-ownership table 2):
/// * nullable exactly where the API omits or nulls the field;
/// * unknown enum strings map to the documented `unknown` fallback, never throw;
/// * money stays a decimal `String` (upstream: money is always a decimal
///   string, never a number);
/// * deprecated `display_*` / `*_in_cents` serializer fields are intentionally
///   omitted (slated for removal in 6.5; see Limitations in the handoff).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

/// ISO 3166-1 alpha-2 country code, as Spree accepts it.
///
/// Source: `packages/core/src/code-lists.generated.ts` (`CountryCode`, 240 values).
/// Reserved-word collisions use descriptive names (`AS` → [americanSamoa],
/// `DO` → [dominicanRepublic], `IN` → [india], `IS` → [iceland]).
@JsonEnum(valueField: 'value')
enum CountryCode {
  /// Wire value `AD`.
  ad('AD'),

  /// Wire value `AE`.
  ae('AE'),

  /// Wire value `AF`.
  af('AF'),

  /// Wire value `AG`.
  ag('AG'),

  /// Wire value `AI`.
  ai('AI'),

  /// Wire value `AL`.
  al('AL'),

  /// Wire value `AM`.
  am('AM'),

  /// Wire value `AO`.
  ao('AO'),

  /// Wire value `AR`.
  ar('AR'),

  /// Wire value `AS`.
  americanSamoa('AS'),

  /// Wire value `AT`.
  at('AT'),

  /// Wire value `AU`.
  au('AU'),

  /// Wire value `AW`.
  aw('AW'),

  /// Wire value `AZ`.
  az('AZ'),

  /// Wire value `BA`.
  ba('BA'),

  /// Wire value `BB`.
  bb('BB'),

  /// Wire value `BD`.
  bd('BD'),

  /// Wire value `BE`.
  be('BE'),

  /// Wire value `BF`.
  bf('BF'),

  /// Wire value `BG`.
  bg('BG'),

  /// Wire value `BH`.
  bh('BH'),

  /// Wire value `BI`.
  bi('BI'),

  /// Wire value `BJ`.
  bj('BJ'),

  /// Wire value `BL`.
  bl('BL'),

  /// Wire value `BM`.
  bm('BM'),

  /// Wire value `BN`.
  bn('BN'),

  /// Wire value `BO`.
  bo('BO'),

  /// Wire value `BQ`.
  bq('BQ'),

  /// Wire value `BR`.
  br('BR'),

  /// Wire value `BS`.
  bs('BS'),

  /// Wire value `BT`.
  bt('BT'),

  /// Wire value `BW`.
  bw('BW'),

  /// Wire value `BY`.
  by('BY'),

  /// Wire value `BZ`.
  bz('BZ'),

  /// Wire value `CA`.
  ca('CA'),

  /// Wire value `CC`.
  cc('CC'),

  /// Wire value `CD`.
  cd('CD'),

  /// Wire value `CF`.
  cf('CF'),

  /// Wire value `CG`.
  cg('CG'),

  /// Wire value `CH`.
  ch('CH'),

  /// Wire value `CI`.
  ci('CI'),

  /// Wire value `CK`.
  ck('CK'),

  /// Wire value `CL`.
  cl('CL'),

  /// Wire value `CM`.
  cm('CM'),

  /// Wire value `CN`.
  cn('CN'),

  /// Wire value `CO`.
  co('CO'),

  /// Wire value `CR`.
  cr('CR'),

  /// Wire value `CU`.
  cu('CU'),

  /// Wire value `CV`.
  cv('CV'),

  /// Wire value `CW`.
  cw('CW'),

  /// Wire value `CX`.
  cx('CX'),

  /// Wire value `CY`.
  cy('CY'),

  /// Wire value `CZ`.
  cz('CZ'),

  /// Wire value `DE`.
  de('DE'),

  /// Wire value `DJ`.
  dj('DJ'),

  /// Wire value `DK`.
  dk('DK'),

  /// Wire value `DM`.
  dm('DM'),

  /// Wire value `DO`.
  dominicanRepublic('DO'),

  /// Wire value `DZ`.
  dz('DZ'),

  /// Wire value `EC`.
  ec('EC'),

  /// Wire value `EE`.
  ee('EE'),

  /// Wire value `EG`.
  eg('EG'),

  /// Wire value `ER`.
  er('ER'),

  /// Wire value `ES`.
  es('ES'),

  /// Wire value `ET`.
  et('ET'),

  /// Wire value `FI`.
  fi('FI'),

  /// Wire value `FJ`.
  fj('FJ'),

  /// Wire value `FK`.
  fk('FK'),

  /// Wire value `FM`.
  fm('FM'),

  /// Wire value `FO`.
  fo('FO'),

  /// Wire value `FR`.
  fr('FR'),

  /// Wire value `GA`.
  ga('GA'),

  /// Wire value `GB`.
  gb('GB'),

  /// Wire value `GD`.
  gd('GD'),

  /// Wire value `GE`.
  ge('GE'),

  /// Wire value `GF`.
  gf('GF'),

  /// Wire value `GG`.
  gg('GG'),

  /// Wire value `GH`.
  gh('GH'),

  /// Wire value `GI`.
  gi('GI'),

  /// Wire value `GL`.
  gl('GL'),

  /// Wire value `GM`.
  gm('GM'),

  /// Wire value `GN`.
  gn('GN'),

  /// Wire value `GP`.
  gp('GP'),

  /// Wire value `GQ`.
  gq('GQ'),

  /// Wire value `GR`.
  gr('GR'),

  /// Wire value `GT`.
  gt('GT'),

  /// Wire value `GU`.
  gu('GU'),

  /// Wire value `GW`.
  gw('GW'),

  /// Wire value `GY`.
  gy('GY'),

  /// Wire value `HK`.
  hk('HK'),

  /// Wire value `HN`.
  hn('HN'),

  /// Wire value `HR`.
  hr('HR'),

  /// Wire value `HT`.
  ht('HT'),

  /// Wire value `HU`.
  hu('HU'),

  /// Wire value `ID`.
  id('ID'),

  /// Wire value `IE`.
  ie('IE'),

  /// Wire value `IL`.
  il('IL'),

  /// Wire value `IM`.
  im('IM'),

  /// Wire value `IN`.
  india('IN'),

  /// Wire value `IQ`.
  iq('IQ'),

  /// Wire value `IR`.
  ir('IR'),

  /// Wire value `IS`.
  iceland('IS'),

  /// Wire value `IT`.
  it('IT'),

  /// Wire value `JE`.
  je('JE'),

  /// Wire value `JM`.
  jm('JM'),

  /// Wire value `JO`.
  jo('JO'),

  /// Wire value `JP`.
  jp('JP'),

  /// Wire value `KE`.
  ke('KE'),

  /// Wire value `KG`.
  kg('KG'),

  /// Wire value `KH`.
  kh('KH'),

  /// Wire value `KI`.
  ki('KI'),

  /// Wire value `KM`.
  km('KM'),

  /// Wire value `KN`.
  kn('KN'),

  /// Wire value `KP`.
  kp('KP'),

  /// Wire value `KR`.
  kr('KR'),

  /// Wire value `KW`.
  kw('KW'),

  /// Wire value `KY`.
  ky('KY'),

  /// Wire value `KZ`.
  kz('KZ'),

  /// Wire value `LA`.
  la('LA'),

  /// Wire value `LB`.
  lb('LB'),

  /// Wire value `LC`.
  lc('LC'),

  /// Wire value `LI`.
  li('LI'),

  /// Wire value `LK`.
  lk('LK'),

  /// Wire value `LR`.
  lr('LR'),

  /// Wire value `LS`.
  ls('LS'),

  /// Wire value `LT`.
  lt('LT'),

  /// Wire value `LU`.
  lu('LU'),

  /// Wire value `LV`.
  lv('LV'),

  /// Wire value `LY`.
  ly('LY'),

  /// Wire value `MA`.
  ma('MA'),

  /// Wire value `MC`.
  mc('MC'),

  /// Wire value `MD`.
  md('MD'),

  /// Wire value `ME`.
  me('ME'),

  /// Wire value `MF`.
  mf('MF'),

  /// Wire value `MG`.
  mg('MG'),

  /// Wire value `MH`.
  mh('MH'),

  /// Wire value `MK`.
  mk('MK'),

  /// Wire value `ML`.
  ml('ML'),

  /// Wire value `MM`.
  mm('MM'),

  /// Wire value `MN`.
  mn('MN'),

  /// Wire value `MO`.
  mo('MO'),

  /// Wire value `MP`.
  mp('MP'),

  /// Wire value `MQ`.
  mq('MQ'),

  /// Wire value `MR`.
  mr('MR'),

  /// Wire value `MS`.
  ms('MS'),

  /// Wire value `MT`.
  mt('MT'),

  /// Wire value `MU`.
  mu('MU'),

  /// Wire value `MV`.
  mv('MV'),

  /// Wire value `MW`.
  mw('MW'),

  /// Wire value `MX`.
  mx('MX'),

  /// Wire value `MY`.
  my('MY'),

  /// Wire value `MZ`.
  mz('MZ'),

  /// Wire value `NA`.
  na('NA'),

  /// Wire value `NC`.
  nc('NC'),

  /// Wire value `NE`.
  ne('NE'),

  /// Wire value `NF`.
  nf('NF'),

  /// Wire value `NG`.
  ng('NG'),

  /// Wire value `NI`.
  ni('NI'),

  /// Wire value `NL`.
  nl('NL'),

  /// Wire value `NO`.
  no('NO'),

  /// Wire value `NP`.
  np('NP'),

  /// Wire value `NR`.
  nr('NR'),

  /// Wire value `NU`.
  nu('NU'),

  /// Wire value `NZ`.
  nz('NZ'),

  /// Wire value `OM`.
  om('OM'),

  /// Wire value `PA`.
  pa('PA'),

  /// Wire value `PE`.
  pe('PE'),

  /// Wire value `PF`.
  pf('PF'),

  /// Wire value `PG`.
  pg('PG'),

  /// Wire value `PH`.
  ph('PH'),

  /// Wire value `PK`.
  pk('PK'),

  /// Wire value `PL`.
  pl('PL'),

  /// Wire value `PM`.
  pm('PM'),

  /// Wire value `PN`.
  pn('PN'),

  /// Wire value `PR`.
  pr('PR'),

  /// Wire value `PS`.
  ps('PS'),

  /// Wire value `PT`.
  pt('PT'),

  /// Wire value `PW`.
  pw('PW'),

  /// Wire value `PY`.
  py('PY'),

  /// Wire value `QA`.
  qa('QA'),

  /// Wire value `RE`.
  re('RE'),

  /// Wire value `RO`.
  ro('RO'),

  /// Wire value `RS`.
  rs('RS'),

  /// Wire value `RU`.
  ru('RU'),

  /// Wire value `RW`.
  rw('RW'),

  /// Wire value `SA`.
  sa('SA'),

  /// Wire value `SB`.
  sb('SB'),

  /// Wire value `SC`.
  sc('SC'),

  /// Wire value `SD`.
  sd('SD'),

  /// Wire value `SE`.
  se('SE'),

  /// Wire value `SG`.
  sg('SG'),

  /// Wire value `SH`.
  sh('SH'),

  /// Wire value `SI`.
  si('SI'),

  /// Wire value `SJ`.
  sj('SJ'),

  /// Wire value `SK`.
  sk('SK'),

  /// Wire value `SL`.
  sl('SL'),

  /// Wire value `SM`.
  sm('SM'),

  /// Wire value `SN`.
  sn('SN'),

  /// Wire value `SO`.
  so('SO'),

  /// Wire value `SR`.
  sr('SR'),

  /// Wire value `SS`.
  ss('SS'),

  /// Wire value `ST`.
  st('ST'),

  /// Wire value `SV`.
  sv('SV'),

  /// Wire value `SX`.
  sx('SX'),

  /// Wire value `SY`.
  sy('SY'),

  /// Wire value `SZ`.
  sz('SZ'),

  /// Wire value `TC`.
  tc('TC'),

  /// Wire value `TD`.
  td('TD'),

  /// Wire value `TG`.
  tg('TG'),

  /// Wire value `TH`.
  th('TH'),

  /// Wire value `TJ`.
  tj('TJ'),

  /// Wire value `TK`.
  tk('TK'),

  /// Wire value `TL`.
  tl('TL'),

  /// Wire value `TM`.
  tm('TM'),

  /// Wire value `TN`.
  tn('TN'),

  /// Wire value `TO`.
  to('TO'),

  /// Wire value `TR`.
  tr('TR'),

  /// Wire value `TT`.
  tt('TT'),

  /// Wire value `TV`.
  tv('TV'),

  /// Wire value `TW`.
  tw('TW'),

  /// Wire value `TZ`.
  tz('TZ'),

  /// Wire value `UA`.
  ua('UA'),

  /// Wire value `UG`.
  ug('UG'),

  /// Wire value `US`.
  us('US'),

  /// Wire value `UY`.
  uy('UY'),

  /// Wire value `UZ`.
  uz('UZ'),

  /// Wire value `VA`.
  va('VA'),

  /// Wire value `VC`.
  vc('VC'),

  /// Wire value `VE`.
  ve('VE'),

  /// Wire value `VG`.
  vg('VG'),

  /// Wire value `VI`.
  vi('VI'),

  /// Wire value `VN`.
  vn('VN'),

  /// Wire value `VU`.
  vu('VU'),

  /// Wire value `WF`.
  wf('WF'),

  /// Wire value `WS`.
  ws('WS'),

  /// Wire value `YE`.
  ye('YE'),

  /// Wire value `YT`.
  yt('YT'),

  /// Wire value `ZA`.
  za('ZA'),

  /// Wire value `ZM`.
  zm('ZM'),

  /// Wire value `ZW`.
  zw('ZW'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const CountryCode(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, CountryCode> _byValue = <String, CountryCode>{
    for (final v in CountryCode.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static CountryCode fromJson(Object? json) => json is String
      ? (_byValue[json] ?? CountryCode.unknown)
      : CountryCode.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// ISO 4217 currency code, as Spree accepts it.
///
/// Source: `packages/core/src/code-lists.generated.ts` (`CurrencyCode`,
/// 178 values). `TRY` → [turkishLira] (`try` is a Dart reserved word).
@JsonEnum(valueField: 'value')
enum CurrencyCode {
  /// Wire value `AED`.
  aed('AED'),

  /// Wire value `AFN`.
  afn('AFN'),

  /// Wire value `ALL`.
  all('ALL'),

  /// Wire value `AMD`.
  amd('AMD'),

  /// Wire value `ANG`.
  ang('ANG'),

  /// Wire value `AOA`.
  aoa('AOA'),

  /// Wire value `ARS`.
  ars('ARS'),

  /// Wire value `AUD`.
  aud('AUD'),

  /// Wire value `AWG`.
  awg('AWG'),

  /// Wire value `AZN`.
  azn('AZN'),

  /// Wire value `BAM`.
  bam('BAM'),

  /// Wire value `BBD`.
  bbd('BBD'),

  /// Wire value `BDT`.
  bdt('BDT'),

  /// Wire value `BGN`.
  bgn('BGN'),

  /// Wire value `BHD`.
  bhd('BHD'),

  /// Wire value `BIF`.
  bif('BIF'),

  /// Wire value `BMD`.
  bmd('BMD'),

  /// Wire value `BND`.
  bnd('BND'),

  /// Wire value `BOB`.
  bob('BOB'),

  /// Wire value `BRL`.
  brl('BRL'),

  /// Wire value `BSD`.
  bsd('BSD'),

  /// Wire value `BTN`.
  btn('BTN'),

  /// Wire value `BWP`.
  bwp('BWP'),

  /// Wire value `BYN`.
  byn('BYN'),

  /// Wire value `BYR`.
  byr('BYR'),

  /// Wire value `BZD`.
  bzd('BZD'),

  /// Wire value `CAD`.
  cad('CAD'),

  /// Wire value `CDF`.
  cdf('CDF'),

  /// Wire value `CHF`.
  chf('CHF'),

  /// Wire value `CLF`.
  clf('CLF'),

  /// Wire value `CLP`.
  clp('CLP'),

  /// Wire value `CNY`.
  cny('CNY'),

  /// Wire value `COP`.
  cop('COP'),

  /// Wire value `CRC`.
  crc('CRC'),

  /// Wire value `CUC`.
  cuc('CUC'),

  /// Wire value `CUP`.
  cup('CUP'),

  /// Wire value `CVE`.
  cve('CVE'),

  /// Wire value `CZK`.
  czk('CZK'),

  /// Wire value `DJF`.
  djf('DJF'),

  /// Wire value `DKK`.
  dkk('DKK'),

  /// Wire value `DOP`.
  dop('DOP'),

  /// Wire value `DZD`.
  dzd('DZD'),

  /// Wire value `EEK`.
  eek('EEK'),

  /// Wire value `EGP`.
  egp('EGP'),

  /// Wire value `ERN`.
  ern('ERN'),

  /// Wire value `ETB`.
  etb('ETB'),

  /// Wire value `EUR`.
  eur('EUR'),

  /// Wire value `FJD`.
  fjd('FJD'),

  /// Wire value `FKP`.
  fkp('FKP'),

  /// Wire value `GBP`.
  gbp('GBP'),

  /// Wire value `GEL`.
  gel('GEL'),

  /// Wire value `GHS`.
  ghs('GHS'),

  /// Wire value `GIP`.
  gip('GIP'),

  /// Wire value `GMD`.
  gmd('GMD'),

  /// Wire value `GNF`.
  gnf('GNF'),

  /// Wire value `GTQ`.
  gtq('GTQ'),

  /// Wire value `GYD`.
  gyd('GYD'),

  /// Wire value `HKD`.
  hkd('HKD'),

  /// Wire value `HNL`.
  hnl('HNL'),

  /// Wire value `HRK`.
  hrk('HRK'),

  /// Wire value `HTG`.
  htg('HTG'),

  /// Wire value `HUF`.
  huf('HUF'),

  /// Wire value `IDR`.
  idr('IDR'),

  /// Wire value `ILS`.
  ils('ILS'),

  /// Wire value `INR`.
  inr('INR'),

  /// Wire value `IQD`.
  iqd('IQD'),

  /// Wire value `IRR`.
  irr('IRR'),

  /// Wire value `ISK`.
  isk('ISK'),

  /// Wire value `JMD`.
  jmd('JMD'),

  /// Wire value `JOD`.
  jod('JOD'),

  /// Wire value `JPY`.
  jpy('JPY'),

  /// Wire value `KES`.
  kes('KES'),

  /// Wire value `KGS`.
  kgs('KGS'),

  /// Wire value `KHR`.
  khr('KHR'),

  /// Wire value `KMF`.
  kmf('KMF'),

  /// Wire value `KPW`.
  kpw('KPW'),

  /// Wire value `KRW`.
  krw('KRW'),

  /// Wire value `KWD`.
  kwd('KWD'),

  /// Wire value `KYD`.
  kyd('KYD'),

  /// Wire value `KZT`.
  kzt('KZT'),

  /// Wire value `LAK`.
  lak('LAK'),

  /// Wire value `LBP`.
  lbp('LBP'),

  /// Wire value `LKR`.
  lkr('LKR'),

  /// Wire value `LRD`.
  lrd('LRD'),

  /// Wire value `LSL`.
  lsl('LSL'),

  /// Wire value `LTL`.
  ltl('LTL'),

  /// Wire value `LVL`.
  lvl('LVL'),

  /// Wire value `LYD`.
  lyd('LYD'),

  /// Wire value `MAD`.
  mad('MAD'),

  /// Wire value `MDL`.
  mdl('MDL'),

  /// Wire value `MGA`.
  mga('MGA'),

  /// Wire value `MKD`.
  mkd('MKD'),

  /// Wire value `MMK`.
  mmk('MMK'),

  /// Wire value `MNT`.
  mnt('MNT'),

  /// Wire value `MOP`.
  mop('MOP'),

  /// Wire value `MRO`.
  mro('MRO'),

  /// Wire value `MRU`.
  mru('MRU'),

  /// Wire value `MTL`.
  mtl('MTL'),

  /// Wire value `MUR`.
  mur('MUR'),

  /// Wire value `MVR`.
  mvr('MVR'),

  /// Wire value `MWK`.
  mwk('MWK'),

  /// Wire value `MXN`.
  mxn('MXN'),

  /// Wire value `MYR`.
  myr('MYR'),

  /// Wire value `MZN`.
  mzn('MZN'),

  /// Wire value `NAD`.
  nad('NAD'),

  /// Wire value `NGN`.
  ngn('NGN'),

  /// Wire value `NIO`.
  nio('NIO'),

  /// Wire value `NOK`.
  nok('NOK'),

  /// Wire value `NPR`.
  npr('NPR'),

  /// Wire value `NZD`.
  nzd('NZD'),

  /// Wire value `OMR`.
  omr('OMR'),

  /// Wire value `PAB`.
  pab('PAB'),

  /// Wire value `PEN`.
  pen('PEN'),

  /// Wire value `PGK`.
  pgk('PGK'),

  /// Wire value `PHP`.
  php('PHP'),

  /// Wire value `PKR`.
  pkr('PKR'),

  /// Wire value `PLN`.
  pln('PLN'),

  /// Wire value `PYG`.
  pyg('PYG'),

  /// Wire value `QAR`.
  qar('QAR'),

  /// Wire value `RON`.
  ron('RON'),

  /// Wire value `RSD`.
  rsd('RSD'),

  /// Wire value `RUB`.
  rub('RUB'),

  /// Wire value `RWF`.
  rwf('RWF'),

  /// Wire value `SAR`.
  sar('SAR'),

  /// Wire value `SBD`.
  sbd('SBD'),

  /// Wire value `SCR`.
  scr('SCR'),

  /// Wire value `SDG`.
  sdg('SDG'),

  /// Wire value `SEK`.
  sek('SEK'),

  /// Wire value `SGD`.
  sgd('SGD'),

  /// Wire value `SHP`.
  shp('SHP'),

  /// Wire value `SKK`.
  skk('SKK'),

  /// Wire value `SLE`.
  sle('SLE'),

  /// Wire value `SLL`.
  sll('SLL'),

  /// Wire value `SOS`.
  sos('SOS'),

  /// Wire value `SRD`.
  srd('SRD'),

  /// Wire value `SSP`.
  ssp('SSP'),

  /// Wire value `STD`.
  std('STD'),

  /// Wire value `STN`.
  stn('STN'),

  /// Wire value `SVC`.
  svc('SVC'),

  /// Wire value `SYP`.
  syp('SYP'),

  /// Wire value `SZL`.
  szl('SZL'),

  /// Wire value `THB`.
  thb('THB'),

  /// Wire value `TJS`.
  tjs('TJS'),

  /// Wire value `TMM`.
  tmm('TMM'),

  /// Wire value `TMT`.
  tmt('TMT'),

  /// Wire value `TND`.
  tnd('TND'),

  /// Wire value `TOP`.
  top('TOP'),

  /// Wire value `TRY`.
  turkishLira('TRY'),

  /// Wire value `TTD`.
  ttd('TTD'),

  /// Wire value `TWD`.
  twd('TWD'),

  /// Wire value `TZS`.
  tzs('TZS'),

  /// Wire value `UAH`.
  uah('UAH'),

  /// Wire value `UGX`.
  ugx('UGX'),

  /// Wire value `USD`.
  usd('USD'),

  /// Wire value `UYI`.
  uyi('UYI'),

  /// Wire value `UYU`.
  uyu('UYU'),

  /// Wire value `UYW`.
  uyw('UYW'),

  /// Wire value `UZS`.
  uzs('UZS'),

  /// Wire value `VED`.
  ved('VED'),

  /// Wire value `VEF`.
  vef('VEF'),

  /// Wire value `VES`.
  ves('VES'),

  /// Wire value `VND`.
  vnd('VND'),

  /// Wire value `VUV`.
  vuv('VUV'),

  /// Wire value `WST`.
  wst('WST'),

  /// Wire value `XAF`.
  xaf('XAF'),

  /// Wire value `XCD`.
  xcd('XCD'),

  /// Wire value `XCG`.
  xcg('XCG'),

  /// Wire value `XOF`.
  xof('XOF'),

  /// Wire value `XPF`.
  xpf('XPF'),

  /// Wire value `YER`.
  yer('YER'),

  /// Wire value `ZAR`.
  zar('ZAR'),

  /// Wire value `ZMK`.
  zmk('ZMK'),

  /// Wire value `ZMW`.
  zmw('ZMW'),

  /// Wire value `ZWD`.
  zwd('ZWD'),

  /// Wire value `ZWG`.
  zwg('ZWG'),

  /// Wire value `ZWL`.
  zwl('ZWL'),

  /// Wire value `ZWN`.
  zwn('ZWN'),

  /// Wire value `ZWR`.
  zwr('ZWR'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const CurrencyCode(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, CurrencyCode> _byValue = <String, CurrencyCode>{
    for (final v in CurrencyCode.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static CurrencyCode fromJson(Object? json) => json is String
      ? (_byValue[json] ?? CurrencyCode.unknown)
      : CurrencyCode.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Locale code, as Spree accepts it.
///
/// Source: `packages/core/src/code-lists.generated.ts` (`LocaleCode`,
/// 202 values). `as` → [assamese], `is` → [icelandic] (reserved words).
@JsonEnum(valueField: 'value')
enum LocaleCode {
  /// Wire value `aa`.
  aa('aa'),

  /// Wire value `ab`.
  ab('ab'),

  /// Wire value `ae`.
  ae('ae'),

  /// Wire value `af`.
  af('af'),

  /// Wire value `ak`.
  ak('ak'),

  /// Wire value `am`.
  am('am'),

  /// Wire value `an`.
  an('an'),

  /// Wire value `ar`.
  ar('ar'),

  /// Wire value `as`.
  assamese('as'),

  /// Wire value `av`.
  av('av'),

  /// Wire value `ay`.
  ay('ay'),

  /// Wire value `az`.
  az('az'),

  /// Wire value `ba`.
  ba('ba'),

  /// Wire value `be`.
  be('be'),

  /// Wire value `bg`.
  bg('bg'),

  /// Wire value `bh`.
  bh('bh'),

  /// Wire value `bi`.
  bi('bi'),

  /// Wire value `bm`.
  bm('bm'),

  /// Wire value `bn`.
  bn('bn'),

  /// Wire value `bo`.
  bo('bo'),

  /// Wire value `br`.
  br('br'),

  /// Wire value `bs`.
  bs('bs'),

  /// Wire value `ca`.
  ca('ca'),

  /// Wire value `ce`.
  ce('ce'),

  /// Wire value `ch`.
  ch('ch'),

  /// Wire value `co`.
  co('co'),

  /// Wire value `cr`.
  cr('cr'),

  /// Wire value `cs`.
  cs('cs'),

  /// Wire value `cu`.
  cu('cu'),

  /// Wire value `cv`.
  cv('cv'),

  /// Wire value `cy`.
  cy('cy'),

  /// Wire value `da`.
  da('da'),

  /// Wire value `de`.
  de('de'),

  /// Wire value `de-AT`.
  deAt('de-AT'),

  /// Wire value `de-CH`.
  deCh('de-CH'),

  /// Wire value `dv`.
  dv('dv'),

  /// Wire value `dz`.
  dz('dz'),

  /// Wire value `ee`.
  ee('ee'),

  /// Wire value `el`.
  el('el'),

  /// Wire value `en`.
  en('en'),

  /// Wire value `en-AU`.
  enAu('en-AU'),

  /// Wire value `en-CA`.
  enCa('en-CA'),

  /// Wire value `en-GB`.
  enGb('en-GB'),

  /// Wire value `en-IN`.
  enIn('en-IN'),

  /// Wire value `en-NZ`.
  enNz('en-NZ'),

  /// Wire value `en-US`.
  enUs('en-US'),

  /// Wire value `eo`.
  eo('eo'),

  /// Wire value `es`.
  es('es'),

  /// Wire value `es-419`.
  es419('es-419'),

  /// Wire value `es-CL`.
  esCl('es-CL'),

  /// Wire value `es-EC`.
  esEc('es-EC'),

  /// Wire value `es-MX`.
  esMx('es-MX'),

  /// Wire value `et`.
  et('et'),

  /// Wire value `eu`.
  eu('eu'),

  /// Wire value `fa`.
  fa('fa'),

  /// Wire value `ff`.
  ff('ff'),

  /// Wire value `fi`.
  fi('fi'),

  /// Wire value `fj`.
  fj('fj'),

  /// Wire value `fo`.
  fo('fo'),

  /// Wire value `fr`.
  fr('fr'),

  /// Wire value `fr-CA`.
  frCa('fr-CA'),

  /// Wire value `fy`.
  fy('fy'),

  /// Wire value `ga`.
  ga('ga'),

  /// Wire value `gd`.
  gd('gd'),

  /// Wire value `gl`.
  gl('gl'),

  /// Wire value `gn`.
  gn('gn'),

  /// Wire value `gu`.
  gu('gu'),

  /// Wire value `gv`.
  gv('gv'),

  /// Wire value `ha`.
  ha('ha'),

  /// Wire value `he`.
  he('he'),

  /// Wire value `hi`.
  hi('hi'),

  /// Wire value `ho`.
  ho('ho'),

  /// Wire value `hr`.
  hr('hr'),

  /// Wire value `ht`.
  ht('ht'),

  /// Wire value `hu`.
  hu('hu'),

  /// Wire value `hy`.
  hy('hy'),

  /// Wire value `hz`.
  hz('hz'),

  /// Wire value `ia`.
  ia('ia'),

  /// Wire value `id`.
  id('id'),

  /// Wire value `ie`.
  ie('ie'),

  /// Wire value `ig`.
  ig('ig'),

  /// Wire value `ii`.
  ii('ii'),

  /// Wire value `ik`.
  ik('ik'),

  /// Wire value `io`.
  io('io'),

  /// Wire value `is`.
  icelandic('is'),

  /// Wire value `it`.
  it('it'),

  /// Wire value `iu`.
  iu('iu'),

  /// Wire value `ja`.
  ja('ja'),

  /// Wire value `jv`.
  jv('jv'),

  /// Wire value `ka`.
  ka('ka'),

  /// Wire value `kg`.
  kg('kg'),

  /// Wire value `ki`.
  ki('ki'),

  /// Wire value `kj`.
  kj('kj'),

  /// Wire value `kk`.
  kk('kk'),

  /// Wire value `kl`.
  kl('kl'),

  /// Wire value `km`.
  km('km'),

  /// Wire value `kn`.
  kn('kn'),

  /// Wire value `ko`.
  ko('ko'),

  /// Wire value `kr`.
  kr('kr'),

  /// Wire value `ks`.
  ks('ks'),

  /// Wire value `ku`.
  ku('ku'),

  /// Wire value `kv`.
  kv('kv'),

  /// Wire value `kw`.
  kw('kw'),

  /// Wire value `ky`.
  ky('ky'),

  /// Wire value `la`.
  la('la'),

  /// Wire value `lb`.
  lb('lb'),

  /// Wire value `lg`.
  lg('lg'),

  /// Wire value `li`.
  li('li'),

  /// Wire value `ln`.
  ln('ln'),

  /// Wire value `lo`.
  lo('lo'),

  /// Wire value `lt`.
  lt('lt'),

  /// Wire value `lu`.
  lu('lu'),

  /// Wire value `lv`.
  lv('lv'),

  /// Wire value `mg`.
  mg('mg'),

  /// Wire value `mh`.
  mh('mh'),

  /// Wire value `mi`.
  mi('mi'),

  /// Wire value `mk`.
  mk('mk'),

  /// Wire value `ml`.
  ml('ml'),

  /// Wire value `mn`.
  mn('mn'),

  /// Wire value `mr`.
  mr('mr'),

  /// Wire value `ms`.
  ms('ms'),

  /// Wire value `mt`.
  mt('mt'),

  /// Wire value `my`.
  my('my'),

  /// Wire value `na`.
  na('na'),

  /// Wire value `nb`.
  nb('nb'),

  /// Wire value `nd`.
  nd('nd'),

  /// Wire value `ne`.
  ne('ne'),

  /// Wire value `ng`.
  ng('ng'),

  /// Wire value `nl`.
  nl('nl'),

  /// Wire value `nn`.
  nn('nn'),

  /// Wire value `no`.
  no('no'),

  /// Wire value `nr`.
  nr('nr'),

  /// Wire value `nv`.
  nv('nv'),

  /// Wire value `ny`.
  ny('ny'),

  /// Wire value `oc`.
  oc('oc'),

  /// Wire value `oj`.
  oj('oj'),

  /// Wire value `om`.
  om('om'),

  /// Wire value `or`.
  or('or'),

  /// Wire value `os`.
  os('os'),

  /// Wire value `pa`.
  pa('pa'),

  /// Wire value `pi`.
  pi('pi'),

  /// Wire value `pl`.
  pl('pl'),

  /// Wire value `ps`.
  ps('ps'),

  /// Wire value `pt`.
  pt('pt'),

  /// Wire value `pt-BR`.
  ptBr('pt-BR'),

  /// Wire value `pt-PT`.
  ptPt('pt-PT'),

  /// Wire value `qu`.
  qu('qu'),

  /// Wire value `rm`.
  rm('rm'),

  /// Wire value `rn`.
  rn('rn'),

  /// Wire value `ro`.
  ro('ro'),

  /// Wire value `ru`.
  ru('ru'),

  /// Wire value `rw`.
  rw('rw'),

  /// Wire value `sa`.
  sa('sa'),

  /// Wire value `sc`.
  sc('sc'),

  /// Wire value `sd`.
  sd('sd'),

  /// Wire value `se`.
  se('se'),

  /// Wire value `sg`.
  sg('sg'),

  /// Wire value `si`.
  si('si'),

  /// Wire value `sk`.
  sk('sk'),

  /// Wire value `sl`.
  sl('sl'),

  /// Wire value `sl-SI`.
  slSi('sl-SI'),

  /// Wire value `sm`.
  sm('sm'),

  /// Wire value `sn`.
  sn('sn'),

  /// Wire value `so`.
  so('so'),

  /// Wire value `sq`.
  sq('sq'),

  /// Wire value `sr`.
  sr('sr'),

  /// Wire value `ss`.
  ss('ss'),

  /// Wire value `st`.
  st('st'),

  /// Wire value `su`.
  su('su'),

  /// Wire value `sv`.
  sv('sv'),

  /// Wire value `sw`.
  sw('sw'),

  /// Wire value `ta`.
  ta('ta'),

  /// Wire value `te`.
  te('te'),

  /// Wire value `tg`.
  tg('tg'),

  /// Wire value `th`.
  th('th'),

  /// Wire value `ti`.
  ti('ti'),

  /// Wire value `tk`.
  tk('tk'),

  /// Wire value `tl`.
  tl('tl'),

  /// Wire value `tn`.
  tn('tn'),

  /// Wire value `to`.
  to('to'),

  /// Wire value `tr`.
  tr('tr'),

  /// Wire value `ts`.
  ts('ts'),

  /// Wire value `tt`.
  tt('tt'),

  /// Wire value `tw`.
  tw('tw'),

  /// Wire value `ty`.
  ty('ty'),

  /// Wire value `ug`.
  ug('ug'),

  /// Wire value `uk`.
  uk('uk'),

  /// Wire value `ur`.
  ur('ur'),

  /// Wire value `uz`.
  uz('uz'),

  /// Wire value `ve`.
  ve('ve'),

  /// Wire value `vi`.
  vi('vi'),

  /// Wire value `vo`.
  vo('vo'),

  /// Wire value `wa`.
  wa('wa'),

  /// Wire value `wo`.
  wo('wo'),

  /// Wire value `xh`.
  xh('xh'),

  /// Wire value `yi`.
  yi('yi'),

  /// Wire value `yo`.
  yo('yo'),

  /// Wire value `za`.
  za('za'),

  /// Wire value `zh-CN`.
  zhCn('zh-CN'),

  /// Wire value `zh-HK`.
  zhHk('zh-HK'),

  /// Wire value `zh-TW`.
  zhTw('zh-TW'),

  /// Wire value `zu`.
  zu('zu'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const LocaleCode(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, LocaleCode> _byValue = <String, LocaleCode>{
    for (final v in LocaleCode.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static LocaleCode fromJson(Object? json) => json is String
      ? (_byValue[json] ?? LocaleCode.unknown)
      : LocaleCode.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Weight unit of variant dimensions.
///
/// Source: `packages/core/src/code-lists.generated.ts` (`WeightUnit`).
@JsonEnum(valueField: 'value')
enum WeightUnit {
  /// Wire value `g`.
  g('g'),

  /// Wire value `kg`.
  kg('kg'),

  /// Wire value `lb`.
  lb('lb'),

  /// Wire value `oz`.
  oz('oz'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const WeightUnit(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, WeightUnit> _byValue = <String, WeightUnit>{
    for (final v in WeightUnit.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static WeightUnit fromJson(Object? json) => json is String
      ? (_byValue[json] ?? WeightUnit.unknown)
      : WeightUnit.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Dimension unit of variant dimensions.
///
/// Source: `packages/core/src/code-lists.generated.ts` (`DimensionUnit`).
/// `in` → [inch] (`in` is a Dart reserved word).
@JsonEnum(valueField: 'value')
enum DimensionUnit {
  /// Wire value `mm`.
  mm('mm'),

  /// Wire value `cm`.
  cm('cm'),

  /// Wire value `in`.
  inch('in'),

  /// Wire value `ft`.
  ft('ft'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const DimensionUnit(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, DimensionUnit> _byValue = <String, DimensionUnit>{
    for (final v in DimensionUnit.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static DimensionUnit fromJson(Object? json) => json is String
      ? (_byValue[json] ?? DimensionUnit.unknown)
      : DimensionUnit.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Purchase unit of a variant (`unit` or `carton`).
///
/// Source: `packages/sdk/src/types/generated/Variant.ts` (`PurchaseUnit`),
/// values `packages/core/src/enums.generated.ts` (`PURCHASE_UNITS`).
@JsonEnum(valueField: 'value')
enum PurchaseUnit {
  /// Wire value `unit`.
  unit('unit'),

  /// Wire value `carton`.
  carton('carton'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const PurchaseUnit(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, PurchaseUnit> _byValue = <String, PurchaseUnit>{
    for (final v in PurchaseUnit.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static PurchaseUnit fromJson(Object? json) => json is String
      ? (_byValue[json] ?? PurchaseUnit.unknown)
      : PurchaseUnit.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Media attachable to products/variants.
///
/// Source: `packages/sdk/src/types/generated/Media.ts` (`MediaType`),
/// values `packages/core/src/enums.generated.ts` (`MEDIA_TYPES`).
@JsonEnum(valueField: 'value')
enum MediaType {
  /// Wire value `image`.
  image('image'),

  /// Wire value `video`.
  video('video'),

  /// Wire value `external_video`.
  externalVideo('external_video'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const MediaType(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, MediaType> _byValue = <String, MediaType>{
    for (final v in MediaType.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static MediaType fromJson(Object? json) => json is String
      ? (_byValue[json] ?? MediaType.unknown)
      : MediaType.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Presentation kind of a product option type.
///
/// Source: `packages/sdk/src/types/generated/OptionType.ts` (`OptionTypeKind`),
/// values `packages/core/src/enums.generated.ts` (`OPTION_TYPE_KINDS`).
@JsonEnum(valueField: 'value')
enum OptionTypeKind {
  /// Wire value `dropdown`.
  dropdown('dropdown'),

  /// Wire value `color_swatch`.
  colorSwatch('color_swatch'),

  /// Wire value `buttons`.
  buttons('buttons'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const OptionTypeKind(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, OptionTypeKind> _byValue = <String, OptionTypeKind>{
    for (final v in OptionTypeKind.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static OptionTypeKind fromJson(Object? json) => json is String
      ? (_byValue[json] ?? OptionTypeKind.unknown)
      : OptionTypeKind.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Sort order of a merchandising collection.
///
/// Source: `packages/sdk/src/types/generated/Collection.ts`
/// (`CollectionSortOrder`), values `packages/core/src/enums.generated.ts`
/// (`COLLECTION_SORT_ORDERS`).
@JsonEnum(valueField: 'value')
enum CollectionSortOrder {
  /// Wire value `manual`.
  manual('manual'),

  /// Wire value `best_selling`.
  bestSelling('best_selling'),

  /// Wire value `price asc`.
  priceAsc('price asc'),

  /// Wire value `price desc`.
  priceDesc('price desc'),

  /// Wire value `available_on desc`.
  availableOnDesc('available_on desc'),

  /// Wire value `available_on asc`.
  availableOnAsc('available_on asc'),

  /// Wire value `name asc`.
  nameAsc('name asc'),

  /// Wire value `name desc`.
  nameDesc('name desc'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const CollectionSortOrder(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, CollectionSortOrder> _byValue =
      <String, CollectionSortOrder>{
        for (final v in CollectionSortOrder.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static CollectionSortOrder fromJson(Object? json) => json is String
      ? (_byValue[json] ?? CollectionSortOrder.unknown)
      : CollectionSortOrder.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Owner of an address-book entry.
///
/// Source: `packages/sdk/src/types/generated/AddressOwner.ts`
/// (`AddressOwnerType`), values `packages/core/src/enums.generated.ts`
/// (`ADDRESS_OWNER_TYPES`). Built-ins; extensions may add more.
@JsonEnum(valueField: 'value')
enum AddressOwnerType {
  /// Wire value `customer`.
  customer('customer'),

  /// Wire value `company`.
  company('company'),

  /// Wire value `seller`.
  seller('seller'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const AddressOwnerType(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, AddressOwnerType> _byValue =
      <String, AddressOwnerType>{
        for (final v in AddressOwnerType.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static AddressOwnerType fromJson(Object? json) => json is String
      ? (_byValue[json] ?? AddressOwnerType.unknown)
      : AddressOwnerType.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Status of a cart/order fulfillment (shipment).
///
/// Source: `packages/sdk/src/types/generated/Fulfillment.ts`
/// (`FulfillmentStatus`), values `packages/core/src/enums.generated.ts`
/// (`FULFILLMENT_STATUSES`).
@JsonEnum(valueField: 'value')
enum FulfillmentStatus {
  /// Wire value `unfulfilled`.
  unfulfilled('unfulfilled'),

  /// Wire value `fulfilled`.
  fulfilled('fulfilled'),

  /// Wire value `delivered`.
  delivered('delivered'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const FulfillmentStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, FulfillmentStatus> _byValue =
      <String, FulfillmentStatus>{
        for (final v in FulfillmentStatus.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static FulfillmentStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? FulfillmentStatus.unknown)
      : FulfillmentStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// How a fulfillment is delivered.
///
/// Source: `packages/sdk/src/types/generated/Fulfillment.ts`
/// (`FulfillmentType`), values `packages/core/src/enums.generated.ts`
/// (`FULFILLMENT_TYPES`). Matches the `fulfillment_type` query of
/// `GET /delivery_methods` (contract §3).
@JsonEnum(valueField: 'value')
enum FulfillmentType {
  /// Wire value `shipping`.
  shipping('shipping'),

  /// Wire value `digital`.
  digital('digital'),

  /// Wire value `pickup`.
  pickup('pickup'),

  /// Wire value `pickup_point`.
  pickupPoint('pickup_point'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const FulfillmentType(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, FulfillmentType> _byValue =
      <String, FulfillmentType>{
        for (final v in FulfillmentType.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static FulfillmentType fromJson(Object? json) => json is String
      ? (_byValue[json] ?? FulfillmentType.unknown)
      : FulfillmentType.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Carrier status of a delivery. Note `unknown` is a genuine
/// server value here as well as the client fallback.
///
/// Source: `packages/sdk/src/types/generated/Delivery.ts` (`DeliveryStatus`),
/// values `packages/core/src/enums.generated.ts` (`DELIVERY_STATUSES`).
@JsonEnum(valueField: 'value')
enum DeliveryStatus {
  /// Wire value `pending`.
  pending('pending'),

  /// Wire value `pre_transit`.
  preTransit('pre_transit'),

  /// Wire value `in_transit`.
  inTransit('in_transit'),

  /// Wire value `out_for_delivery`.
  outForDelivery('out_for_delivery'),

  /// Wire value `available_for_pickup`.
  availableForPickup('available_for_pickup'),

  /// Wire value `delivered`.
  delivered('delivered'),

  /// Wire value `return_to_sender`.
  returnToSender('return_to_sender'),

  /// Wire value `failure`.
  failure('failure'),

  /// Genuine server value `unknown`, which also serves as the client fallback:
  /// unrecognized input maps here and never throws.
  unknown('unknown');

  const DeliveryStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, DeliveryStatus> _byValue = <String, DeliveryStatus>{
    for (final v in DeliveryStatus.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static DeliveryStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? DeliveryStatus.unknown)
      : DeliveryStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Status of a cart/order payment.
///
/// Source: `packages/sdk/src/types/generated/Payment.ts` (`PaymentStatus`),
/// values `packages/core/src/enums.generated.ts` (`PAYMENT_STATUSES`).
/// `voided` carries the wire value `void` (`void` is a Dart reserved word).
@JsonEnum(valueField: 'value')
enum PaymentStatus {
  /// Wire value `checkout`.
  checkout('checkout'),

  /// Wire value `processing`.
  processing('processing'),

  /// Wire value `pending`.
  pending('pending'),

  /// Wire value `requested`.
  requested('requested'),

  /// Wire value `completed`.
  completed('completed'),

  /// Wire value `failed`.
  failed('failed'),

  /// Wire value `void`.
  voided('void'),

  /// Wire value `invalid`.
  invalid('invalid'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const PaymentStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, PaymentStatus> _byValue = <String, PaymentStatus>{
    for (final v in PaymentStatus.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static PaymentStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? PaymentStatus.unknown)
      : PaymentStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Polymorphic source behind a payment.
///
/// Source: `packages/sdk/src/types/generated/Payment.ts`
/// (`PaymentSourceType`), values `packages/core/src/enums.generated.ts`
/// (`PAYMENT_SOURCE_TYPES`).
@JsonEnum(valueField: 'value')
enum PaymentSourceType {
  /// Wire value `credit_card`.
  creditCard('credit_card'),

  /// Wire value `store_credit`.
  storeCredit('store_credit'),

  /// Wire value `payment_source`.
  paymentSource('payment_source'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const PaymentSourceType(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, PaymentSourceType> _byValue =
      <String, PaymentSourceType>{
        for (final v in PaymentSourceType.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static PaymentSourceType fromJson(Object? json) => json is String
      ? (_byValue[json] ?? PaymentSourceType.unknown)
      : PaymentSourceType.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Status of a payment session.
///
/// Source: `packages/sdk/src/types/generated/PaymentSession.ts`
/// (`PaymentSessionStatus`), values `packages/core/src/enums.generated.ts`
/// (`PAYMENT_SESSION_STATUSES`).
@JsonEnum(valueField: 'value')
enum PaymentSessionStatus {
  /// Wire value `pending`.
  pending('pending'),

  /// Wire value `processing`.
  processing('processing'),

  /// Wire value `completed`.
  completed('completed'),

  /// Wire value `failed`.
  failed('failed'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Wire value `expired`.
  expired('expired'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const PaymentSessionStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, PaymentSessionStatus> _byValue =
      <String, PaymentSessionStatus>{
        for (final v in PaymentSessionStatus.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static PaymentSessionStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? PaymentSessionStatus.unknown)
      : PaymentSessionStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Aggregate fulfillment status of an order.
///
/// Source: `packages/sdk/src/types/generated/Order.ts`
/// (`OrderFulfillmentStatus`), values `packages/core/src/enums.generated.ts`
/// (`ORDER_FULFILLMENT_STATUSES`).
@JsonEnum(valueField: 'value')
enum OrderFulfillmentStatus {
  /// Wire value `backorder`.
  backorder('backorder'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Wire value `partial`.
  partial('partial'),

  /// Wire value `unfulfilled`.
  unfulfilled('unfulfilled'),

  /// Wire value `fulfilled`.
  fulfilled('fulfilled'),

  /// Wire value `delivered`.
  delivered('delivered'),

  /// Wire value `pending`.
  pending('pending'),

  /// Wire value `ready`.
  ready('ready'),

  /// Wire value `shipped`.
  shipped('shipped'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const OrderFulfillmentStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, OrderFulfillmentStatus> _byValue =
      <String, OrderFulfillmentStatus>{
        for (final v in OrderFulfillmentStatus.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static OrderFulfillmentStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? OrderFulfillmentStatus.unknown)
      : OrderFulfillmentStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Aggregate payment status of an order.
///
/// Source: `packages/sdk/src/types/generated/Order.ts`
/// (`OrderPaymentStatus`), values `packages/core/src/enums.generated.ts`
/// (`ORDER_PAYMENT_STATUSES`).
@JsonEnum(valueField: 'value')
enum OrderPaymentStatus {
  /// Wire value `none`.
  none('none'),

  /// Wire value `authorized`.
  authorized('authorized'),

  /// Wire value `partially_paid`.
  partiallyPaid('partially_paid'),

  /// Wire value `paid`.
  paid('paid'),

  /// Wire value `partially_refunded`.
  partiallyRefunded('partially_refunded'),

  /// Wire value `refunded`.
  refunded('refunded'),

  /// Wire value `overcharged`.
  overcharged('overcharged'),

  /// Wire value `voided`.
  voided('voided'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const OrderPaymentStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, OrderPaymentStatus> _byValue =
      <String, OrderPaymentStatus>{
        for (final v in OrderPaymentStatus.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static OrderPaymentStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? OrderPaymentStatus.unknown)
      : OrderPaymentStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Lifecycle status of a gift card.
///
/// Source: `packages/sdk/src/types/generated/GiftCard.ts` (`GiftCardStatus`),
/// values `packages/core/src/enums.generated.ts` (`GIFT_CARD_STATUSES`).
@JsonEnum(valueField: 'value')
enum GiftCardStatus {
  /// Wire value `active`.
  active('active'),

  /// Wire value `partially_redeemed`.
  partiallyRedeemed('partially_redeemed'),

  /// Wire value `redeemed`.
  redeemed('redeemed'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Wire value `expired`.
  expired('expired'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const GiftCardStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, GiftCardStatus> _byValue = <String, GiftCardStatus>{
    for (final v in GiftCardStatus.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static GiftCardStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? GiftCardStatus.unknown)
      : GiftCardStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// What sort of charge a fee is. Extensions may register more kinds.
///
/// Source: `packages/sdk/src/types/generated/Fee.ts` (`FeeKind`),
/// values `packages/core/src/enums.generated.ts` (`FEE_KINDS`).
@JsonEnum(valueField: 'value')
enum FeeKind {
  /// Wire value `surcharge`.
  surcharge('surcharge'),

  /// Wire value `handling`.
  handling('handling'),

  /// Wire value `gift_wrap`.
  giftWrap('gift_wrap'),

  /// Wire value `cod`.
  cod('cod'),

  /// Wire value `payment`.
  payment('payment'),

  /// Wire value `duty`.
  duty('duty'),

  /// Wire value `exchange`.
  exchange('exchange'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const FeeKind(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, FeeKind> _byValue = <String, FeeKind>{
    for (final v in FeeKind.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static FeeKind fromJson(Object? json) =>
      json is String ? (_byValue[json] ?? FeeKind.unknown) : FeeKind.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Origin of a discount: promotion rule or manual adjustment.
///
/// Source: `packages/sdk/src/types/generated/Discount.ts` (`DiscountKind`),
/// values `packages/core/src/enums.generated.ts` (`DISCOUNT_KINDS`).
@JsonEnum(valueField: 'value')
enum DiscountKind {
  /// Wire value `promotion`.
  promotion('promotion'),

  /// Wire value `manual`.
  manual('manual'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const DiscountKind(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, DiscountKind> _byValue = <String, DiscountKind>{
    for (final v in DiscountKind.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static DiscountKind fromJson(Object? json) => json is String
      ? (_byValue[json] ?? DiscountKind.unknown)
      : DiscountKind.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Availability option of the product-filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterAvailabilityOption.ts`
/// (`StockAvailability`), values `packages/core/src/enums.generated.ts`
/// (`STOCK_AVAILABILITIES`).
@JsonEnum(valueField: 'value')
enum StockAvailability {
  /// Wire value `in_stock`.
  inStock('in_stock'),

  /// Wire value `out_of_stock`.
  outOfStock('out_of_stock'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const StockAvailability(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, StockAvailability> _byValue =
      <String, StockAvailability>{
        for (final v in StockAvailability.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static StockAvailability fromJson(Object? json) => json is String
      ? (_byValue[json] ?? StockAvailability.unknown)
      : StockAvailability.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Data type of a merchant-defined custom field.
///
/// Source: `packages/sdk/src/types/generated/CustomField.ts` (`field_type`).
@JsonEnum(valueField: 'value')
enum CustomFieldType {
  /// Wire value `short_text`.
  shortText('short_text'),

  /// Wire value `long_text`.
  longText('long_text'),

  /// Wire value `rich_text`.
  richText('rich_text'),

  /// Wire value `number`.
  number('number'),

  /// Wire value `boolean`.
  boolean('boolean'),

  /// Wire value `json`.
  json('json'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const CustomFieldType(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, CustomFieldType> _byValue =
      <String, CustomFieldType>{
        for (final v in CustomFieldType.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static CustomFieldType fromJson(Object? json) => json is String
      ? (_byValue[json] ?? CustomFieldType.unknown)
      : CustomFieldType.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Discriminator of the product-filters union.
///
/// Source: `packages/sdk/src/types/generated/ProductFilter*.ts` (`type`).
@JsonEnum(valueField: 'value')
enum ProductFilterType {
  /// Wire value `price_range`.
  priceRange('price_range'),

  /// Wire value `availability`.
  availability('availability'),

  /// Wire value `option`.
  option('option'),

  /// Wire value `category`.
  category('category'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const ProductFilterType(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, ProductFilterType> _byValue =
      <String, ProductFilterType>{
        for (final v in ProductFilterType.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static ProductFilterType fromJson(Object? json) => json is String
      ? (_byValue[json] ?? ProductFilterType.unknown)
      : ProductFilterType.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Data type of a merchant-defined custom field.
///
/// Source: `packages/sdk/src/types/generated/CustomField.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CustomField with _$CustomField {
  const CustomField._();

  /// Creates a custom field value.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CustomField({
    required String id,
    required String label,
    @JsonKey(unknownEnumValue: CustomFieldType.unknown)
    required CustomFieldType fieldType,
    required String key,
    Object? value,
  }) = _CustomField;

  /// Parses a custom field from its JSON shape. Never throws on the
  /// `field_type` value: unrecognized strings map to [CustomFieldType.unknown].
  factory CustomField.fromJson(Map<String, Object?> json) =>
      _$CustomFieldFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Merchant-facing label.
  @override
  String get label;

  /// Declared data type of [value].
  @override
  CustomFieldType get fieldType;

  /// Merchant-defined key.
  @override
  String get key;

  /// The raw value; shape depends on [fieldType] (`json` may be any JSON).
  @override
  Object? get value;

  /// Serializes this custom field back to its JSON shape.
}

/// A state / province of a country.
///
/// Source: `packages/sdk/src/types/generated/State.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class State with _$State {
  const State._();

  /// Creates a state.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory State({required String abbr, required String name}) = _State;

  /// Parses a state from its JSON shape.
  factory State.fromJson(Map<String, Object?> json) => _$StateFromJson(json);

  /// ISO 3166-2 subdivision code without country prefix (e.g. `CA`).
  @override
  String get abbr;

  /// State name.
  @override
  String get name;

  /// Serializes this state back to its JSON shape.
}

/// A country the store operates in.
///
/// Source: `packages/sdk/src/types/generated/Country.ts`;
/// SPEC `store.yaml#/components/schemas/Country`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Country with _$Country {
  const Country._();

  /// Creates a country.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Country({
    @JsonKey(unknownEnumValue: CountryCode.unknown) required CountryCode iso,
    required String iso3,
    required String name,
    required bool statesRequired,
    required bool zipcodeRequired,
    @JsonKey(includeIfNull: false) List<State>? states,
    Market? market,
  }) = _Country;

  /// Parses a country from its JSON shape.
  factory Country.fromJson(Map<String, Object?> json) =>
      _$CountryFromJson(json);

  /// ISO 3166-1 alpha-2 code.
  @override
  CountryCode get iso;

  /// ISO 3166-1 alpha-3 code.
  @override
  String get iso3;

  /// Country name. Deprecated upstream in favor of `Intl` display names
  /// (removal slated for 6.5) but still serialized; kept as a plain field.
  @override
  String get name;

  /// Whether an address in this country requires a state.
  @override
  bool get statesRequired;

  /// Whether an address in this country requires a postal code.
  @override
  bool get zipcodeRequired;

  /// Predefined states, when the country has them. Absent (`null`) means the
  /// association was not expanded; an empty list means it has no states.
  @override
  List<State>? get states;

  /// Market this country resolves to, when expanded.
  @override
  Market? get market;

  /// Serializes this country back to its JSON shape.
}

/// A currency the store prices in.
///
/// Source: `packages/sdk/src/types/generated/Currency.ts`;
/// SPEC `store.yaml#/components/schemas/Currency`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Currency with _$Currency {
  const Currency._();

  /// Creates a currency.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Currency({
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode isoCode,
    required String name,
    required String symbol,
    required int decimalPlaces,
  }) = _Currency;

  /// Parses a currency from its JSON shape.
  factory Currency.fromJson(Map<String, Object?> json) =>
      _$CurrencyFromJson(json);

  /// ISO 4217 code.
  @override
  CurrencyCode get isoCode;

  /// Currency name. Deprecated upstream in favor of `Intl` display names
  /// (removal slated for 6.5) but still serialized; kept as a plain field.
  @override
  String get name;

  /// Currency symbol. Deprecated upstream in favor of `Intl` number formatting
  /// (removal slated for 6.5) but still serialized; kept as a plain field.
  @override
  String get symbol;

  /// Number of decimal places for money in this currency.
  @override
  int get decimalPlaces;

  /// Serializes this currency back to its JSON shape.
}

/// A locale the storefront is translated into.
///
/// Source: `packages/sdk/src/types/generated/Locale.ts`;
/// SPEC `store.yaml#/components/schemas/Locale`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class SpreeLocale with _$SpreeLocale {
  const SpreeLocale._();

  /// Creates a locale.
  ///
  /// Named [SpreeLocale] (rather than `Locale`) so the core package stays
  /// independent of Flutter's `Locale` (AGENTS.md §4/§7).
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SpreeLocale({
    @JsonKey(unknownEnumValue: LocaleCode.unknown) required LocaleCode code,
    required String name,
    @JsonKey(name: 'default') required bool isDefault,
    required bool rtl,
  }) = _SpreeLocale;

  /// Parses a locale from its JSON shape.
  factory SpreeLocale.fromJson(Map<String, Object?> json) =>
      _$SpreeLocaleFromJson(json);

  /// Locale code.
  @override
  LocaleCode get code;

  /// Locale name. Deprecated upstream in favor of `Intl` display names
  /// (removal slated for 6.5) but still serialized; kept as a plain field.
  @override
  String get name;

  /// Whether this is the store's default locale.
  @override
  bool get isDefault;

  /// Whether this locale reads right-to-left.
  @override
  bool get rtl;

  /// Serializes this locale back to its JSON shape.
}

/// A sales channel of the store.
///
/// Source: `packages/sdk/src/types/generated/Channel.ts`;
/// SPEC `store.yaml#/components/schemas/Channel`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Channel with _$Channel {
  const Channel._();

  /// Creates a channel.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Channel({
    required String id,
    required String name,
    required String code,
    required bool active,
    @JsonKey(name: 'default') required bool isDefault,
    required String storefrontAccess,
    required bool guestCheckout,
  }) = _Channel;

  /// Parses a channel from its JSON shape.
  factory Channel.fromJson(Map<String, Object?> json) =>
      _$ChannelFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Channel name.
  @override
  String get name;

  /// Channel code (sent as `X-Spree-Channel`).
  @override
  String get code;

  /// Whether the channel accepts traffic.
  @override
  bool get active;

  /// Whether this is the store's default channel.
  @override
  bool get isDefault;

  /// Storefront access level, as reported by the API (open string).
  @override
  String get storefrontAccess;

  /// Whether guest checkout is allowed on this channel.
  @override
  bool get guestCheckout;

  /// Serializes this channel back to its JSON shape.
}

/// Store-level public settings.
///
/// Source: `packages/sdk/src/types/generated/Store.ts` (6.0.5 adds
/// `meta_keywords`, `logo_url`, socials and `customer_support_email`);
/// SPEC `store.yaml#/components/schemas/Store`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Store with _$Store {
  const Store._();

  /// Creates the store settings record.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Store({
    required String id,
    required String name,
    String? seoTitle,
    String? metaDescription,
    String? metaKeywords,
    String? facebook,
    String? twitter,
    String? instagram,
    String? customerSupportEmail,
    String? logoUrl,
  }) = _Store;

  /// Parses the store settings from their JSON shape.
  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Store name.
  @override
  String get name;

  /// SEO title override, when set.
  @override
  String? get seoTitle;

  /// Meta description, when set.
  @override
  String? get metaDescription;

  /// Meta keywords, when set.
  @override
  String? get metaKeywords;

  /// Facebook page, as entered by the merchant: a handle or a full URL.
  @override
  String? get facebook;

  /// X (Twitter) account, as entered by the merchant: a handle or a full URL.
  @override
  String? get twitter;

  /// Instagram account, as entered by the merchant: a handle or a full URL.
  @override
  String? get instagram;

  /// Customer support email, when set.
  @override
  String? get customerSupportEmail;

  /// Logo URL, when set.
  @override
  String? get logoUrl;

  /// Serializes the store settings back to their JSON shape.
}

/// A store/seller policy page (terms, returns, …).
///
/// Source: `packages/sdk/src/types/generated/Policy.ts`;
/// SPEC `store.yaml#/components/schemas/Policy`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Policy with _$Policy {
  const Policy._();

  /// Creates a policy.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Policy({
    required String id,
    required String name,
    required String slug,
    String? body,
    String? bodyHtml,
    required String updatedAt,
  }) = _Policy;

  /// Parses a policy from its JSON shape.
  factory Policy.fromJson(Map<String, Object?> json) => _$PolicyFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Policy name.
  @override
  String get name;

  /// URL slug.
  @override
  String get slug;

  /// Plain-text body, when set.
  @override
  String? get body;

  /// Rendered HTML body, when set.
  @override
  String? get bodyHtml;

  /// Last update timestamp, as reported by the API (kept as-is).
  @override
  String get updatedAt;

  /// Serializes this policy back to its JSON shape.
}

/// A market: currency + locales + countries served together.
///
/// Source: `packages/sdk/src/types/generated/Market.ts`;
/// SPEC `store.yaml#/components/schemas/Market`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Market with _$Market {
  const Market._();

  /// Creates a market.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Market({
    required String id,
    required String name,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
    @JsonKey(unknownEnumValue: LocaleCode.unknown)
    required LocaleCode defaultLocale,
    required bool taxInclusive,
    @JsonKey(name: 'default') required bool isDefault,
    required List<CountryCode> countryCodes,
    required List<String> countryIsos,
    required List<LocaleCode> supportedLocales,
    @JsonKey(includeIfNull: false) List<Country>? countries,
  }) = _Market;

  /// Parses a market from its JSON shape.
  factory Market.fromJson(Map<String, Object?> json) => _$MarketFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Market name.
  @override
  String get name;

  /// Pricing currency of the market.
  @override
  CurrencyCode get currency;

  /// Default locale of the market.
  @override
  LocaleCode get defaultLocale;

  /// Whether prices of this market already include tax.
  @override
  bool get taxInclusive;

  /// Whether this is the store's default market.
  @override
  bool get isDefault;

  /// Country codes served by this market.
  @override
  List<CountryCode> get countryCodes;

  /// Legacy country ISOs. Deprecated upstream in favor of [countryCodes]
  /// (removal slated for 6.5) but still serialized; kept as plain strings.
  @override
  List<String> get countryIsos;

  /// Locales supported by this market.
  @override
  List<LocaleCode> get supportedLocales;

  /// Expanded countries, when the association was expanded.
  @override
  List<Country>? get countries;

  /// Serializes this market back to its JSON shape.
}
