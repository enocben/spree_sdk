// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Price _$PriceFromJson(Map<String, dynamic> json) => _Price(
  id: json['id'] as String,
  currency: $enumDecodeNullable(
    _$CurrencyCodeEnumMap,
    json['currency'],
    unknownValue: CurrencyCode.unknown,
  ),
  amount: json['amount'] as String?,
  compareAtAmount: json['compare_at_amount'] as String?,
  priceListId: json['price_list_id'] as String?,
);

Map<String, dynamic> _$PriceToJson(_Price instance) => <String, dynamic>{
  'id': instance.id,
  'currency': instance.currency?.toJson(),
  'amount': instance.amount,
  'compare_at_amount': instance.compareAtAmount,
  'price_list_id': instance.priceListId,
};

const _$CurrencyCodeEnumMap = {
  CurrencyCode.aed: 'AED',
  CurrencyCode.afn: 'AFN',
  CurrencyCode.all: 'ALL',
  CurrencyCode.amd: 'AMD',
  CurrencyCode.ang: 'ANG',
  CurrencyCode.aoa: 'AOA',
  CurrencyCode.ars: 'ARS',
  CurrencyCode.aud: 'AUD',
  CurrencyCode.awg: 'AWG',
  CurrencyCode.azn: 'AZN',
  CurrencyCode.bam: 'BAM',
  CurrencyCode.bbd: 'BBD',
  CurrencyCode.bdt: 'BDT',
  CurrencyCode.bgn: 'BGN',
  CurrencyCode.bhd: 'BHD',
  CurrencyCode.bif: 'BIF',
  CurrencyCode.bmd: 'BMD',
  CurrencyCode.bnd: 'BND',
  CurrencyCode.bob: 'BOB',
  CurrencyCode.brl: 'BRL',
  CurrencyCode.bsd: 'BSD',
  CurrencyCode.btn: 'BTN',
  CurrencyCode.bwp: 'BWP',
  CurrencyCode.byn: 'BYN',
  CurrencyCode.byr: 'BYR',
  CurrencyCode.bzd: 'BZD',
  CurrencyCode.cad: 'CAD',
  CurrencyCode.cdf: 'CDF',
  CurrencyCode.chf: 'CHF',
  CurrencyCode.clf: 'CLF',
  CurrencyCode.clp: 'CLP',
  CurrencyCode.cny: 'CNY',
  CurrencyCode.cop: 'COP',
  CurrencyCode.crc: 'CRC',
  CurrencyCode.cuc: 'CUC',
  CurrencyCode.cup: 'CUP',
  CurrencyCode.cve: 'CVE',
  CurrencyCode.czk: 'CZK',
  CurrencyCode.djf: 'DJF',
  CurrencyCode.dkk: 'DKK',
  CurrencyCode.dop: 'DOP',
  CurrencyCode.dzd: 'DZD',
  CurrencyCode.eek: 'EEK',
  CurrencyCode.egp: 'EGP',
  CurrencyCode.ern: 'ERN',
  CurrencyCode.etb: 'ETB',
  CurrencyCode.eur: 'EUR',
  CurrencyCode.fjd: 'FJD',
  CurrencyCode.fkp: 'FKP',
  CurrencyCode.gbp: 'GBP',
  CurrencyCode.gel: 'GEL',
  CurrencyCode.ghs: 'GHS',
  CurrencyCode.gip: 'GIP',
  CurrencyCode.gmd: 'GMD',
  CurrencyCode.gnf: 'GNF',
  CurrencyCode.gtq: 'GTQ',
  CurrencyCode.gyd: 'GYD',
  CurrencyCode.hkd: 'HKD',
  CurrencyCode.hnl: 'HNL',
  CurrencyCode.hrk: 'HRK',
  CurrencyCode.htg: 'HTG',
  CurrencyCode.huf: 'HUF',
  CurrencyCode.idr: 'IDR',
  CurrencyCode.ils: 'ILS',
  CurrencyCode.inr: 'INR',
  CurrencyCode.iqd: 'IQD',
  CurrencyCode.irr: 'IRR',
  CurrencyCode.isk: 'ISK',
  CurrencyCode.jmd: 'JMD',
  CurrencyCode.jod: 'JOD',
  CurrencyCode.jpy: 'JPY',
  CurrencyCode.kes: 'KES',
  CurrencyCode.kgs: 'KGS',
  CurrencyCode.khr: 'KHR',
  CurrencyCode.kmf: 'KMF',
  CurrencyCode.kpw: 'KPW',
  CurrencyCode.krw: 'KRW',
  CurrencyCode.kwd: 'KWD',
  CurrencyCode.kyd: 'KYD',
  CurrencyCode.kzt: 'KZT',
  CurrencyCode.lak: 'LAK',
  CurrencyCode.lbp: 'LBP',
  CurrencyCode.lkr: 'LKR',
  CurrencyCode.lrd: 'LRD',
  CurrencyCode.lsl: 'LSL',
  CurrencyCode.ltl: 'LTL',
  CurrencyCode.lvl: 'LVL',
  CurrencyCode.lyd: 'LYD',
  CurrencyCode.mad: 'MAD',
  CurrencyCode.mdl: 'MDL',
  CurrencyCode.mga: 'MGA',
  CurrencyCode.mkd: 'MKD',
  CurrencyCode.mmk: 'MMK',
  CurrencyCode.mnt: 'MNT',
  CurrencyCode.mop: 'MOP',
  CurrencyCode.mro: 'MRO',
  CurrencyCode.mru: 'MRU',
  CurrencyCode.mtl: 'MTL',
  CurrencyCode.mur: 'MUR',
  CurrencyCode.mvr: 'MVR',
  CurrencyCode.mwk: 'MWK',
  CurrencyCode.mxn: 'MXN',
  CurrencyCode.myr: 'MYR',
  CurrencyCode.mzn: 'MZN',
  CurrencyCode.nad: 'NAD',
  CurrencyCode.ngn: 'NGN',
  CurrencyCode.nio: 'NIO',
  CurrencyCode.nok: 'NOK',
  CurrencyCode.npr: 'NPR',
  CurrencyCode.nzd: 'NZD',
  CurrencyCode.omr: 'OMR',
  CurrencyCode.pab: 'PAB',
  CurrencyCode.pen: 'PEN',
  CurrencyCode.pgk: 'PGK',
  CurrencyCode.php: 'PHP',
  CurrencyCode.pkr: 'PKR',
  CurrencyCode.pln: 'PLN',
  CurrencyCode.pyg: 'PYG',
  CurrencyCode.qar: 'QAR',
  CurrencyCode.ron: 'RON',
  CurrencyCode.rsd: 'RSD',
  CurrencyCode.rub: 'RUB',
  CurrencyCode.rwf: 'RWF',
  CurrencyCode.sar: 'SAR',
  CurrencyCode.sbd: 'SBD',
  CurrencyCode.scr: 'SCR',
  CurrencyCode.sdg: 'SDG',
  CurrencyCode.sek: 'SEK',
  CurrencyCode.sgd: 'SGD',
  CurrencyCode.shp: 'SHP',
  CurrencyCode.skk: 'SKK',
  CurrencyCode.sle: 'SLE',
  CurrencyCode.sll: 'SLL',
  CurrencyCode.sos: 'SOS',
  CurrencyCode.srd: 'SRD',
  CurrencyCode.ssp: 'SSP',
  CurrencyCode.std: 'STD',
  CurrencyCode.stn: 'STN',
  CurrencyCode.svc: 'SVC',
  CurrencyCode.syp: 'SYP',
  CurrencyCode.szl: 'SZL',
  CurrencyCode.thb: 'THB',
  CurrencyCode.tjs: 'TJS',
  CurrencyCode.tmm: 'TMM',
  CurrencyCode.tmt: 'TMT',
  CurrencyCode.tnd: 'TND',
  CurrencyCode.top: 'TOP',
  CurrencyCode.turkishLira: 'TRY',
  CurrencyCode.ttd: 'TTD',
  CurrencyCode.twd: 'TWD',
  CurrencyCode.tzs: 'TZS',
  CurrencyCode.uah: 'UAH',
  CurrencyCode.ugx: 'UGX',
  CurrencyCode.usd: 'USD',
  CurrencyCode.uyi: 'UYI',
  CurrencyCode.uyu: 'UYU',
  CurrencyCode.uyw: 'UYW',
  CurrencyCode.uzs: 'UZS',
  CurrencyCode.ved: 'VED',
  CurrencyCode.vef: 'VEF',
  CurrencyCode.ves: 'VES',
  CurrencyCode.vnd: 'VND',
  CurrencyCode.vuv: 'VUV',
  CurrencyCode.wst: 'WST',
  CurrencyCode.xaf: 'XAF',
  CurrencyCode.xcd: 'XCD',
  CurrencyCode.xcg: 'XCG',
  CurrencyCode.xof: 'XOF',
  CurrencyCode.xpf: 'XPF',
  CurrencyCode.yer: 'YER',
  CurrencyCode.zar: 'ZAR',
  CurrencyCode.zmk: 'ZMK',
  CurrencyCode.zmw: 'ZMW',
  CurrencyCode.zwd: 'ZWD',
  CurrencyCode.zwg: 'ZWG',
  CurrencyCode.zwl: 'ZWL',
  CurrencyCode.zwn: 'ZWN',
  CurrencyCode.zwr: 'ZWR',
  CurrencyCode.unknown: '',
};

