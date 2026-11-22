# Architecture Overview — `spree_sdk` (Phase 01 proposal)

Status: **proposal** — no implementation. No new dependencies.
Date: 2026-11-22. Upstream inspection: `spree/spree` `packages/sdk` public behavior only (docs + npm page); no upstream commit SHA pinned (see Limitations). All upstream-derived facts below are marked **inferred** until `doc/research/*` (api_analyzer) lands.

## 1. Package boundaries

- **Core package `spree_sdk`: pure Dart, no Flutter dependency.** Usable from pure Dart and Flutter apps (AGENTS.md §1, §3.4).
- **Single public import:** `package:spree_sdk/spree_sdk.dart` (barrel export only; see `public-api-design.md`).
- **Optional Flutter adapter** (e.g. secure-storage token store) lives in a **separate package**, never in core (ADR-004).
- **Store API only.** Admin API operations are out of scope (AGENTS.md §3.2).

## 2. Layers (AGENTS.md §4 — each concern separate)

```text
public client / config  →  resources  →  transport  →  Spree Store API
        │                      │              │
        │                      │         auth provider (interface)
        │                      ▼              ▼
        │                 errors · models · serialization · pagination/utils
```

| Layer | Responsibility | Must NOT do |
|---|---|---|
| Client / config (`SpreeClient`, `SpreeConfig`) | Entry point, holds config, composes resources, owns transport lifecycle | Persist credentials; expose transport types |
| Transport (internal) | Build URIs under `/api/v3/store`, set headers, execute HTTP, redact secrets from logs/diagnostics | Leak `http`/`Dio`/adapter types into public API (ADR-001) |
| Auth provider (interface) | Supply tokens on demand via callback (`AuthTokenProvider`) | Choose storage; silently persist (ADR-004) |
| Errors (`SpreeError` hierarchy) | Typed failures: transport, HTTP status, decoding, auth; redact credentials | Log tokens/keys/PII |
| Models | Immutable Dart types matching actual JSON shapes + nullability | Depend on transport, Flutter, or resources (AGENTS.md §7) |
| Serialization | `fromJson`/`toJson` per model, unknown-enum fallback, missing-vs-null discipline | Runtime validation framework lock-in (ADR-002) |
| Resources | One cohesive class per Store API area (products, carts + nested items/payments/…, customer + nested addresses/orders/…, auth, …) | Invent endpoints/methods/params (AGENTS.md §3.1) |
| Pagination / utils | `PaginatedResponse<T>`, page/limit/expand params, Ransack passthrough | Hide server pagination semantics |

## 3. Key structural decisions

1. **Resource composition mirrors TS public shape** (inferred): `client.products.list()`, `client.carts.items.create(cartId, …)`, `client.customer.addresses.list(…)`, plus a typed `client.request<T>(…)` escape hatch for custom endpoints. Full sketch in `public-api-design.md`.
2. **Transport is an internal seam**, injected and faked in tests; public API exposes only Dart stdlib types + SDK models (ADR-001).
3. **Per-request options, not ambient auth state:** guest/cart tokens travel via named `options`/`SpreeToken` parameters (mirrors TS `{ spreeToken }` — inferred), JWT via provider. No silent persistence (ADR-004).
4. **Retry is conservative by default:** idempotent reads only; mutations never auto-retried without verified idempotency semantics (ADR-003, AGENTS.md §3.9).
5. **Stable contracts freeze before parallel implementation:** client interface, error hierarchy, pagination envelope, auth provider interface, request-options type (see `file-ownership.md`).

## 4. Test seams (design for them now, implement in Phase 03)

- Injectable transport (`http.Client`-compatible abstraction) → deterministic request-construction tests without network.
- Fixture-driven response parsing + error-path tests per operation (AGENTS.md §8).
- `dart format / analyze / test` gates; never hit production services.

## 5. Limitations / open questions → owner

- `doc/research/*` not yet available at write time — endpoint inventory, parity matrix, and contract evidence are pending api_analyzer; **no resource method is specified here beyond the TS-mirroring sketch**.
- Upstream commit SHA / target Store API version / OpenAPI revision **not pinned** — needs owner sign-off (proposed as Phase 02 gate).
- Dependency recommendations in ADRs are **recommendations only** — §3.5 requires documented reason + alternatives + maintenance/license review before adding anything (this phase adds nothing).
