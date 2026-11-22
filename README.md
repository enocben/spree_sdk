# Spree SDK for Dart

A pure-Dart SDK for the Spree Commerce Store API. It provides typed
resources and models, configurable authentication, pagination helpers,
HTTP transport with retries and timeouts, and structured SDK errors.

The package has no Flutter dependency and can be used in Dart server,
command-line, and Flutter applications.

> This SDK is compatible with the Spree Store API v3 base path
> `/api/v3/store`.

## Features

- Typed access to products, categories, sellers, collections, carts,
  checkout, orders, customers, and account data
- Authentication, password reset, customer registration, and token refresh
- Guest cart tokens and customer JWT providers
- Store, market, locale, currency, country, and delivery resources
- Wishlists, newsletters, GDPR data requests, returns, claims, and B2B
  company operations
- Payment sessions and payment setup sessions
- Paginated responses with typed metadata
- Automatic retries for safe reads and explicit idempotency-key retries for
  mutations
- Request interceptors, response interceptors, and per-request options
- Secret redaction in exceptions and diagnostics

## Requirements

- Dart SDK `^3.14.0`

## Installation

Add the package to `pubspec.yaml`:

```yaml
dependencies:
  spree_sdk: ^1.0.0
```

Then import the public API:

```dart
import 'package:spree_sdk/spree_sdk.dart';
```

## Quick start

```dart
import 'package:spree_sdk/spree_sdk.dart';

Future<void> main() async {
  final client = SpreeClient(
    baseUrl: Uri.parse('https://api.example.com'),
    publishableKey: 'your-publishable-key',
    locale: 'en',
    currency: 'USD',
  );

  try {
    final products = await client.products.list(
      page: 1,
      limit: 10,
      sort: '-updated_at',
    );

    for (final product in products.data) {
      print('${product.id}: ${product.name}');
    }
  } finally {
    client.close();
  }
}
```

The SDK appends `/api/v3/store` to `baseUrl`. Do not include that path in
`baseUrl` itself.

## Client configuration

```dart
final client = SpreeClient(
  baseUrl: Uri.parse('https://api.example.com'),
  publishableKey: 'your-publishable-key',
  locale: 'en',
  currency: 'USD',
  country: 'US',
  channel: 'default',
  timeout: const Duration(seconds: 30),
  maxRedirects: 5,
);
```

`locale`, `currency`, `country`, and `channel` are sent as Spree request
headers by default. Use `RequestOptions` to override them for a single
request.

## Authentication

Implement `AuthTokenProvider` to supply customer JWTs. The core package never
persists or chooses storage for tokens:

```dart
class InMemoryAuthProvider implements AuthTokenProvider {
  String? accessToken;
  String? refreshTokenValue;

  @override
  Future<String?> getToken() async => accessToken;

  @override
  Future<String?> refreshToken() async {
    // Store/refresh the token using a platform-specific adapter.
    return accessToken;
  }
}
```

Pass the provider to the client:

```dart
final auth = InMemoryAuthProvider();

final client = SpreeClient(
  baseUrl: Uri.parse('https://api.example.com'),
  publishableKey: 'your-publishable-key',
  authProvider: auth,
);
```

Authenticate with the auth resource:

```dart
final tokens = await client.auth.login(
  email: 'customer@example.com',
  password: 'secret',
);

auth.accessToken = tokens.token;
auth.refreshTokenValue = tokens.refreshToken;
```

The SDK also supports registration, logout, password reset, and refresh.
Password reset and newsletter operations receive typed parameter objects;
customer and address updates use `UpdateCustomerParams` and `AddressParams`.

## Guest cart and per-request options

Use `RequestOptions` for guest/order tokens, explicit JWT overrides,
idempotency keys, contextual headers, and timeout overrides:

```dart
const options = RequestOptions(
  spreeToken: 'guest-cart-token',
  idempotencyKey: 'cart-complete-unique-id',
);

final checkout = await client.carts.complete(
  'cart-id',
  options: options,
);
```

