# Store API Contract — per-operation record (research only, no code)

Scope: **Store API only** (`/api/v3/store`, Spree 6.0.x). No Admin API.
Sources pinned to upstream SHA `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`
(2026-11-22) unless stated: **SRC** = `packages/sdk/src/store-client.ts`
(TS SDK, line refs to that file); **CORE** = `packages/sdk-core/src/request.ts`
(transport), `types.ts` (envelopes), `params.ts`/`helpers.ts` (query);
**SPEC** = `docs/api-reference/store.yaml` at the same SHA (OpenAPI 3.0.3, no
`operationId`s — identifier is `METHOD path`); **DOC** =
`docs/api-reference/store-api/*.mdx` and `docs/developer/sdk/*.mdx` at same SHA.
Consultation date for all web/spec sources: **2026-11-22**.

Status: **verified** / **inferred** / **unknown** per AGENTS.md §5.

## 0. Global rules applying to every operation below (verified)

- Base: `{baseUrl}/api/v3/store{path}`; `baseUrl` trailing `/` stripped (verified:
  SRC `client.ts`).
- Required header on **every** request: publishable key. SDK sends header name
  `x-spree-api-key` (verified: SRC `client.ts` `headerName: 'x-spree-api-key'`);
  DOC `authentication.mdx` and SPEC security scheme spell it `X-Spree-Api-Key`
  (verified). HTTP header names are case-insensitive — treat as the same header
  (inferred, standard HTTP semantics). Missing key → `401 {code: invalid_token}`
  (verified: DOC authentication.mdx + SPEC `POST /auth/login` 401 example).
- Optional contextual headers (verified: CORE `request.ts`, DOC localization.mdx):
  `Authorization: Bearer <JWT>` (from `token` option), `x-spree-token` (from
  `spreeToken` option), `x-spree-locale`, `x-spree-currency`, `x-spree-country`,
  `x-spree-channel`. `Content-Type: application/json` unless multipart body.
- Query conventions (verified: CORE `params.ts`, `helpers.ts`): `page`, `limit`
  passthrough; `expand`, `fields` comma-joined; `sort` passthrough (prefix `-`
  for descending); all other filter keys wrapped as `q[…]` (Ransack).
- Success envelopes (verified: CORE `types.ts`): single resource unwrapped;
  collections `{"data": [...]}` (`ListResponse`); paginated collections
  `{"data": [...], "meta": {page, limit, count, pages, from, to, in, previous,
  next}}`. DOC querying.mdx + SPEC intro confirm `data`+`meta` (verified).
- Failures (verified: CORE `request.ts`, DOC errors.mdx): `{error: {code,
  message, details?}}` → thrown as `SpreeError{code, message, status, details?}`.
  `204` → no body (`undefined`); `202` → JSON body when content-type is JSON else
  no body. Status codes used: 400/401/403/404/409/422/429 (verified: DOC
  errors.mdx table). Rate-limit: 300 req/min per API key; login 5/min/IP,
  registration 3/min/IP, refresh 10/min/IP; `Retry-After` honored; 429 body code
  `rate_limit_exceeded` (verified: DOC rate-limitting.mdx).
- Per-operation "Auth" column: `KEY` = publishable key only; `KEY+JWT` = customer
  JWT required in addition; `KEY+TOKEN` = guest cart/order token; `KEY+JWT/TOKEN` =
  either accepted. Where the SDK passes no credential and docs do not demand one,
  the cell says `KEY` and any stricter server rule is marked unknown.

## 1. Authentication

