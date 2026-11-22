# Feature-Parity Matrix — TS SDK vs Store API vs Dart target (research only, no code)

Upstream SHA `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2` (2026-11-22). **TS-SDK**
column = `packages/sdk/src/store-client.ts` (verified). **Store-API** column =
`docs/api-reference/store.yaml` same SHA (verified by path+method dump).
**Dart-target** column = recommended scope for `spree_sdk`, informed by
https://dart.dev/tools/pub/package-layout and Effective Dart; final scope needs
owner/architect approval (AGENTS.md §3.3). Status: **verified** / **inferred** /
**unknown**.

Legend: ✅ present · ❌ absent · ⚠️ present with discrepancy (see §3).

## 1. Capability matrix

| # | Capability | TS-SDK | Store-API (spec) | Dart target (proposed) |
|---|---|---|---|---|
| 1 | Client bootstrap (`baseUrl`, `publishableKey`, custom `fetch`/`httpClient`, locale/currency/country/channel defaults + setters) | ✅ `createClient`/`ClientConfig` | n/a (client-side) | ✅ P0 — same surface with Dart-idiomatic `http.Client` injection |
| 2 | `extend` / `defineStoreExtension` plugin namespaces | ✅ | n/a | ✅ P1 — keep extension point (AGENTS.md §4 transport/middleware separation) |
| 3 | Auth: login / refresh / logout / register | ✅ | ✅ | ✅ P0 |
| 4 | Password reset request + update (auto-login) | ✅ | ✅ | ✅ P0 |
| 5 | Products list/get/filters | ✅ | ✅ | ✅ P0 |
| 6 | Categories, sellers, collections (+ collection products) | ✅ | ✅ | ✅ P0 |
| 7 | Countries/currencies/locales/channel/store/policies/markets (+resolve, market countries) | ✅ | ✅ | ✅ P0 |
| 8 | Delivery methods list/pickup_locations | ✅ | ✅ | ✅ P0 |
| 9 | Delivery method single get | ✅ | ❌ (no path) | ⚠️ P2 — implement only after SPEC/backend confirmation |
| 10 | Third-party pickup points (`pickup_points`) | ✅ (untyped `Record<string, unknown>`) | ❌ (only `pickup_locations`) | ⚠️ P2 — needs contract; keep untyped map if adopted |
| 11 | Carts CRUD + associate + complete (`Order\|OrderGroup` + `isOrderGroup`) | ✅ | ✅ | ✅ P0 (incl. group-narrowing helper) |
| 12 | Cart addresses list (JWT-only) | ✅ | ✅ | ✅ P0 |
| 13 | Cart items add/update/remove (return updated `Cart`) | ✅ | ✅ | ✅ P0 |
| 14 | Discount codes apply/remove; gift cards apply/remove | ✅ | ✅ | ✅ P0 |
| 15 | Fulfillment rate select; direct payments (non-session) | ✅ | ✅ | ✅ P1 |
| 16 | Payment sessions create/get/update/complete | ✅ | ✅ | ✅ P0 (Stripe-style provider delegation) |
| 17 | Store credits apply (decimal-string amount) / remove | ✅ (number overload deprecated 6.5) | ✅ | ✅ P0 — decimal-string only in Dart |
| 18 | PO document attach (`POST po_document`) | ❌ (only `CreatePoDocumentParams` type) | ✅ | ⚠️ P2 — type exists, no behavior to copy; needs SPEC body/status |
| 19 | Tax identifier set (`PATCH tax_identifier`) | ❌ (only `TaxIdentifierParams` type) | ✅ | ⚠️ P2 — same as above |
| 20 | Order get (JWT or guest token; accepts cart id; group union) | ✅ | ✅ | ✅ P0 |
| 21 | Returns list/create (+422 validation hook) | ✅ | ✅ | ✅ P1 |
| 22 | Return single get | ✅ | ❌ (collection path only) | ⚠️ P2 — confirm server route first |
| 23 | Return shipping-label path helper (binary download) | ✅ client-side helper | ❌ | ⚠️ P2 — confirm route + bytes handling in Dart |
| 24 | Claims list/create | ✅ | ✅ | ✅ P1 |
| 25 | Claim single get | ✅ | ❌ (collection path only) | ⚠️ P2 — confirm server route first |
| 26 | Newsletter subscribe/verify/request-unsubscribe/delete | ✅ | ✅ | ✅ P1 |
| 27 | Customer profile get/update | ✅ | ✅ | ✅ P0 |
| 28 | Customer addresses CRUD | ✅ | ✅ | ✅ P0 |
| 29 | Customer GDPR data requests (list/get/create + token get/confirm) | ✅ | ✅ | ✅ P1 (mind mail-scanner rule: confirm on gesture only) |
| 30 | Customer credit cards list/get/delete | ✅ | ✅ | ✅ P1 |
| 31 | Customer gift cards / store credits / digital links list/get | ✅ | ⚠️ single-gets absent (`digital_links/{id}` also has SPEC-only `/digital_links/{token}`) | ✅ P1 for list; ⚠️ P2 for single-gets pending SPEC |
| 32 | Customer order history list/get | ✅ | ✅ | ✅ P0 |
| 33 | Payment setup sessions (save-method flow) | ✅ | ✅ | ✅ P1 |
| 34 | B2B: account companies, company get/update, addresses, members, invitations, company orders, invitation lookup/accept/revoke | ✅ | ⚠️ `members/{id}` DELETE and `company_invitations/{id}` DELETE absent | ✅ P1 for SPEC-backed ops; ⚠️ P2 for the two absent DELETEs |
| 35 | Wishlists + items CRUD | ✅ | ✅ | ✅ P1 |
| 36 | List/pagination/query conventions (`page/limit/expand/fields/sort/q[…]`, `PaginatedResponse`+`meta`) | ✅ | ✅ | ✅ P0 — shared pagination/query utility |
| 37 | Error model (`SpreeError{code,status,details?}`, `http_error` fallback, 204/202 handling) | ✅ | ✅ (`{error:{code,message,details?}}`, statuses 400/401/403/404/409/422/429) | ✅ P0 — typed `SpreeException` hierarchy |
| 38 | Retry (defaults maxRetries 2; [429,500,502,503,504]; backoff+jitter; `Retry-After`; idempotent-only except 429; auto `Idempotency-Key`) | ✅ | ✅ (rate-limit + idempotency docs) | ✅ P0 — same policy; mutations only with idempotency support |
| 39 | Localization headers + code lists (`CountryCode/CurrencyCode/LocaleCode/WeightUnit/DimensionUnit`), money-as-string + helpers | ✅ | ✅ | ✅ P0 |
| 40 | Generated models (106) + params (42) + Zod runtime schemas | ✅ (+`./zod` subpath) | ✅ (serializers are the source) | ✅ P0 models/params; runtime validation story is an architect decision (no Zod in Dart) |
| 41 | Typed webhooks catalog (`./webhooks`) | ✅ | ✅ (`webhooks-events.mdx`) | ⚠️ P2 — Store-app relevance only; defer |
| 42 | `onRequestComplete` observability hook, `X-Request-Id` | ✅ | n/a | ✅ P1 — diagnostics hook (redacted) |

