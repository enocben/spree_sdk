# ADR-001 — HTTP Client

Date: 2026-11-22. Status: **proposed** (no dependency added this phase).

## Context

Core must be pure Dart, testable without network, and must not expose transport types publicly (AGENTS.md §3.6) unless an ADR allows it. This ADR allows **no** public exposure.

## Alternatives considered

| Option | Pros | Cons |
|---|---|---|
| `package:http` (Dart team) | Official, minimal, pure Dart, all platforms; `http.Client` is trivially faked in tests; tiny API surface keeps our abstraction thin | No interceptors/retry built in — we implement our small policy layer (desired: keeps semantics explicit) |
| `dio` | Interceptors, transformers, battle-tested | Heavier; its `Response`/`DioException` types leak into APIs unless wrapped; larger transitive footprint; more opinionated than needed |
| `dart:io HttpClient` directly | Zero dependency | Verbose, platform-conditional (`dart:io` vs web), harder to fake; re-implements what `http` already abstracts |
| `package:http_client` / others | Niche features | Smaller maintenance/community base; unjustified risk |

## Decision (recommended)

- Depend on **`package:http`** (pending §3.5 review: maintenance, platform support, license) — decision takes effect only when owner approves Phase 02 and the §3.5 record is filed.
- Wrap it behind a **narrow internal transport interface** (`Transport`: `send(method, path, {query, headers, body})`) owned by core; resources depend on the interface, never on `http` types.
- Inject the underlying `http.Client` (default a real one; tests inject a fake) so request-construction tests are deterministic with zero network.
- Barrel export exposes **no** transport types — not `http`, not ours.

## Consequences

- Retry/backoff, header injection, redirect policy, and secret redaction live in our transport layer — explicit, reviewable, testable (details: ADR-003/ADR-004).
- If `http` ever becomes unsuitable, only the adapter is replaced; public API is unaffected.
