# Authentication Flows — Spree Store API + TS SDK (research only, no code)

Sources pinned to upstream SHA `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`
(consulted 2026-11-22): **SRC** `packages/sdk/src/{client,store-client}.ts`,
**CORE** `packages/sdk-core/src/{request,types}.ts`, **SPEC**
`docs/api-reference/store.yaml`, **DOC** `docs/api-reference/store-api/authentication.mdx`
+ `docs/developer/sdk/authentication.mdx`. Status: **verified** / **inferred** /
**unknown**.

## 1. Credential inventory (verified)

| Credential | Form | Transport | Scope |
|---|---|---|---|
| Publishable API key | `pk_…` string | `x-spree-api-key` header on **every** request (SDK: `x-spree-api-key`; docs: `X-Spree-Api-Key`; same header modulo case — inferred) | Identifies the storefront; safe in client-side code (verified DOC). Missing → `401 {code: invalid_token}` (verified SPEC + DOC) |
| Customer JWT | short-lived access token | `Authorization: Bearer <token>` via `RequestOptions.token` (verified CORE) | Authenticated customer surface (`/customers/me/*`, `carts.associate`, `carts.addresses`, account/companies…). Expired/invalid → `401` (verified DOC errors.mdx) |
| Refresh token | opaque rotated string | JSON body `{refresh_token}` to `POST /auth/refresh` (verified SRC 166; explicitly **no** Authorization header — verified SRC comment) | Mints new JWT + rotated refresh token. Stricter rate limit: 10/min/IP (verified DOC rate-limitting.mdx) |
| Guest cart/order token | `cart.token` returned at cart creation | `x-spree-token` header via `RequestOptions.spreeToken` (verified CORE) | Guest access to that cart/order (`carts.get/update/complete`, `orders.get`) |
| Email-link tokens | password-reset token, data-request confirmation token, company-invitation token, newsletter verify/unsubscribe tokens | URL path segment (`/data_requests/{token}`, `/company_invitations/{token}`, …) or body/query | Bearer-equivalent single-purpose secrets; no JWT needed (verified SRC comments) |

Provider-dispatched login: `POST /auth/login` accepts `{provider, …}` where
`provider` selects a server strategy (`Spree.store_authentication_strategies`); default
`provider: 'email'` (verified CORE `LoginCredentials` + SPEC `/auth/login`
description). Third-party IdPs (Auth0/Okta/Firebase/SAML/custom JWT) return the same
`AuthTokens` shape (verified SPEC).

## 2. Flows

### A. Guest browsing (verified: DOC authentication.mdx, SRC client.ts)

```
createClient({baseUrl, publishableKey}) → products/categories/... list+get with KEY only
```

### B. Customer register → session (verified: SRC 965, DOC authentication.mdx)

```
POST /customers {email, password, password_confirmation?, first_name?, last_name?, …}
  → 200 AuthTokens {token, refresh_token, user}   (auto-login; verified SRC + DOC)
```

Registration rate limit 3/min/IP (verified DOC rate-limitting.mdx).
Full `RegisterParams` field list: unknown (read params file + SPEC before modeling).

### C. Email/password login → JWT (verified: SRC 158, DOC, SPEC)

```
POST /auth/login {email, password} (KEY header)
  → 200 AuthTokens {token, refresh_token, user{id,email,first_name,last_name}}
```

Login rate limit 5/min/IP (verified DOC). Per-request use:
`client.customer.orders.list({}, {token})` → `Authorization: Bearer …` (verified CORE).

### D. Refresh rotation (verified: SRC 166, DOC authentication.mdx)

```
POST /auth/refresh {refresh_token}   # no Authorization header
  → 200 AuthTokens (new access token AND new refresh_token)
```

Client MUST store both new values (old refresh token is rotated out — verified DOC:
"The refresh token rotates, so store the new one as well"). 401
`invalid_refresh_token` when invalid/expired (verified SPEC).

### E. Logout (verified SRC 172; SPEC entry exists, body/status to confirm)

```
POST /auth/logout {refresh_token} → revokes refresh token
```

### F. Guest checkout with cart token (verified: DOC authentication.mdx, AuthGuestCart snippet)

```
cart = POST /carts                        # KEY only → cart.token
opts = {spreeToken: cart.token}           # → x-spree-token header
PATCH /carts/{id} {email, …}, opts
POST  /carts/{id}/items {variant_id, quantity}, opts
POST  /carts/{id}/complete, opts → Order | OrderGroup
GET   /orders/{id}, opts                  # guest order lookup (verified SRC 853 comment)
```

### G. Guest → account association (verified: SRC 578)

```
PATCH /carts/{id}/associate   with RequestOptions {token: <JWT>}   # JWT REQUIRED
```

### H. Password reset (verified SRC 1347/1357; SPEC paths exist)

```
POST  /password_resets {email, …} → 202 {message} always (anti-enumeration; verified)
PATCH /password_resets/{token} {…} → 200 AuthTokens (auto-login; verified SRC comment)
```

### I. GDPR data request double opt-in (verified: SRC 1108-1145, 1323-1345; CHANGELOG 2.0.0-rc.5)

```
(signed in) POST /customers/me/data_requests {redirect_url?, …} → DataRequest(status: awaiting_confirmation)
   → confirmation email link opens redirect_url with token appended
(user gesture, NOT page load — mail scanners prefetch) POST /data_requests/{token}/confirmation
   → processing starts; GET /data_requests/{token} later carries download link
```

`customer.dataRequests.get` never carries the download link (verified SRC comment).
Erasure requests need `current_password` (verified SRC comment).

### J. Company invitation accept (verified: SRC 1502-1525)

```
GET  /company_invitations/{token}          # no auth; → invitation + company_name + store_name
POST /company_invitations/{token}/accept  # body {} default; registration payload for new
                                          # accounts OR JWT to bind signed-in customer → CompanyMembership
DELETE /company_invitations/{id}          # member-authenticated revoke (SDK only; absent from SPEC)
```

### K. Newsletter verify / unsubscribe tokens (verified: SRC 984-1032)

Subscribe → optional JWT links/auto-verifies on email match; `verify` by emailed
token; `requestUnsubscribe` always 202 then webhook `unsubscribe_requested`;
`delete` with JWT (own subscription) or `?token=` email-link token.

## 3. Rules for the Dart SDK (derived; transport decisions belong to the architect)

- Auth must be explicit and configurable; token refresh via a documented
  callback/provider contract; core package must not choose a storage mechanism
  (AGENTS.md §6 — normative for this repo, not upstream).
- Never forward `Authorization` to a different origin on redirect; never log or
  persist tokens (AGENTS.md §6/§3.7-8).
- Never silently persist credentials in core; a Flutter secure-storage adapter, if
  needed, belongs in a separate optional package (AGENTS.md §6).
- `associate`, `carts.addresses.list`, and all `/customers/me/*` + `/account/*` +
  `/companies/*` Reads: JWT-gated in SDK comments; guest `spreeToken` explicitly
  rejected for `carts.addresses.list` (verified SRC). Unknown: exact server 401/403
  matrix per endpoint (SPEC security per path not yet extracted — open question).

## 4. Unknowns

- Exact per-endpoint 401 vs 403 behavior and JWT-vs-guest acceptance beyond the
  SDK comments (SPEC `security` blocks per path not extracted in this pass).
- JWT lifetime / refresh-token lifetime and rotation window (not found in inspected
  sources).
- `LogoutParams` / `ResetPasswordParams` / `RequestPasswordResetParams` full field
  lists (body types not printed in this pass).
