/// Shared fixture loader for model tests.
///
/// Fixture files live in `test/models/fixtures/` and are read relative to
/// the package root (the working directory of `dart test`). Every fixture is
/// synthetic (no secrets, no real customer or payment data) and its file name
/// reflects its upstream source:
///
/// * `auth_*` — SPEC `store.yaml#/components/schemas/AuthResponse` (+ the
///   narrow `AuthTokens` shape from `packages/sdk/src/types/index.ts`);
/// * `product_*` — `packages/sdk/src/types/generated/Product*.ts` +
///   SPEC `Product*` schemas;
/// * `category_tree` / `seller` / `collection` — generated
///   `Category` / `Seller` / `Collection` + SPEC;
/// * `country_us` / `currency_usd` / `locale_en` / `channel_default` /
///   `store` / `market_default` / `policy` — generated reference-data types
///   + SPEC;
/// * `cart_*` / `address_book_entry` / `discount_code` / `gift_card` /
///   `store_credit` — generated cart types + SPEC (`Discount`, …);
/// * `order_*` — generated `Order` / `OrderGroup` + SPEC;
/// * `customer_*` — generated `Customer` + SPEC.
library;

import 'dart:convert';
import 'dart:io';

/// Loads [name] from `test/models/fixtures/` as a decoded JSON object.
Map<String, Object?> loadFixture(String name) {
  final file = File('test/models/fixtures/$name');
  return jsonDecode(file.readAsStringSync()) as Map<String, Object?>;
}
