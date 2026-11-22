# ADR-004 — Auth & Platform Separation

Date: 2026-11-22. Status: **proposed**.

## Context

Auth must be explicit/configurable; core must not choose platform storage or silently persist credentials (AGENTS.md §3.8, §6). TS SDK uses publishable-key (guest) and JWT (customer) modes with per-request token options (inferred — pending analyzer verification).

## Decision (recommended)

1. **Config-supplied publishable key**: `SpreeConfig.publishableKey` → sent as the documented Store API key header on every request (header name verified against contracts before implementation).
2. **Token provider callback, not storage**:
   ```dart
   abstract interface class AuthTokenProvider {
     Future<String?> getToken();
   }
   ```
   Core calls it per request (with caching limited to memory for the request burst only if needed — no disk persistence, ever, in core).
3. **Per-request guest/cart token**: `RequestOptions({String? spreeToken, Map<String,String>? headers, …})` threaded through resource methods (`carts.items.create(cartId, …, options: …)`). No ambient mutable "current cart" state on the client.
4. **No persistence in core.** Any durable token store (e.g. `flutter_secure_storage`-backed) ships as a **separate optional package** implementing `AuthTokenProvider`, owned outside core.
5. **Hygiene**: redact credentials from errors/logs (ADR-003); same-origin-only credential forwarding; explicit `logout()` clears only in-memory state and calls the API per contract.

## Consequences

- Pure-Dart testability: tests inject a stub provider; no platform channels.
- Flutter apps opt into persistence explicitly by adding the adapter package — core stays storage-agnostic forever.
- Refresh semantics (if the Store API defines any — inferred unknown) are specified from analyzer contracts before any refresh logic is written.