_PriceHistory _$PriceHistoryFromJson(Map<String, dynamic> json) =>
    _PriceHistory(
      id: json['id'] as String,
      currency: $enumDecode(
        _$CurrencyCodeEnumMap,
        json['currency'],
        unknownValue: CurrencyCode.unknown,
      ),
      amount: json['amount'] as String?,
      recordedAt: json['recorded_at'] as String,
    );

Map<String, dynamic> _$PriceHistoryToJson(_PriceHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency.toJson(),
      'amount': instance.amount,
      'recorded_at': instance.recordedAt,
    };

_Media _$MediaFromJson(Map<String, dynamic> json) => _Media(
  id: json['id'] as String,
  productId: json['product_id'] as String?,
  variantIds: (json['variant_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  position: (json['position'] as num).toInt(),
  alt: json['alt'] as String?,
  mediaType: $enumDecode(
    _$MediaTypeEnumMap,
    json['media_type'],
    unknownValue: MediaType.unknown,
  ),
  externalVideoUrl: json['external_video_url'] as String?,
  focalPointX: (json['focal_point_x'] as num?)?.toDouble(),
  focalPointY: (json['focal_point_y'] as num?)?.toDouble(),
  videoProvider: json['video_provider'] as String?,
  videoEmbedUrl: json['video_embed_url'] as String?,
  videoUrl: json['video_url'] as String?,
  posterUrl: json['poster_url'] as String?,
  originalUrl: json['original_url'] as String?,
  miniUrl: json['mini_url'] as String?,
  smallUrl: json['small_url'] as String?,
  mediumUrl: json['medium_url'] as String?,
  largeUrl: json['large_url'] as String?,
  xlargeUrl: json['xlarge_url'] as String?,
  ogImageUrl: json['og_image_url'] as String?,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MediaToJson(_Media instance) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'variant_ids': instance.variantIds,
  'position': instance.position,
  'alt': instance.alt,
  'media_type': instance.mediaType.toJson(),
  'external_video_url': instance.externalVideoUrl,
  'focal_point_x': instance.focalPointX,
  'focal_point_y': instance.focalPointY,
  'video_provider': instance.videoProvider,
  'video_embed_url': instance.videoEmbedUrl,
  'video_url': instance.videoUrl,
  'poster_url': instance.posterUrl,
  'original_url': instance.originalUrl,
  'mini_url': instance.miniUrl,
  'small_url': instance.smallUrl,
  'medium_url': instance.mediumUrl,
  'large_url': instance.largeUrl,
  'xlarge_url': instance.xlargeUrl,
  'og_image_url': instance.ogImageUrl,
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

const _$MediaTypeEnumMap = {
  MediaType.image: 'image',
  MediaType.video: 'video',
  MediaType.externalVideo: 'external_video',
  MediaType.unknown: '',
};

_OptionType _$OptionTypeFromJson(Map<String, dynamic> json) => _OptionType(
  id: json['id'] as String,
  name: json['name'] as String,
  label: json['label'] as String,
  position: (json['position'] as num).toInt(),
  kind: $enumDecode(
    _$OptionTypeKindEnumMap,
    json['kind'],
    unknownValue: OptionTypeKind.unknown,
  ),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OptionTypeToJson(_OptionType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'position': instance.position,
      'kind': instance.kind.toJson(),
      'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
    };

const _$OptionTypeKindEnumMap = {
  OptionTypeKind.dropdown: 'dropdown',
  OptionTypeKind.colorSwatch: 'color_swatch',
  OptionTypeKind.buttons: 'buttons',
  OptionTypeKind.unknown: '',
};

_OptionValue _$OptionValueFromJson(Map<String, dynamic> json) => _OptionValue(
  id: json['id'] as String,
  optionTypeId: json['option_type_id'] as String,
  name: json['name'] as String,
  label: json['label'] as String,
  position: (json['position'] as num).toInt(),
  colorCode: json['color_code'] as String?,
  optionTypeName: json['option_type_name'] as String,
  optionTypeLabel: json['option_type_label'] as String,
  imageUrl: json['image_url'] as String?,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OptionValueToJson(_OptionValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option_type_id': instance.optionTypeId,
      'name': instance.name,
      'label': instance.label,
      'position': instance.position,
      'color_code': instance.colorCode,
      'option_type_name': instance.optionTypeName,
      'option_type_label': instance.optionTypeLabel,
      'image_url': instance.imageUrl,
      'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
    };

_Variant _$VariantFromJson(Map<String, dynamic> json) => _Variant(
  id: json['id'] as String,
  productId: json['product_id'] as String,
  sku: json['sku'] as String?,
  optionsText: json['options_text'] as String,
  trackInventory: json['track_inventory'] as bool,
  mediaCount: (json['media_count'] as num).toInt(),
  preorderShipsAt: json['preorder_ships_at'] as String?,
  thumbnailUrl: json['thumbnail_url'] as String?,
  purchasable: json['purchasable'] as bool,
  inStock: json['in_stock'] as bool,
  backorderable: json['backorderable'] as bool,
  preorder: json['preorder'] as bool,
  weight: (json['weight'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  width: (json['width'] as num?)?.toDouble(),
  depth: (json['depth'] as num?)?.toDouble(),
  weightUnit: $enumDecode(
    _$WeightUnitEnumMap,
    json['weight_unit'],
    unknownValue: WeightUnit.unknown,
  ),
  dimensionsUnit: $enumDecode(
    _$DimensionUnitEnumMap,
    json['dimensions_unit'],
    unknownValue: DimensionUnit.unknown,
  ),
  minimumOrderQuantity: (json['minimum_order_quantity'] as num).toInt(),
  orderMultiple: (json['order_multiple'] as num).toInt(),
  purchaseUnit: $enumDecode(
    _$PurchaseUnitEnumMap,
    json['purchase_unit'],
    unknownValue: PurchaseUnit.unknown,
  ),
  unitsPerCarton: (json['units_per_carton'] as num?)?.toInt(),
  price: Price.fromJson(json['price'] as Map<String, dynamic>),
  originalPrice: json['original_price'] == null
      ? null
      : Price.fromJson(json['original_price'] as Map<String, dynamic>),
  sellerId: json['seller_id'] as String?,
  seller: json['seller'] == null
      ? null
      : Seller.fromJson(json['seller'] as Map<String, dynamic>),
  primaryMedia: json['primary_media'] == null
      ? null
      : Media.fromJson(json['primary_media'] as Map<String, dynamic>),
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
      .toList(),
  optionValues: (json['option_values'] as List<dynamic>)
      .map((e) => OptionValue.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
  priorPrice: json['prior_price'] == null
      ? null
      : PriceHistory.fromJson(json['prior_price'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VariantToJson(_Variant instance) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'sku': instance.sku,
  'options_text': instance.optionsText,
  'track_inventory': instance.trackInventory,
  'media_count': instance.mediaCount,
  'preorder_ships_at': instance.preorderShipsAt,
  'thumbnail_url': instance.thumbnailUrl,
  'purchasable': instance.purchasable,
  'in_stock': instance.inStock,
  'backorderable': instance.backorderable,
  'preorder': instance.preorder,
  'weight': instance.weight,
  'height': instance.height,
  'width': instance.width,
  'depth': instance.depth,
  'weight_unit': instance.weightUnit.toJson(),
  'dimensions_unit': instance.dimensionsUnit.toJson(),
  'minimum_order_quantity': instance.minimumOrderQuantity,
  'order_multiple': instance.orderMultiple,
  'purchase_unit': instance.purchaseUnit.toJson(),
  'units_per_carton': instance.unitsPerCarton,
  'price': instance.price.toJson(),
  'original_price': instance.originalPrice?.toJson(),
  'seller_id': instance.sellerId,
  'seller': instance.seller?.toJson(),
  'primary_media': instance.primaryMedia?.toJson(),
  'media': ?instance.media?.map((e) => e.toJson()).toList(),
  'option_values': instance.optionValues.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
  'prior_price': instance.priorPrice?.toJson(),
};

const _$WeightUnitEnumMap = {
  WeightUnit.g: 'g',
  WeightUnit.kg: 'kg',
  WeightUnit.lb: 'lb',
  WeightUnit.oz: 'oz',
  WeightUnit.unknown: '',
};

const _$DimensionUnitEnumMap = {
  DimensionUnit.mm: 'mm',
  DimensionUnit.cm: 'cm',
  DimensionUnit.inch: 'in',
  DimensionUnit.ft: 'ft',
  DimensionUnit.unknown: '',
};

const _$PurchaseUnitEnumMap = {
  PurchaseUnit.unit: 'unit',
  PurchaseUnit.carton: 'carton',
  PurchaseUnit.unknown: '',
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  metaTitle: json['meta_title'] as String?,
  metaDescription: json['meta_description'] as String?,
  metaKeywords: json['meta_keywords'] as String?,
  variantCount: (json['variant_count'] as num).toInt(),
  availableOn: json['available_on'] as String?,
  preorderShipsAt: json['preorder_ships_at'] as String?,
  purchasable: json['purchasable'] as bool,
  preorder: json['preorder'] as bool,
  inStock: json['in_stock'] as bool,
  backorderable: json['backorderable'] as bool,
  available: json['available'] as bool,
  description: json['description'] as String?,
  descriptionHtml: json['description_html'] as String?,
  defaultVariantId: json['default_variant_id'] as String,
  buyBoxVariantId: json['buy_box_variant_id'] as String?,
  thumbnailUrl: json['thumbnail_url'] as String?,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  price: Price.fromJson(json['price'] as Map<String, dynamic>),
  originalPrice: json['original_price'] == null
      ? null
      : Price.fromJson(json['original_price'] as Map<String, dynamic>),
  sellerId: json['seller_id'] as String?,
  seller: json['seller'] == null
      ? null
      : Seller.fromJson(json['seller'] as Map<String, dynamic>),
  primaryMedia: json['primary_media'] == null
      ? null
      : Media.fromJson(json['primary_media'] as Map<String, dynamic>),
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
      .toList(),
  variants: (json['variants'] as List<dynamic>?)
      ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
      .toList(),
  defaultVariant: json['default_variant'] == null
      ? null
      : Variant.fromJson(json['default_variant'] as Map<String, dynamic>),
  optionTypes: (json['option_types'] as List<dynamic>?)
      ?.map((e) => OptionType.fromJson(e as Map<String, dynamic>))
      .toList(),
  optionValues: (json['option_values'] as List<dynamic>?)
      ?.map((e) => OptionValue.fromJson(e as Map<String, dynamic>))
      .toList(),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
  priorPrice: json['prior_price'] == null
      ? null
      : PriceHistory.fromJson(json['prior_price'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'meta_title': instance.metaTitle,
  'meta_description': instance.metaDescription,
  'meta_keywords': instance.metaKeywords,
  'variant_count': instance.variantCount,
  'available_on': instance.availableOn,
  'preorder_ships_at': instance.preorderShipsAt,
  'purchasable': instance.purchasable,
  'preorder': instance.preorder,
  'in_stock': instance.inStock,
  'backorderable': instance.backorderable,
  'available': instance.available,
  'description': instance.description,
  'description_html': instance.descriptionHtml,
  'default_variant_id': instance.defaultVariantId,
  'buy_box_variant_id': instance.buyBoxVariantId,
  'thumbnail_url': instance.thumbnailUrl,
  'tags': instance.tags,
  'price': instance.price.toJson(),
  'original_price': instance.originalPrice?.toJson(),
  'seller_id': instance.sellerId,
  'seller': instance.seller?.toJson(),
  'primary_media': instance.primaryMedia?.toJson(),
  'media': ?instance.media?.map((e) => e.toJson()).toList(),
  'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
  'default_variant': instance.defaultVariant?.toJson(),
  'option_types': ?instance.optionTypes?.map((e) => e.toJson()).toList(),
  'option_values': ?instance.optionValues?.map((e) => e.toJson()).toList(),
  'categories': ?instance.categories?.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
  'prior_price': instance.priorPrice?.toJson(),
};

_ProductFilterPriceRange _$ProductFilterPriceRangeFromJson(
  Map<String, dynamic> json,
) => _ProductFilterPriceRange(
  id: json['id'] as String,
  min: json['min'] as String,
  max: json['max'] as String,
  currency: $enumDecode(
    _$CurrencyCodeEnumMap,
    json['currency'],
    unknownValue: CurrencyCode.unknown,
  ),
);

Map<String, dynamic> _$ProductFilterPriceRangeToJson(
  _ProductFilterPriceRange instance,
) => <String, dynamic>{
  'id': instance.id,
  'min': instance.min,
  'max': instance.max,
  'currency': instance.currency.toJson(),
};

_ProductFilterAvailabilityOption _$ProductFilterAvailabilityOptionFromJson(
  Map<String, dynamic> json,
) => _ProductFilterAvailabilityOption(
  id: $enumDecode(
    _$StockAvailabilityEnumMap,
    json['id'],
    unknownValue: StockAvailability.unknown,
  ),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$ProductFilterAvailabilityOptionToJson(
  _ProductFilterAvailabilityOption instance,
) => <String, dynamic>{'id': instance.id.toJson(), 'count': instance.count};

const _$StockAvailabilityEnumMap = {
  StockAvailability.inStock: 'in_stock',
  StockAvailability.outOfStock: 'out_of_stock',
  StockAvailability.unknown: '',
};

_ProductFilterAvailability _$ProductFilterAvailabilityFromJson(
  Map<String, dynamic> json,
) => _ProductFilterAvailability(
  id: json['id'] as String,
  options: (json['options'] as List<dynamic>)
      .map(
        (e) =>
            ProductFilterAvailabilityOption.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ProductFilterAvailabilityToJson(
  _ProductFilterAvailability instance,
) => <String, dynamic>{
  'id': instance.id,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_ProductFilterOptionValue _$ProductFilterOptionValueFromJson(
  Map<String, dynamic> json,
) => _ProductFilterOptionValue(
  id: json['id'] as String,
  name: json['name'] as String,
  label: json['label'] as String,
  position: (json['position'] as num).toInt(),
  colorCode: json['color_code'] as String?,
  imageUrl: json['image_url'] as String?,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$ProductFilterOptionValueToJson(
  _ProductFilterOptionValue instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'label': instance.label,
  'position': instance.position,
  'color_code': instance.colorCode,
  'image_url': instance.imageUrl,
  'count': instance.count,
};

_ProductFilterOption _$ProductFilterOptionFromJson(Map<String, dynamic> json) =>
    _ProductFilterOption(
      id: json['id'] as String,
      name: json['name'] as String,
      label: json['label'] as String,
      kind: $enumDecode(
        _$OptionTypeKindEnumMap,
        json['kind'],
        unknownValue: OptionTypeKind.unknown,
      ),
      options: (json['options'] as List<dynamic>)
          .map(
            (e) => ProductFilterOptionValue.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$ProductFilterOptionToJson(
  _ProductFilterOption instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'label': instance.label,
  'kind': instance.kind.toJson(),
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_ProductFilterCategoryOption _$ProductFilterCategoryOptionFromJson(
  Map<String, dynamic> json,
) => _ProductFilterCategoryOption(
  id: json['id'] as String,
  name: json['name'] as String,
  permalink: json['permalink'] as String,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$ProductFilterCategoryOptionToJson(
  _ProductFilterCategoryOption instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'permalink': instance.permalink,
  'count': instance.count,
};

_ProductFilterCategory _$ProductFilterCategoryFromJson(
  Map<String, dynamic> json,
) => _ProductFilterCategory(
  id: json['id'] as String,
  options: (json['options'] as List<dynamic>)
      .map(
        (e) => ProductFilterCategoryOption.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ProductFilterCategoryToJson(
  _ProductFilterCategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_ProductFilterSortOption _$ProductFilterSortOptionFromJson(
  Map<String, dynamic> json,
) => _ProductFilterSortOption(
  id: json['id'] as String,
  label: json['label'] as String?,
);

Map<String, dynamic> _$ProductFilterSortOptionToJson(
  _ProductFilterSortOption instance,
) => <String, dynamic>{'id': instance.id, 'label': instance.label};

_ProductFiltersResponse _$ProductFiltersResponseFromJson(
  Map<String, dynamic> json,
) => _ProductFiltersResponse(
  id: json['id'] as String,
  defaultSort: json['default_sort'] as String,
  totalCount: (json['total_count'] as num).toInt(),
  filters: _productFiltersFromJson(json['filters'] as List),
  sortOptions: (json['sort_options'] as List<dynamic>)
      .map((e) => ProductFilterSortOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductFiltersResponseToJson(
  _ProductFiltersResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'default_sort': instance.defaultSort,
  'total_count': instance.totalCount,
  'filters': _productFiltersToJson(instance.filters),
  'sort_options': instance.sortOptions.map((e) => e.toJson()).toList(),
};
