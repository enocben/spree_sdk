# Public API Design (sketch — NOT implemented)

Status: **proposal**. All signatures below are illustrative; nothing here exists in `lib/` yet.
Conventions follow Effective Dart: `lowerCamelCase` members, immutable models, named parameters for optional inputs, predictable `Future<T>` returns.

## 1. Client construction

```dart
import 'package:spree_sdk/spree_sdk.dart';

final client = SpreeClient(
  baseUrl: Uri.parse('https://api.mystore.com'),
  publishableKey: 'pk_xxx',          // Store API key → x-spree-api-key header (inferred)
  authProvider: myTokenProvider,     // optional; see ADR-004
  retry: const RetryConfig(),        // optional; safe-reads only by default (ADR-003)
  locale: 'en',                      // optional defaults forwarded as params/headers (inferred)
  currency: 'USD',                   // optional
);

// Escape hatch for custom endpoints (mirrors TS client.request — inferred):
final brands = await client.requestPaginated<Brand>(
  'GET',
  '/brands',
  fromJson: Brand.fromJson,
);

// Release resources:
client.close();
```

Design notes:

- Factory-style const-friendly config object (`SpreeConfig`) may back the constructor; exact form is frozen in Phase 02.
- `baseUrl` is a `Uri` (not `String`) — fail fast on malformed origins.
- All resource accessors (`client.products`, `client.carts`, …) are stable getters composed once by the client.

## 2. Resources (mirrors TS public surface — inferred, pending analyzer matrix)

```dart
// Products
Future<PaginatedResponse<Product>> list({int? page, int? limit, List<String>? expand, Map<String, String>? filter});
Future<Product> get(String idOrSlug, {List<String>? expand});

// Carts
Future<Cart> create({String? currency});
Future<Cart> get(String cartId, {RequestOptions? options});
Future<Cart> update(String cartId, {String? email, RequestOptions? options});
Future<Cart> complete(String cartId, {RequestOptions? options});
Future<PaginatedResponse<Cart>> list({RequestOptions? options});

// Nested cart resources: client.carts.items / .payments / .paymentMethods / .discountCodes / ...
Future<LineItem> create(String cartId, {required String variantId, required int quantity, RequestOptions? options});
Future<LineItem> update(String cartId, String lineItemId, {required int quantity, RequestOptions? options});
Future<void> delete(String cartId, String lineItemId, {RequestOptions? options});

// Auth
Future<AuthResult> login({required String email, required String password});
Future<void> logout({RequestOptions? options});

// Customer + nested: client.customer.addresses / .creditCards / .orders / ...
Future<Customer> get({RequestOptions? options});
Future<PaginatedResponse<Order>> listOrders({int? page, int? limit, RequestOptions? options});
```

Rules for all resource methods:

- Named parameters everywhere except single-identity arguments (`cartId`, `idOrSlug`).
- Guest/cart token travels via `RequestOptions(spreeToken: …)` — never ambient mutable client state (ADR-004).
- No invented endpoints/methods/params — every method needs a contract record (AGENTS.md §5) before implementation.

## 3. Predictable types

- `Future<T>` for single resources, `Future<PaginatedResponse<T>>` for collections.
- `void` only for true no-content operations (e.g. `delete`, `logout`) — pending contract verification.
- Errors via thrown `SpreeError` subtypes, never error-union returns (ADR-003).
- Unknown enum values map to a documented `unknown` fallback, never throw (ADR-002).

## 4. Barrel export discipline

- `lib/spree_sdk.dart` exports **only**: client, config, resources (interfaces), models, errors, pagination, auth-provider interface, request-options/retry-config types.
- Internal transport files live under `lib/src/…` and are **not** exported (ADR-001).
- Adding any new public symbol requires architect/orchestrator approval (AGENTS.md §9).