| Op (SRC ref) | METHOD + path (SPEC match) | Auth | Body | Envelope | Errors (SPEC examples) |
|---|---|---|---|---|---|
| `auth.login` (SRC 158) | `POST /auth/login` — SPEC `post /auth/login` verified | KEY | `LoginCredentials`: `{provider?='email', email, password}` or `{provider, ...}` provider-dispatched (verified: CORE types.ts + SPEC description) | `AuthTokens {token, refresh_token, user{id,email,first_name,last_name}}` (verified: SRC types/index.ts; SPEC example shows extra user fields — conflict, see open-questions) | 401 `invalid_token` (missing key); 401 `invalid_refresh_token` shape only for refresh |
| `auth.refresh` (SRC 166) | `POST /auth/refresh` — SPEC verified | KEY (no Authorization header; verified SRC comment) | `{refresh_token}` (`RefreshTokenParams`) | new `AuthTokens` (rotated refresh token; verified DOC authentication.mdx) | 401 `invalid_refresh_token` "Invalid or expired refresh token" (verified SPEC) |
| `auth.logout` (SRC 172) | `POST /auth/logout` — SPEC verified | KEY | `{refresh_token}` (`LogoutParams`; inferred from refresh symmetry — body type not printed here, unknown fields) | `204/void` (inferred: `Promise<void>`; SPEC status unknown — check SPEC before implementing) | unknown — confirm from SPEC |
| `customers.create` (SRC 965) | `POST /customers` — SPEC verified | KEY | `RegisterParams {email, password, password_confirmation?, first_name?, last_name?, …}` (verified name; full field list unknown — read params file + SPEC) | `AuthTokens` (auto-login; verified SRC + DOC authentication.mdx) | 422 validation; 429 3/min/IP registration limit (verified DOC rate-limitting) |
| `passwordResets.create` (SRC 1347) | `POST /password_resets` — SPEC verified | KEY | `{email}` + redirect fields (`RequestPasswordResetParams`; exact fields unknown) | `{message: string}`, always 202 anti-enumeration (verified SRC comment) | unknown beyond 202-always |
| `passwordResets.update` (SRC 1357) | `PATCH /password_resets/{token}` — SPEC verified | KEY | `ResetPasswordParams` (exact fields unknown) | `AuthTokens` auto-login (verified SRC comment) | unknown — confirm from SPEC |

## 2. Catalog: products, categories, sellers, collections

| Op | METHOD + path (SPEC match) | Auth | Query | Envelope |
|---|---|---|---|---|
| `products.list` (SRC 184) | `GET /products` — SPEC verified | KEY | `ProductListParams`: page/limit/expand/sort/fields + `ProductFilters` as `q[…]` (verified pattern) | `PaginatedResponse<Product>` |
| `products.get` (SRC 196) | `GET /products/{idOrSlug}` — SPEC `…/products/{id}` verified | KEY | `expand, fields` (verified SRC) | `Product` unwrapped |
| `products.filters` (SRC 210) | `GET /products/filters` — SPEC verified | KEY | `ProductFiltersParams` (`q` split out specially via `getFiltersParams`; verified SRC) | `ProductFiltersResponse` (shape unknown — read type + SPEC) |
| `categories.list/get` (SRC 228/240) | `GET /categories`, `GET /categories/{id}` — SPEC verified | KEY | list: `CategoryListParams`; get: `expand, fields` | `PaginatedResponse<Category>` / `Category` |
| `sellers.list/get` (SRC 269/279) | `GET /sellers`, `GET /sellers/{id}` — SPEC verified | KEY | list: `ListParams<SellerFilters, SellerSort>`; get: `expand, fields` | `PaginatedResponse<Seller>` / `Seller` |
| `collections.list/get` (SRC 294/306) | `GET /collections`, `GET /collections/{id}` — SPEC verified | KEY | as categories | `PaginatedResponse<Collection>` / `Collection` |
| `collections.products.list` (SRC 324) | `GET /collections/{id}/products` — SPEC `…/{collection_id}/products` verified | KEY | `ProductListParams` | `PaginatedResponse<Product>` |

## 3. Reference data: countries, currencies, locales, channel, store, policies, markets

