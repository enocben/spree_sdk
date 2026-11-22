# Open Questions — Phase 01 research (no code)

Upstream SHA `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2` (2026-11-22). Owner decision
needed before architecture/implementation (AGENTS.md §3.3). No Admin API questions
are tracked here by design (Store API only).

## Q1. SDK-called routes absent from `store.yaml` — which source wins? (BLOCKING)

Six (plus one) TS-SDK methods (`packages/sdk/src/store-client.ts`) have no matching
path+method in `docs/api-reference/store.yaml` at the same SHA (verified by
exhaustive path dump):

1. `deliveryMethods.get` → `GET /delivery_methods/{id}` (SRC 420; SPEC has only
   collection + `pickup_locations`).
2. `deliveryMethods.pickupPoints` → `GET /delivery_methods/{id}/pickup_points`
   (SRC 439; SPEC has only `pickup_locations`).
3. `orders.returns.get` → `GET /orders/{orderId}/returns/{id}` (SRC 883; SPEC has
   only collection path with GET,POST).
4. `orders.claims.get` → `GET /orders/{orderId}/claims/{id}` (SRC 936; same).
5. `companies.members.delete` → `DELETE /companies/{companyId}/members/{id}`
   (SRC 1458; SPEC members path has GET,POST only).
6. `customer.digitalLinks.get` → `GET /customers/me/digital_links/{id}` (SRC 1236;
   SPEC has only collection path).
7. `companyInvitations.delete` → `DELETE /company_invitations/{id}` (SRC 1525;
   SPEC has only `/{token}` GET and `/{token}/accept` POST).

The Rails backend is no longer in `spree/spree` at this SHA (verified: no
`backend/` tree; repo now ships the backend as Docker image `ghcr.io/spree/spree`
per docs config), so routes could not be cross-checked against controllers.
Hypotheses (inferred): spec lags the server; or SDK calls unreleased/server-missing
routes. Needed: run the disputed calls against a disposable Spree 6.0 test
environment and record actual statuses, or get maintainer confirmation. Until then
these are **unknown** and must not be implemented as fact (AGENTS.md §3.1).

## Q2. SPEC routes with no SDK method — in scope for Dart? (NON-BLOCKING)

`POST /carts/{id}/po_document`, `PATCH /carts/{id}/tax_identifier`,
`GET /digital_links/{token}` exist in SPEC (verified) but have no TS-SDK method
(only `CreatePoDocumentParams`/`TaxIdentifierParams` types exist — verified).
Needed: owner ruling — implement from SPEC directly (parity Ask: SPEC > SDK?) or
defer to P2. Request/response schemas must be read from SPEC first.

## Q3. `coupon_codes` vs `discount_codes` in idempotency docs (NON-BLOCKING)

DOC `docs/api-reference/store-api/idempotency.mdx` lists `POST /carts/:id/coupon_codes`
as idempotency-supported; SDK + SPEC use `discount_codes` (verified). Needed:
confirm the canonical path and whether `coupon_codes` is a live alias.

## Q4. `AuthTokens.user` narrower than SPEC example (NON-BLOCKING)

SDK type: `{id, email, first_name, last_name}` (verified `src/types/index.ts`);
SPEC `AuthResponse` example adds `phone`, `accepts_email_marketing`,
`email_marketing_consent_updated_at`, `full_name` (verified store.yaml). Needed:
model the documented superset with nullable fields, or the SDK subset? Affects
`Customer`/`user` shape decisions.

## Q5. Header spelling `x-spree-api-key` vs `X-Spree-Api-Key` (TRIVIAL)

SDK sends lowercase, docs spell capitalized (verified). Same header modulo case
(inferred, HTTP semantics). Dart: send one canonical spelling; no interop risk
expected. No decision needed unless tests show otherwise.

## Q6. Exact per-endpoint credential matrix (BLOCKING for auth hardening)

Beyond SDK comments (guest vs JWT, incl. `carts.addresses.list` JWT-only — verified),
the SPEC `security` blocks per path were not extracted in this pass. Needed for
AGENTS.md §6 auth-redaction/redirect rules: extract SPEC security per operation or
probe a test server for 401/403 behavior before finalizing the Dart auth contract.

## Q7. Unknowns not resolved in this pass

- JWT / refresh-token lifetimes and rotation windows (not found in sources).
- Full field lists for `RegisterParams`, `UpdateCartParams`, `AddLineItemParams`,
  payment-session/setup-session params, claim/return create bodies, company params
  (names verified; complete schemas require reading `types/params/*.ts` + SPEC
  schemas — architect/implementation task with the same no-invention rule).
- `ProductFiltersResponse` shape; `Channel`/`Store`/`Market` full attribute lists.
- Webhook event relevance for a Store-API-only Dart core package (defer per matrix).
- Whether `retry-after`/`Retry-After` header name case or `Idempotent-Replayed`
  handling needs Dart-side behavior (transport detail for architect).
