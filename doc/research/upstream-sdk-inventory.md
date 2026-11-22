# Upstream SDK Inventory — `@spree/sdk` (research only, no code)

Inspection date: **2026-11-22** (Africa/Bujumbura, CAT).
Upstream repository: https://github.com/spree/spree/tree/main/packages/sdk —
commit **SHA `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`** (commit date 2026-11-22,
message "Fix: Kept the default market's currency and locale when saving other
store settings (#15289)"). No release tag points at this commit (main branch tip).
Target server: **Spree 6.0.x**, **Store API v3**, base path **`/api/v3/store`**
(verified: `packages/sdk/src/client.ts` passes `'/api/v3/store'` as `basePath` to
`createRequestFn`; docs `docs/api-reference/store-api/introduction.mdx` state all
routes are prefixed with `/api/v3/store`).

Status legend used in this file: **verified** = seen directly in the cited upstream
source; **inferred** = reasonable reading not stated explicitly; **unknown** = not
found in inspected sources.

## 1. Package metadata (verified)

Source: `packages/sdk/package.json` at the SHA above.

| Field | Value |
|---|---|
| name | `@spree/sdk` |
| version | `6.0.5` |
| description | Official TypeScript SDK for the Spree Commerce Store API: carts, checkout, catalog and customer accounts for storefronts and apps on the open-source headless commerce platform |
| license | MIT (`LICENSE` file in package dir) |
| author | Vendo Connect Inc. |
| module system | ESM (`./dist/index.js`) + CJS (`./dist/index.cjs`), types included |
| exports | `.`, `./types`, `./zod`, `./webhooks` (each with import/require/types conditions) |
| node engines | `>=18.0.0` |
| runtime dependencies | **zero** (verified: no `dependencies` key; `zod` and `typescript` are peer deps, `zod >=3.0.0` optional peer; `@spree/sdk-core` is a workspace-internal package, **not** published on public npm — verified: `npm view @spree/sdk-core` returns 404) |
| scripts | `build` (tsup), `test` (vitest), `test:integration`, `lint`/`format` (biome), `generate:zod`, `generate:filters`, `generate:params` (codegen from `docs/api-reference`) |

npm registry state (consulted 2026-11-22, https://www.npmjs.com/package/@spree/sdk):
`6.0.5`, public, 0 dependencies, 72 versions listed (verified). "Published 6 days
ago" per the registry page → first seen ~2026-11-16 (inferred date, registry UI text).
Release notes: `packages/sdk/CHANGELOG.md` — 6.0.5 adds store `meta_keywords`,
`logo_url`, social accounts and `customer_support_email` to `client.store.get()`
(verified).

## 2. Public exports (verified)

Source: `packages/sdk/src/index.ts` (38 lines), `client.ts` (110 lines),
`extensions.ts`, `order-group.ts`.

- `createClient(config: ClientConfig): Client` — flat client, all store namespaces
  directly on the object (`client.products.list()`, …).
- `StoreClient` class — same namespaces, constructed with a `RequestFn` (for
  subclassing / advanced use).
- `ClientConfig`: `baseUrl` (trailing `/` stripped), `publishableKey`,
  optional `fetch` (defaults to global fetch), `retry: RetryConfig | false`
  (enabled by default), `locale?`, `currency?`, `country?`, `channel?`.
- Sticky setters on `Client`: `setLocale`, `setCurrency`, `setCountry`, `setChannel`.
- `client.extend(extension)` / `defineStoreExtension(name, build)` — typed namespace
  for third-party Store API endpoints sharing the client's request fn, auth headers,
  locale defaults and retries; refuses a name the client already has (verified:
  `client.ts:71-81`, CHANGELOG 6.0.3 entry).
- `isOrderGroup(result): result is OrderGroup` — narrows `carts.complete` /
  `orders.get` union via the `orders` key (verified: `order-group.ts`).
- Re-exports from `@spree/sdk-core`: request infra types (`RequestFn`,
  `RequestOptions`, `RetryConfig`, `TimeZone`), money helpers (`formatMoney`,
  `parseMoney`-family: `compareMoney`, `sumMoney`, `subtractMoney`,
  `multiplyMoney`, `negateMoney`, `isZeroMoney`, `isDecimalString`, `decimalPlaces`),
  code lists (`CountryCode`, `CurrencyCode`, `LocaleCode`, `WeightUnit`,
  `DimensionUnit`), `SpreeError`, `Extension`/`ExtensionContext`/`Extended` types.
- `export * from './types'` — all models, params, filters, sort types; legacy
  `Store*`-prefixed aliases kept for backward compatibility (verified:
  `docs/developer/sdk/configuration.mdx`, "Available Types" section).
- `./types` subpath: same type surface for direct import. `./zod` subpath: runtime
  Zod schemas generated from the API serializers (`src/zod/generated/*.ts`, ~106
  files). `./webhooks` subpath: typed webhook event catalog
  (`src/webhooks/generated/events.ts`, `schemas.ts`).

## 3. Resource / method inventory (verified)

Source: `packages/sdk/src/store-client.ts` (1624 lines). Every row below is a
**verified** method → HTTP verb + path template (relative to `/api/v3/store`).
`labelPath` is a client-side URL builder (no HTTP call). Full per-operation
contracts (headers/auth/query/body/envelope/errors) live in
`store-api-contract.md`.

| Namespace | Method | Verb + path |
|---|---|---|
| `auth` | `login` | `POST /auth/login` |
| `auth` | `refresh` | `POST /auth/refresh` |
| `auth` | `logout` | `POST /auth/logout` |
| `products` | `list` | `GET /products` |
| `products` | `get` | `GET /products/{idOrSlug}` |
| `products` | `filters` | `GET /products/filters` |
| `categories` | `list` | `GET /categories` |
| `categories` | `get` | `GET /categories/{idOrPermalink}` |
| `sellers` | `list` | `GET /sellers` |
| `sellers` | `get` | `GET /sellers/{idOrSlug}` |
| `collections` | `list` | `GET /collections` |
| `collections` | `get` | `GET /collections/{idOrPermalink}` |
| `collections.products` | `list` | `GET /collections/{idOrPermalink}/products` |
| `countries` | `list` | `GET /countries` |
| `countries` | `get` | `GET /countries/{iso}` |
| `currencies` | `list` | `GET /currencies` |
| `locales` | `list` | `GET /locales` |
| `channel` | `get` | `GET /channel` |
| `store` | `get` | `GET /store` |
| `deliveryMethods` | `list` | `GET /delivery_methods` (+ optional `fulfillment_type` query) |
| `deliveryMethods` | `get` | `GET /delivery_methods/{id}` |
| `deliveryMethods` | `pickupLocations` | `GET /delivery_methods/{id}/pickup_locations` (+ optional `cart_id`) |
| `deliveryMethods` | `pickupPoints` | `GET /delivery_methods/{id}/pickup_points` (`latitude`, `longitude` required) |
| `policies` | `list` | `GET /policies` |
| `policies` | `get` | `GET /policies/{id}` |
| `markets` | `list` | `GET /markets` |
| `markets` | `get` | `GET /markets/{id}` |
| `markets` | `resolve` | `GET /markets/resolve` (`country` query) |
| `markets.countries` | `list` | `GET /markets/{marketId}/countries` |
| `markets.countries` | `get` | `GET /markets/{marketId}/countries/{iso}` |
| `carts` | `list` | `GET /carts` |
| `carts` | `get` | `GET /carts/{cartId}` |
| `carts` | `create` | `POST /carts` |
| `carts` | `update` | `PATCH /carts/{cartId}` |
| `carts` | `delete` | `DELETE /carts/{cartId}` |
| `carts` | `associate` | `PATCH /carts/{cartId}/associate` (requires JWT `token` option) |
| `carts` | `complete` | `POST /carts/{cartId}/complete` → `Order \| OrderGroup` |
| `carts.addresses` | `list` | `GET /carts/{cartId}/addresses` (requires customer JWT, **not** guest token) |
| `carts.items` | `create` | `POST /carts/{cartId}/items` |
| `carts.items` | `update` | `PATCH /carts/{cartId}/items/{lineItemId}` |
| `carts.items` | `delete` | `DELETE /carts/{cartId}/items/{lineItemId}` |
| `carts.discountCodes` | `apply` | `POST /carts/{cartId}/discount_codes` (body `{code}`) |
| `carts.discountCodes` | `remove` | `DELETE /carts/{cartId}/discount_codes/{code}` |
| `carts.giftCards` | `apply` | `POST /carts/{cartId}/gift_cards` (body `{code}`) |
| `carts.giftCards` | `remove` | `DELETE /carts/{cartId}/gift_cards/{giftCardId}` |
| `carts.fulfillments` | `update` | `PATCH /carts/{cartId}/fulfillments/{fulfillmentId}` |
| `carts.payments` | `create` | `POST /carts/{cartId}/payments` (non-session methods only) |
| `carts.paymentSessions` | `create` | `POST /carts/{cartId}/payment_sessions` |
| `carts.paymentSessions` | `get` | `GET /carts/{cartId}/payment_sessions/{sessionId}` |
| `carts.paymentSessions` | `update` | `PATCH /carts/{cartId}/payment_sessions/{sessionId}` |
| `carts.paymentSessions` | `complete` | `PATCH /carts/{cartId}/payment_sessions/{sessionId}/complete` |
| `carts.storeCredits` | `apply` | `POST /carts/{cartId}/store_credits` (optional decimal-string `amount`) |
| `carts.storeCredits` | `remove` | `DELETE /carts/{cartId}/store_credits` |
| `orders` | `get` | `GET /orders/{id}` → `Order \| OrderGroup` (accepts cart id of the checkout) |
| `orders.returns` | `list` | `GET /orders/{orderId}/returns` |
| `orders.returns` | `get` | `GET /orders/{orderId}/returns/{id}` |
| `orders.returns` | `create` | `POST /orders/{orderId}/returns` |
| `orders.returns` | `labelPath` | client-side path builder, no HTTP call (verified: returns string template) |
| `orders.claims` | `list` | `GET /orders/{orderId}/claims` |
| `orders.claims` | `get` | `GET /orders/{orderId}/claims/{id}` |
| `orders.claims` | `create` | `POST /orders/{orderId}/claims` |
| `customers` | `create` | `POST /customers` (registration → `AuthTokens`) |
| `newsletterSubscribers` | `create` | `POST /newsletter_subscribers` |
| `newsletterSubscribers` | `verify` | `POST /newsletter_subscribers/verify` |
| `newsletterSubscribers` | `requestUnsubscribe` | `POST /newsletter_subscribers/request_unsubscribe` (always 202) |
| `newsletterSubscribers` | `delete` | `DELETE /newsletter_subscribers/{id}` (optional `token` query) |
| `customer` | `get` | `GET /customers/me` |
| `customer` | `update` | `PATCH /customers/me` |
| `customer.addresses` | `list/get/create/update/delete` | `GET\|GET\|POST\|PATCH\|DELETE /customers/me/addresses[/{id}]` |
| `customer.dataRequests` | `list` | `GET /customers/me/data_requests` |
| `customer.dataRequests` | `get` | `GET /customers/me/data_requests/{id}` (never carries download link) |
| `customer.dataRequests` | `create` | `POST /customers/me/data_requests` |
| `customer.creditCards` | `list/get/delete` | `GET /customers/me/credit_cards[/{id}]`, `DELETE …/{id}` (no create/delete-all; no update) |
| `customer.giftCards` | `list/get` | `GET /customers/me/gift_cards[/{id}]` |
| `customer.storeCredits` | `list/get` | `GET /customers/me/store_credits[/{id}]` |
| `customer.digitalLinks` | `list/get` | `GET /customers/me/digital_links[/{id}]` |
| `customer.orders` | `list` | `GET /customers/me/orders` |
| `customer.orders` | `get` | `GET /customers/me/orders/{id}` |
| `customer.paymentSetupSessions` | `create` | `POST /customers/me/payment_setup_sessions` |
| `customer.paymentSetupSessions` | `get` | `GET /customers/me/payment_setup_sessions/{id}` |
| `customer.paymentSetupSessions` | `complete` | `PATCH /customers/me/payment_setup_sessions/{id}/complete` |
| `dataRequests` | `get` | `GET /data_requests/{token}` (token URL-encoded, no auth) |
| `dataRequests` | `confirm` | `POST /data_requests/{token}/confirmation` (call on user gesture, not page load) |
| `passwordResets` | `create` | `POST /password_resets` (always 202) |
| `passwordResets` | `update` | `PATCH /password_resets/{token}` → `AuthTokens` (auto-login) |
| `account` | `companies` | `GET /account/companies` → `{data: (CompanyMembership & {company})[]}` |
| `companies` | `get/update` | `GET\|PATCH /companies/{id}` |
| `companies.addresses` | `list/create/update/delete` | `GET\|POST /companies/{id}/addresses`, `PATCH\|DELETE …/{id}` |
| `companies.members` | `list` | `GET /companies/{id}/members` |
| `companies.members` | `create` | `POST /companies/{id}/members` (always returns invitation) |
| `companies.members` | `delete` | `DELETE /companies/{id}/members/{id}` |
| `companies.invitations` | `list` | `GET /companies/{id}/invitations` |
| `companies.invitations` | `delete` | `DELETE /companies/{id}/invitations/{id}` |
| `companies.orders` | `list` | `GET /companies/{id}/orders` (subtree purchases) |
| `companyInvitations` | `lookup` | `GET /company_invitations/{token}` (+ `company_name`, `store_name`) |
| `companyInvitations` | `accept` | `POST /company_invitations/{token}/accept` (body defaults to `{}`) |
| `companyInvitations` | `delete` | `DELETE /company_invitations/{id}` |
| `wishlists` | `list/create` | `GET\|POST /wishlists` |
| `wishlists` | `get/update/delete` | `GET\|PATCH\|DELETE /wishlists/{id}` |
| `wishlists.items` | `create` | `POST /wishlists/{wishlistId}/items` |
| `wishlists.items` | `update` | `PATCH /wishlists/{wishlistId}/items/{itemId}` |
| `wishlists.items` | `delete` | `DELETE /wishlists/{wishlistId}/items/{itemId}` |

Total: **103 request methods + 1 client-side path helper** (`orders.returns.labelPath`),
across 20 top-level namespaces (verified by counting `this.request<` call sites in
`store-client.ts` plus the helper).

## 4. Models / types (verified)

- `src/types/generated/`: **106 files** — one interface per serializer
  (`Address`, `Cart`, `Order`, `Product`, `Variant`, `Customer`, `Company`,
  `Wishlist`, … plus `Enums.ts`). Generated from API serializers (verified:
  `docs/developer/sdk/configuration.mdx` "generated types from the API serializers").
- `src/types/params/`: **42 files** — request body types
  (`CreateCartParams`, `UpdateCartParams`, `AddLineItemParams`, `RegisterParams`,
  `CreatePaymentSessionParams`, …, `TaxIdentifierParams`, `CreatePoDocumentParams`).
  Header comment states they are auto-generated from request schemas in
  `docs/api-reference` by `pnpm generate:params` (verified).
- `src/types/filters.generated.ts` + `ProductFilter*` types: Ransack filter/shape
  types per list endpoint; `ListParams<F, S>` = `{page?, limit?, expand?,
  fields?, sort?, q?} & F`.
- `src/zod/generated/`: matching runtime Zod schemas (same basenames as
  `types/generated`).
- Money: all monetary values are **decimal strings** (`"29.99"`), never numbers
  (verified: `docs/developer/sdk/configuration.mdx` "Monetary Amounts", mock
  fixtures in `tests/mocks/handlers.ts`).
- Closed code lists re-exported from `@spree/core` via sdk-core: `CountryCode`,
  `CurrencyCode`, `LocaleCode`, `WeightUnit`, `DimensionUnit`, plus status/kind
  value lists (`PRODUCT_STATUSES`, `MEDIA_TYPES`, …) with `subsetOf` helper
  (verified: `packages/sdk/src/index.ts` re-exports; CHANGELOG 2.0.0-rc.5 entries).
- `AuthTokens`: `{token: string, refresh_token: string, user: {id, email,
  first_name: string|null, last_name: string|null}}` (verified:
  `src/types/index.ts:115-123`). NOTE: OpenAPI `AuthResponse` example shows extra
  user fields (`phone`, `accepts_email_marketing`, `full_name`, …) the SDK type
  does not declare — recorded as a conflict in `open-questions.md`.

## 5. AuthN/Z, pagination, errors, retry (verified; details in sibling docs)

- Transport: `packages/sdk-core/src/request.ts` (`createRequestFn`). Headers:
  `x-spree-api-key` (publishable key, every request), `Authorization: Bearer <JWT>`
  (`token` option), `x-spree-token` (guest cart/order token, `spreeToken` option),
  `x-spree-locale` / `x-spree-currency` / `x-spree-country` / `x-spree-channel`
  (per-request option overriding client defaults), `Content-Type: application/json`
  (unless FormData body), `Idempotency-Key` (auto `spree-sdk-retry-<uuid>` for
  mutating requests when retries enabled unless caller supplies one).
- Redirect behavior: fetch default (follow); explicit rule "do not forward
  authorization credentials to a different origin" is a Dart-side requirement —
  upstream relies on fetch defaults (inferred; no custom redirect handling found
  in `request.ts`).
- Envelopes: single resources unwrapped; `ListResponse<T> = {data: T[]}`;
  `PaginatedResponse<T> = {data: T[], meta: PaginationMeta}` with
  `{page, limit, count, pages, from, to, in, previous, next}` (verified:
  `packages/sdk-core/src/types.ts`).
- Errors: non-2xx → `SpreeError {code, message, status, details?}` from
  `{error: {code, message, details?}}`; unparseable/proxy bodies → code
  `http_error` (verified: `request.ts` + `docs/developer/sdk/configuration.mdx`).
  `204` → `undefined`; `202` → parsed JSON when content-type is JSON, else
  `undefined` (verified: `request.ts`).
- Retry (verified: `request.ts` + `helpers.ts::resolveRetryConfig`, covered by
  `tests/retry.test.ts`): defaults `maxRetries 2`, `retryOnStatus [429, 500, 502,
  503, 504]`, `baseDelay 300ms`, `maxDelay 10000ms`, `retryOnNetworkError true`,
  exponential backoff + jitter, honors `Retry-After` (capped at maxDelay).
  Status retries apply to `GET`/`HEAD` or requests carrying an idempotency key;
  other mutations retry **only on 429**. `retry: false` disables.
- Query encoding (verified: `params.ts::transformListParams`,
  `helpers.ts::getParams`): `page`/`limit`/`expand`/`sort`/`fields` passthrough
  (arrays comma-joined); other keys wrapped as `q[key]`; arrays as `q[key][]`;
  nested objects as `q[g][a]`; caller `q` object merged with top-level winning.
- Tests as behavior evidence (verified): vitest + msw (`tests/mocks/handlers.ts`
  742 lines, `server.ts`), `TEST_BASE_URL https://demo.spreecommerce.org`
  (mocked — no live calls), per-resource test files (`cart.test.ts`,
  `post-sale.test.ts`, `retry.test.ts`, `error-handling.test.ts`,
  `extensions.test.ts`, …), plus `tests/integration/`.
- Docs guides (verified at same SHA): `docs/developer/sdk/authentication.mdx`,
  `configuration.mdx`, `extending.mdx`, `quickstart.mdx`,
  `docs/developer/sdk/store/{account,cart-checkout,markets,payments,products,wishlists}.mdx`.
- Examples (verified): `packages/sdk/examples/{account-companies,auth,cart-addresses,carts,categories,channel,companies,company-invitations,countries,currencies,customer-addresses,customer-credit-cards,customer-gift-cards,customer-orders,customer-password-resets,customer-payment-setup-sessions,customer-store-credits,customers,delivery-methods,locales,markets,newsletter-subscribers,orders,policies,products,store,wishlists}/`.

## 6. OpenAPI / docs revision (verified)

`docs/api-reference/store.yaml` at the same SHA (`d2f38e6…`): OpenAPI 3.0.3,
`info.version: v3`, **91 path entries** under `/api/v3/store`, no `operationId`s
(path + method is the identifier). Consulted 2026-11-22 via sparse checkout of the
same commit. Store API concept docs at same SHA: `docs/api-reference/store-api/`
(`authentication`, `errors`, `idempotency`, `querying`, `localization`,
`rate-limitting`, `metadata`, `relations`, …). Cross-check result: 6 SDK methods
have no matching spec path and 3 spec paths have no SDK method — see
`store-api-contract.md` §8 and `open-questions.md`.