| Op | METHOD + path (SPEC match) | Auth | Query | Envelope |
|---|---|---|---|---|
| `countries.list/get` (SRC 345/353) | `GET /countries`, `GET /countries/{iso}` — SPEC verified | KEY | get: `expand, fields` | `ListResponse<Country>` / `Country` |
| `currencies.list` (SRC 368) | `GET /currencies` — SPEC verified | KEY | — | `ListResponse<Currency>` |
| `locales.list` (SRC 376) | `GET /locales` — SPEC verified | KEY | — | `ListResponse<Locale>` |
| `channel.get` (SRC 388) | `GET /channel` — SPEC verified | KEY | — | `Channel` |
| `store.get` (SRC 398) | `GET /store` — SPEC verified | KEY | — | `Store` (6.0.5 adds `meta_keywords`, `logo_url`, socials, `customer_support_email`; verified CHANGELOG) |
| `policies.list/get` (SRC 459/466) | `GET /policies`, `GET /policies/{id}` — SPEC verified | KEY | — | `ListResponse<Policy>` / `Policy` |
| `markets.list/get/resolve` (SRC 478/485/492) | `GET /markets`, `GET /markets/{id}`, `GET /markets/resolve` — SPEC verified | KEY | resolve: `country` (verified SRC) | `ListResponse<Market>` / `Market` / `Market` |
| `markets.countries.list/get` (SRC 506/519) | `GET /markets/{id}/countries`, `GET …/countries/{id}` — SPEC verified | KEY | get: `expand, fields` | `ListResponse<Country>` / `Country` |
| `deliveryMethods.list` (SRC 411) | `GET /delivery_methods` — SPEC verified | KEY | `fulfillment_type?: shipping\|digital\|pickup\|pickup_point` (verified SRC; SPEC acceptance unknown) | `ListResponse<DeliveryMethod>` |
| `deliveryMethods.get` (SRC 420) | `GET /delivery_methods/{id}` — **SPEC: no such path** (only collection + pickup_locations; verified by path dump) | KEY (per SDK) | — | `DeliveryMethod` (per SDK) |
| `deliveryMethods.pickupLocations` (SRC 428) | `GET /delivery_methods/{id}/pickup_locations` — SPEC verified | KEY | `cart_id?` (verified SRC) | `{data: StockLocation[]}` (verified SRC) |
| `deliveryMethods.pickupPoints` (SRC 439) | `GET /delivery_methods/{id}/pickup_points` — **SPEC: no such path** (verified) | KEY (per SDK) | `latitude, longitude` required (verified SRC) | `{data: Array<Record<string, unknown>>}` — untyped (verified SRC) |

## 4. Carts & checkout

Guest credential: cart `token` from create → `spreeToken` option → `x-spree-token`
(verified: SRC README/AuthGuestCart, CORE request.ts). Mutating cart ops are
idempotent-safe via auto `Idempotency-Key` (verified CORE); server-supported set
includes cart create/update/items/payments/store-credit/complete (verified DOC
idempotency.mdx — NOTE: that doc writes `coupon_codes` where SDK+SPEC use
`discount_codes`; conflict, see open-questions).