Counts: TS-SDK 103 request methods + 1 path helper (verified). SPEC 91 path
entries covering all of the above except §3 items (verified). No Dart code exists
yet (phase 01 research only — verified: repo has no `lib/src` SDK surface beyond
scaffold; do not treat scaffold as coverage).

## 2. Proposed Dart packaging (inferred; needs architect sign-off)

Follow https://dart.dev/tools/pub/package-layout: `lib/spree_sdk.dart` re-exporting
`lib/src/*` (`client`, `transport`, `auth`, `errors`, `models`, per-resource
clients, `pagination`/`query` utils); `test/` mirrors `lib/` with
request-construction, parsing, and error-path tests per AGENTS.md §8; no Flutter
dependency in core (AGENTS.md §4). Exact module split is the architect's call.

## 3. Discrepancies requiring owner decision (verified; detail in open-questions.md)

D1. Six SDK-called routes missing from `store.yaml` (single-get delivery method,
`pickup_points`, return/claim single-gets, member delete, digital-link single-get)
+ SDK-only `DELETE /company_invitations/{id}`.
D2. Three SPEC routes with no SDK method (`po_document`, `tax_identifier`,
`digital_links/{token}`).
D3. `coupon_codes` (idempotency doc) vs `discount_codes` (SDK+SPEC).
D4. `AuthTokens.user` narrower than SPEC `AuthResponse` example.

