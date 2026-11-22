# File Ownership Map (Phases 02–03)

Principle (AGENTS.md §9): one file, one owner. No two agents write the same file.
Shared contracts (table 2) freeze **before** parallel implementation; changing them needs architect/orchestrator approval.

## 1. Ownership by area

| Area | Files | Owner agent (proposed) |
|---|---|---|
| Architecture + ADRs | `docs/architecture/*`, `docs/decisions/*` | sdk_architect (this proposal) — owner-approved, then read-only |
| Research / contracts | `docs/research/*`, per-operation contract records | api_analyzer |
| Public barrel | `lib/spree_sdk.dart` | sdk_architect (exports only) |
| Client + config | `lib/src/client.dart`, `lib/src/config.dart` | core_implementer (Phase 03, post-approval) |
| Transport (internal) | `lib/src/transport/*` | core_implementer |
| Auth provider interface | `lib/src/auth/provider.dart` (+ models) | core_implementer |
| Errors | `lib/src/errors/*.dart` | core_implementer |
| Pagination / utils | `lib/src/pagination.dart`, `lib/src/utils/*` | core_implementer |
| Models + serialization | `lib/src/models/*.dart` (+ `*.g.dart` iff codegen approved) | models_agent |
| Resources | `lib/src/resources/*.dart` (one file per area: `products.dart`, `carts.dart`, `cart_items.dart`, …, `customer*.dart`, `auth.dart`) | resources_agent(s), split by file |
| Tests | `test/**` mirroring `lib/src/**` | same owner as the file under test |
| Flutter adapter (separate package) | outside this repo/package | flutter_adapter_agent (only if needed) |
| `pubspec.yaml` | dependency changes | orchestrator approval required (AGENTS.md §3.5); no agent edits unilaterally |

This phase modifies **only** `docs/architecture/*` and `docs/decisions/*`. `lib/`, `test/`, `pubspec.yaml`, `docs/research/*` are untouched.

## 2. Shared stable contracts (freeze before parallel coding)

| Contract | Shape (proposed) | Consumers |
|---|---|---|
| `SpreeClient` interface + `SpreeConfig` | construction, resource getters, `request<T>`, `close()` | all resource/model authors |
| `RequestOptions` (`spreeToken`, headers, locale/currency overrides) | per-call auth/context carrier | resources, transport |
| `AuthTokenProvider` interface | `Future<String?> getToken()` + optional refresh hook | client, transport, adapter |
| `SpreeError` hierarchy | base + transport/http/decode/auth subtypes; redaction rule | resources, tests |
| `PaginatedResponse<T>` + `PaginationMeta` | `data`, `meta(count/totalCount/totalPages/page)` | resources, models |
| `RetryConfig` | safe-read retry policy; mutations opt-in only | transport |
| Model conventions | immutable, `fromJson`/`toJson`, nullable discipline, `unknown` enum fallback | models, resources |

## 3. Integration order (proposed)

1. Owner approves research + this architecture.
2. Freeze contracts (table 2) → publish as headers/stubs reviewable by all agents.
3. Parallelize: errors/pagination/utils → auth/provider → transport → models → resources → tests.
4. Gates per AGENTS.md §8/§11: `dart format`, `dart analyze`, `dart test`, contract evidence per operation.