| Op | METHOD + path (SPEC match) | Auth | Body / Query | Envelope |
|---|---|---|---|---|
| `carts.list` (SRC 535) | `GET /carts` — SPEC verified | KEY+JWT (inferred: "active carts for the authenticated user"; server rule unknown — confirm SPEC security) | — (options only) | `PaginatedResponse<Cart>` |
| `carts.get` (SRC 542) | `GET /carts/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred: cart token accepted; SPEC security unknown — confirm) | — | `Cart` (carries `token`, `checkout_steps`, `state_lock_version`; verified mocks/handlers.ts) |
| `carts.create` (SRC 549) | `POST /carts` — SPEC verified | KEY | `CreateCartParams?` (e.g. `metadata`, items — verified DOC metadata.mdx shows `metadata` on create; full schema unknown) | `Cart` |
| `carts.update` (SRC 560) | `PATCH /carts/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | `UpdateCartParams` (email, addresses, …; full schema unknown) | `Cart` |
| `carts.delete` (SRC 570) | `DELETE /carts/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | — | `void` |
| `carts.associate` (SRC 578) | `PATCH /carts/{id}/associate` — SPEC verified | KEY+JWT required (`options: RequestOptions` mandatory, "Must include `token`" — verified SRC comment) | — | `Cart` |
| `carts.complete` (SRC 588) | `POST /carts/{id}/complete` — SPEC verified | KEY+JWT/TOKEN (inferred) | — | `Order \| OrderGroup` (narrow with `isOrderGroup`; verified SRC + order-group.ts) |
| `carts.addresses.list` (SRC 612) | `GET /carts/{id}/addresses` — SPEC verified | KEY+JWT **required; guest token NOT accepted** (verified SRC comment) | `ListParams<AddressFilters, AddressSort>` | `PaginatedResponse<Address>` (`Address.owner` marks book origin; verified SRC comment) |
| `carts.items.create` (SRC 632) | `POST /carts/{id}/items` — SPEC verified | KEY+JWT/TOKEN (inferred) | `AddLineItemParams {variant_id, quantity, …}` (exact fields unknown — read params file) | `Cart` recalculated (verified SRC comment) |
| `carts.items.update` (SRC 648) | `PATCH /carts/{id}/items/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | `UpdateLineItemParams` (exact fields unknown) | `Cart` |
| `carts.items.delete` (SRC 659) | `DELETE /carts/{id}/items/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | — | `Cart` (verified SRC: returns updated cart, not void) |
| `carts.discountCodes.apply` (SRC 672) | `POST /carts/{id}/discount_codes` — SPEC verified | KEY+JWT/TOKEN (inferred) | `{code: string}` (verified SRC) | `Cart` |
| `carts.discountCodes.remove` (SRC 683) | `DELETE /carts/{id}/discount_codes/{id}` — SPEC verified (path param named `{id}`, SDK passes the code string) | KEY+JWT/TOKEN (inferred) | — | `Cart` |
| `carts.giftCards.apply` (SRC 698) | `POST /carts/{id}/gift_cards` — SPEC verified | KEY+JWT/TOKEN (inferred) | `{code: string}` (verified SRC) | `Cart` (total unchanged, `amount_due` reduced; verified SRC comment) |
| `carts.giftCards.remove` (SRC 709) | `DELETE /carts/{id}/gift_cards/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | — | `Cart` |
| `carts.fulfillments.update` (SRC 727) | `PATCH /carts/{id}/fulfillments/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | `UpdateFulfillmentParams` (select delivery rate; exact fields unknown) | `Cart` |
| `carts.payments.create` (SRC 747) | `POST /carts/{id}/payments` — SPEC verified | KEY+JWT/TOKEN (inferred) | `CreatePaymentParams` (non-session methods e.g. check/COD; exact fields unknown) | `Payment` |
| `carts.paymentSessions.create` (SRC 764) | `POST /carts/{id}/payment_sessions` — SPEC verified | KEY+JWT/TOKEN (inferred) | `CreatePaymentSessionParams` (exact fields unknown) | `PaymentSession` |
| `carts.paymentSessions.get` (SRC 774) | `GET /carts/{id}/payment_sessions/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | — | `PaymentSession` |
| `carts.paymentSessions.update` (SRC 791) | `PATCH /carts/{id}/payment_sessions/{id}` — SPEC verified | KEY+JWT/TOKEN (inferred) | `UpdatePaymentSessionParams` (exact fields unknown) | `PaymentSession` |
| `carts.paymentSessions.complete` (SRC 807) | `PATCH /carts/{id}/payment_sessions/{id}/complete` — SPEC verified | KEY+JWT/TOKEN (inferred) | `CompletePaymentSessionParams?` (exact fields unknown) | `PaymentSession` |
| `carts.storeCredits.apply` (SRC 819) | `POST /carts/{id}/store_credits` — SPEC verified | KEY+JWT/TOKEN (inferred) | `{amount?: decimal-string}`; omitted/empty applies max usable (verified SRC). `number` overload deprecated since 6.5 (verified SRC comment) | `Cart` |
| `carts.storeCredits.remove` (SRC 829) | `DELETE /carts/{id}/store_credits` — SPEC verified (same path, DELETE) | KEY+JWT/TOKEN (inferred) | — | `Cart` |
| — (no SDK method) | `POST /carts/{id}/po_document` — SPEC-only | unknown | `CreatePoDocumentParams` type exists in SDK (verified) but no method calls it | unknown |
| — (no SDK method) | `PATCH /carts/{id}/tax_identifier` — SPEC-only | unknown | `TaxIdentifierParams` type exists in SDK (verified) but no method calls it | unknown |