When `authProvider` is configured, a request without `RequestOptions.token`
uses the token returned by `getToken()`. Explicit request options take
precedence.

## Pagination

Collection resources return `PaginatedResponse<T>`:

```dart
final response = await client.products.list(
  page: 2,
  limit: 25,
  sort: '-updated_at',
  filter: {'name_cont': 'shirt'},
);

print(response.data);
print(response.meta.page);
print(response.meta.pages);
print(response.meta.count);
```

`ListQuery` builds shared `page`, `limit`, `expand`, `fields`, `sort`, and
Ransack-style `q[...]` parameters:

```dart
final query = const ListQuery(
  page: 1,
  limit: 20,
  sort: '-created_at',
).toQueryParameters();
```

## Resource access

Resources are available from `SpreeClient`:

| Area | Accessor |
| --- | --- |
| Authentication | `client.auth` |
| Products and listing filters | `client.products` |
| Categories, sellers, collections | `client.categories`, `client.sellers`, `client.collections` |
| Countries, currencies, locales | `client.countries`, `client.currencies`, `client.locales` |
| Channel, store, policies, markets | `client.channel`, `client.store`, `client.policies`, `client.markets` |
| Delivery | `client.deliveryMethods` |
| Carts and checkout | `client.carts` |
| Payment sessions | `client.paymentSessions` |
| Orders, returns, claims | `client.orders`, `client.orderReturns`, `client.orderClaims` |
| Customer profile and addresses | `client.customer`, `client.customerAddresses` |
| Credit cards and payment setup | `client.customerCreditCards`, `client.paymentSetupSessions` |
| Wishlists | `client.wishlists`, `client.wishlistItems` |
| Newsletter and GDPR | `client.newsletter`, `client.gdpr` |
| B2B companies | `client.accountCompanies`, `client.companies`, `client.companyMembers`, `client.companyOrders` |

For custom Store API operations, use the typed escape hatch:

```dart
final result = await client.request(
  'GET',
  '/products',
  query: {'page': '1', 'limit': '10'},
);
```

Use `requestPaginated<T>()` when implementing a custom paginated endpoint.

## Retries and idempotency

The default retry policy retries safe HTTP methods with exponential
backoff and optional jitter. Mutations are not retried unless the request
has an explicit idempotency key:

```dart
const retry = RetryConfig(
  maxRetries: 2,
  initialDelay: Duration(milliseconds: 500),
  maxDelay: Duration(seconds: 5),
);

final client = SpreeClient(
  baseUrl: Uri.parse('https://api.example.com'),
  publishableKey: 'your-publishable-key',
  retry: retry,
);
```

Payment, checkout, and other non-idempotent mutations should not be retried
blindly. Supply `RequestOptions.idempotencyKey` only when the server supports
the corresponding idempotency behavior.

## Errors

All SDK failures derive from `SpreeException`:

- `SpreeAuthError` for HTTP 401 and 403 responses
- `SpreeHttpError` for other unsuccessful HTTP responses
- `SpreeDecodeError` for malformed or unexpected JSON
- `SpreeTransportError` for network failures
- `SpreeTimeoutError` for client-side timeouts

```dart
try {
  await client.products.get('missing-product');
} on SpreeAuthError catch (error) {
  print('Authentication failed: ${error.code}');
} on SpreeHttpError catch (error) {
  print('HTTP ${error.statusCode}: ${error.message}');
} on SpreeTimeoutError {
  print('The request timed out');
} on SpreeException catch (error) {
  print(error.message);
}
```

Credentials are redacted from exception text, HTTP headers, and sensitive
URI query parameters.

## Lifecycle

Call `close()` when the client is no longer needed:

```dart
client.close();
```

A closed client cannot process additional requests.

## Development

Run the package checks from the repository root:

```bash
dart format --output=none --set-exit-if-changed .
dart analyze
dart test
```

Repository design and Store API contract references are available in
`docs/architecture/`, `docs/api/`, and `docs/research/`.

## License

This package is licensed under the [MIT License](./LICENSE).