## 4. Implementation status (2026-11-22, verified by orchestrator gates)

`dart format` exit 0 (80 files), `dart analyze` No issues found,
`dart test` 294/294 passed. Commit scope: phases 03+04+05 + barrel.

| Matrix row(s) | Status |
|---|---|
| 3 Auth (login/refresh/logout/register/reset) | ✅ implemented + tested (`AuthResource`, 47 group A tests) |
| 4 Password reset auto-login | ✅ implemented + tested |
| 5 Products list/get/filters | ✅ implemented + tested (73 group B tests) |
| 6 Categories/sellers/collections | ✅ implemented + tested |
| 7 Countries/currencies/locales/channel/store/policies/markets | ✅ implemented + tested |
| 8 Delivery methods list/pickup_locations | ✅ implemented + tested |
| 9-10, 18-19, 22-23, 25, 31 (single-gets), 34 (2 DELETEs) | ⏸️ P2 — excluded per owner approval |
| 11 Carts CRUD/associate/complete + OrderGroup | ✅ implemented + tested |
| 12 Cart addresses list (JWT-only) | ✅ implemented + tested |
| 13 Cart items add/update/remove | ✅ implemented + tested |
| 14 Discount/gift apply/remove | ✅ implemented + tested |
| 15 Fulfillment rate select, direct payments | ✅ implemented + tested |
| 16 Payment sessions | ✅ implemented + tested (typed wrapper over raw payload, shape unverified) |
| 17 Store credits apply/remove | ✅ implemented + tested (decimal-string) |
| 20 Order get + history | ✅ implemented + tested (68 group C tests) |
| 21 Returns list/create | ✅ implemented + tested (422 hook, no blind retry) |
| 24 Claims list/create | ✅ implemented + tested |
| 26 Newsletter | ✅ implemented + tested |
| 27-28 Customer profile/addresses | ✅ implemented + tested |
| 29 GDPR data requests | ✅ implemented + tested |
| 30 Credit cards/gift cards/store credits/digital links (list) | ✅ implemented + tested |
| 32 Customer order history | ✅ implemented + tested |
| 33 Payment setup sessions | ✅ implemented + tested |
| 34 B2B (minus 2 P2 DELETEs) | ✅ implemented + tested |
| 35 Wishlists + items | ✅ implemented + tested |
| 36 Pagination/query utils | ✅ implemented + tested (`ListQuery`, `PaginatedResponse`) |
| 37 Error model | ✅ implemented + tested (see deviation N1) |
| 38 Retry/idempotency | ✅ implemented + tested (reads-only default, mutations opt-in) |
| 39 Localization headers/codes, money-as-string | ✅ implemented + tested |
| 40 Models (106) + params | ✅ P0 response DTOs + request params implemented + tested (round-trips, unknown-enum fallback) |
| 1-2, 41-42 (client bootstrap, extensions, webhooks, observability) | ⏳ core client done; extension point + `onRequestComplete` hook deferred to hardening |

Deviations accepted by orchestrator at integration:
N1. Error base named `SpreeException` (not `SpreeError` sketch in
file-ownership table 2) — Dart `*Exception` idiom; hierarchy and redaction
rules unchanged.
N2. `PaginationMeta` uses verified SPEC fields
(page/limit/count/pages/from/to/in/previous/next) with `totalCount`/`totalPages`
aliases — superset of the table-2 sketch.
N3. Resource accessors live in `lib/src/client_resources.dart` (extension on
`SpreeClient`) instead of inside `client.dart` — frozen core file untouched;
public surface identical via `lib/spree_sdk.dart` barrel.