## 5. Orders (post-purchase), returns, claims

| Op | METHOD + path (SPEC match) | Auth | Body / Query | Envelope |
|---|---|---|---|---|
| `orders.get` (SRC 853) | `GET /orders/{id}` — SPEC verified | KEY+JWT/TOKEN: JWT **or** guest `spreeToken` (verified SRC comment). Also accepts the **cart id** the checkout was placed from (verified SRC comment) | `expand, fields` | `Order \| OrderGroup` |
| `orders.returns.list` (SRC 872) | `GET /orders/{id}/returns` — SPEC verified | KEY+JWT/TOKEN (inferred) | `ListParams<ReturnFilters, ReturnSort>?` | `PaginatedResponse<Return>` |
| `orders.returns.get` (SRC 883) | `GET /orders/{id}/returns/{id}` — **SPEC: no such path** (only collection path; verified) | KEY+JWT/TOKEN (inferred) | `expand?` | `Return` (per SDK) |
| `orders.returns.create` (SRC 897) | `POST /orders/{id}/returns` — SPEC verified | KEY+JWT/TOKEN (inferred) | `CreateReturnParams` (line items reference `fulfillment_item_id`; verified SRC comment; full schema unknown). Rejected requests surface as 422 (verified SRC comment re `returns.create.validate`) | `Return` |
| `orders.returns.labelPath` | client-side only: `/api/v3/store/orders/{orderId}/returns/{id}/label` — **not in SPEC, no SDK request** (verified SRC). Fetch with customer credentials, drive browser download from Blob; 404 = no label bought (verified SRC comment) | KEY+JWT (per comment) | — | binary stream (per comment; unknown) |
| `orders.claims.list` (SRC 925) | `GET /orders/{id}/claims` — SPEC verified | KEY+JWT/TOKEN (inferred) | `ListParams<ClaimFilters, ClaimSort>?` | `PaginatedResponse<Claim>` |
| `orders.claims.get` (SRC 936) | `GET /orders/{id}/claims/{id}` — **SPEC: no such path** (only collection path; verified) | KEY+JWT/TOKEN (inferred) | `expand?` | `Claim` (per SDK) |
| `orders.claims.create` (SRC 949) | `POST /orders/{id}/claims` — SPEC verified | KEY+JWT/TOKEN (inferred) | `CreateClaimParams` (`reason_id` = one of the store's claim reasons; verified SRC comment; full schema unknown) | `Claim` |

## 6. Newsletter

| Op | METHOD + path (SPEC match) | Auth | Body / Query | Envelope |
|---|---|---|---|---|
| `newsletterSubscribers.create` (SRC 984) | `POST /newsletter_subscribers` — SPEC verified | KEY (+ optional JWT: links to customer, auto-verifies on email match; verified SRC comment) | `CreateNewsletterSubscriberParams` (`redirect_url` dropped from webhook payload when outside allowed origins; verified SRC comment; full schema unknown) | `NewsletterSubscriber` |
| `newsletterSubscribers.verify` (SRC 996) | `POST /newsletter_subscribers/verify` — SPEC verified | KEY | token from confirmation email (exact fields unknown) | `NewsletterSubscriber` |
| `newsletterSubscribers.requestUnsubscribe` (SRC 1012) | `POST /newsletter_subscribers/request_unsubscribe` — SPEC verified | KEY | email + `redirect_url` (exact fields unknown) | always 202, `void` (verified SRC comment; anti-enumeration) |
| `newsletterSubscribers.delete` (SRC 1024) | `DELETE /newsletter_subscribers/{id}` — SPEC verified | KEY (+ JWT for own subscription, or `token` query from email link; verified SRC comment) | `?token=` optional query (verified SRC) | `void` |

## 7. Customer account (`/customers/me`)

All ops: KEY+JWT (verified: endpoints under `/customers/me` are the authenticated
surface; DOC authentication.mdx lists orders/addresses/saved methods as JWT cases).

| Op | METHOD + path (SPEC match) | Body / Query | Envelope |
|---|---|---|---|
| `customer.get` (SRC 1035) | `GET /customers/me` — SPEC verified | — | `Customer` |
| `customer.update` (SRC 1041) | `PATCH /customers/me` — SPEC verified | `UpdateCustomerParams` (full schema unknown) | `Customer` |
| `customer.addresses.list` (SRC 1057) | `GET /customers/me/addresses` — SPEC verified | `ListParams<AddressFilters, AddressSort>?` | `PaginatedResponse<Address>` |
| `customer.addresses.get` (SRC 1066) | `GET /customers/me/addresses/{id}` — SPEC verified | — | `Address` |
| `customer.addresses.create` (SRC 1072) | `POST /customers/me/addresses` — SPEC verified | `AddressCreateParams` (full schema unknown) | `Address` |
| `customer.addresses.update` (SRC 1085) | `PATCH /customers/me/addresses/{id}` — SPEC verified | `AddressUpdateParams` (full schema unknown) | `Address` |
| `customer.addresses.delete` (SRC 1094) | `DELETE /customers/me/addresses/{id}` — SPEC verified | — | `void` |
| `customer.dataRequests.list` (SRC 1108) | `GET /customers/me/data_requests` — SPEC verified | `ListParams?` | `PaginatedResponse<DataRequest>` (most recent first; verified SRC) |
| `customer.dataRequests.get` (SRC 1118) | `GET /customers/me/data_requests/{id}` — SPEC verified | — | `DataRequest` (never carries download link; verified SRC) |
| `customer.dataRequests.create` (SRC 1127) | `POST /customers/me/data_requests` — SPEC verified | `CreateDataRequestParams?` (`redirect_url`, erasure needs `current_password`; verified SRC comment; full schema unknown) | `DataRequest` (`awaiting_confirmation` status until email link confirms; verified CHANGELOG 2.0.0-rc.5) |
| `customer.creditCards.list/get` (SRC 1144/1153) | `GET /customers/me/credit_cards[/{id}]` — SPEC verified | list: `ListParams<CreditCardFilters, CreditCardSort>?` | `PaginatedResponse<CreditCard>` / `CreditCard` |
| `customer.creditCards.delete` (SRC 1159) | `DELETE /customers/me/credit_cards/{id}` — SPEC verified | — | `void` |
| `customer.giftCards.list/get` (SRC 1174/1183) | `GET /customers/me/gift_cards[/{id}]` — SPEC verified | list: Ransack params (verified SRC) | `PaginatedResponse<GiftCard>` / `GiftCard` (newest first; verified SRC) |
| `customer.storeCredits.list/get` (SRC 1199/1208) | `GET /customers/me/store_credits[/{id}]` — SPEC verified | list: Ransack params | `PaginatedResponse<StoreCredit>` / `StoreCredit` |
| `customer.digitalLinks.list` (SRC 1225) | `GET /customers/me/digital_links` — SPEC verified | `ListParams<DigitalLinkFilters, DigitalLinkSort>?` | `PaginatedResponse<DigitalLink>` (newest first; verified SRC) |
| `customer.digitalLinks.get` (SRC 1236) | `GET /customers/me/digital_links/{id}` — **SPEC: collection path only** (verified) | — | `DigitalLink` with `download_url` (redirect; follow redirects, don't read body; verified SRC comment) |
| `customer.orders.list` (SRC 1250) | `GET /customers/me/orders` — SPEC verified | `OrderListParams?` (verified SRC) | `PaginatedResponse<Order>` |
| `customer.orders.get` (SRC 1263) | `GET /customers/me/orders/{id}` — SPEC verified | `expand, fields` | `Order` |
| `customer.paymentSetupSessions.create` (SRC 1281) | `POST /customers/me/payment_setup_sessions` — SPEC verified | `CreatePaymentSetupSessionParams` (exact fields unknown) | `PaymentSetupSession` |
| `customer.paymentSetupSessions.get` (SRC 1290) | `GET /customers/me/payment_setup_sessions/{id}` — SPEC verified | — | `PaymentSetupSession` |
| `customer.paymentSetupSessions.complete` (SRC 1305) | `PATCH /customers/me/payment_setup_sessions/{id}/complete` — SPEC verified | `CompletePaymentSetupSessionParams?` (exact fields unknown) | `PaymentSetupSession` |
| — (no SDK method) | `GET /digital_links/{token}` — SPEC-only (verified) | token path (no auth per SPEC position; confirm) | unknown |

## 8. GDPR data requests (token-based), companies, invitations, wishlists

| Op | METHOD + path (SPEC match) | Auth | Body | Envelope |
|---|---|---|---|---|
| `dataRequests.get` (SRC 1323) | `GET /data_requests/{token}` — SPEC verified | none (token is the credential; verified SRC comment) | token URL-encoded (verified SRC) | `DataRequest` incl. download link when ready |
| `dataRequests.confirm` (SRC 1331) | `POST /data_requests/{token}/confirmation` — SPEC verified | none (verified SRC comment) | — | `DataRequest`, starts processing |
| `account.companies` (SRC 1376) | `GET /account/companies` — SPEC verified | KEY+JWT (verified SRC comment: membership/ancestor standing) | — | `{data: (CompanyMembership & {company: Company})[]}` — NOT paginated wrapper (verified SRC) |
| `companies.get/update` (SRC 1385/1388) | `GET\|PATCH /companies/{id}` — SPEC verified | KEY+JWT (verified SRC comment) | `UpdateCompanyParams` (unknown) | `Company` |
| `companies.addresses.*` (SRC 1396/1406/1417/1423) | `GET\|POST /companies/{id}/addresses`, `PATCH\|DELETE …/{id}` — SPEC verified | KEY+JWT | list: `ListParams<AddressFilters, AddressSort>?`; bodies: `CompanyAddressCreateParams` / `CompanyAddressUpdateParams` (unknown) | `PaginatedResponse<Address>` / `Address` / `Address` / `void` |
| `companies.members.list` (SRC 1432) | `GET /companies/{id}/members` — SPEC verified | KEY+JWT | `ListParams<CompanyMembershipFilters, CompanyMembershipSort>?` | `PaginatedResponse<CompanyMembership>` |
| `companies.members.create` (SRC 1451) | `POST /companies/{id}/members` — SPEC verified | KEY+JWT | `AddCompanyMemberParams` (invite by email; always returns invitation even for existing customers; verified SRC comment) | `CompanyInvitation` |
| `companies.members.delete` (SRC 1458) | `DELETE /companies/{id}/members/{id}` — **SPEC: members path has GET,POST only** (verified) | KEY+JWT (per SDK) | — | `void` (per SDK) |
| `companies.invitations.list` (SRC 1467) | `GET /companies/{id}/invitations` — SPEC verified | KEY+JWT | `ListParams<CompanyInvitationFilters, CompanyInvitationSort>?` | `PaginatedResponse<CompanyInvitation>` |
| `companies.invitations.delete` (SRC 1475) | `DELETE /companies/{id}/invitations/{id}` — SPEC verified | KEY+JWT | — | `void` |
| `companies.orders.list` (SRC 1485) | `GET /companies/{id}/orders` — SPEC verified | KEY+JWT | `ListParams<OrderFilters, OrderSort>?` | `PaginatedResponse<Order>` |
| `companyInvitations.lookup` (SRC 1502) | `GET /company_invitations/{token}` — SPEC verified | none (token is the credential; verified SRC comment) | — | `CompanyInvitation & {company_name, store_name}` |
| `companyInvitations.accept` (SRC 1518) | `POST /company_invitations/{token}/accept` — SPEC verified | none or KEY+JWT (registration payload for new accounts, or JWT binds invite to signed-in customer; verified SRC comment) | `AcceptCompanyInvitationParams?` (defaults `{}`; verified SRC) | `CompanyMembership` |
| `companyInvitations.delete` (SRC 1525) | `DELETE /company_invitations/{id}` — **SPEC: no such path** (only `/{token}` GET and `/{token}/accept` POST; verified). Member-side revoke by prefixed id exists in SDK only. | KEY+JWT member-authenticated (per SDK comment; unverifiable in SPEC) | — | `void` (per SDK) |
| `wishlists.list/create` (SRC 1540/1562) | `GET\|POST /wishlists` — SPEC verified | KEY+JWT (inferred: account-scoped; SPEC security unknown — confirm) | create: `CreateWishlistParams` (unknown) | `PaginatedResponse<Wishlist>` / `Wishlist` |
| `wishlists.get/update/delete` (SRC 1553/1575/1584) | `GET\|PATCH\|DELETE /wishlists/{id}` — SPEC verified | KEY+JWT (inferred) | get: `expand, fields`; update: `UpdateWishlistParams` (unknown) | `Wishlist` / `Wishlist` / `void` |
| `wishlists.items.create` (SRC 1598) | `POST /wishlists/{id}/items` — SPEC verified | KEY+JWT (inferred) | `CreateWishlistItemParams` (unknown) | `WishlistItem` |
| `wishlists.items.update` (SRC 1612) | `PATCH /wishlists/{id}/items/{id}` — SPEC verified | KEY+JWT (inferred) | `UpdateWishlistItemParams` (unknown) | `WishlistItem` |
| `wishlists.items.delete` (SRC 1621) | `DELETE /wishlists/{id}/items/{id}` — SPEC verified | KEY+JWT (inferred) | — | `void` |

## 9. Recorded conflicts (see open-questions.md for decisions needed)

1. Six SDK-called routes absent from `store.yaml` at the same SHA:
   `GET /delivery_methods/{id}`, `GET /delivery_methods/{id}/pickup_points`,
   `GET /orders/{id}/returns/{id}`, `GET /orders/{id}/claims/{id}`,
   `DELETE /companies/{id}/members/{id}`, `GET /customers/me/digital_links/{id}`,
   plus `DELETE /company_invitations/{id}` (verified by exhaustive path dump §8).
2. Three SPEC routes with no SDK method: `POST /carts/{id}/po_document`,
   `PATCH /carts/{id}/tax_identifier`, `GET /digital_links/{token}` (verified).
3. DOC `idempotency.mdx` names `POST /carts/:id/coupon_codes`; SDK+SPEC use
   `discount_codes` (verified).
4. SDK `AuthTokens.user` is narrower than SPEC `AuthResponse` example user
   (verified).
5. DOC `authentication.mdx` spells the key header `X-Spree-Api-Key`; SDK sends
   `x-spree-api-key` (verified; same header modulo case — inferred harmless).
