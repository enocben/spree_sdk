# ADR-003 — Errors, Pagination, Retry/Idempotence

Date: 2026-11-22. Status: **proposed**.

## 1. Errors

Recommended hierarchy (all extend a sealed/abstract `SpreeError implements Exception`):

- `SpreeTransportError` — DNS/socket/TLS failures, no response received.
- `SpreeTimeoutError` — client-side timeout (timeouts configured, not infinite by default).
- `SpreeHttpError` — non-2xx with `statusCode`, parsed `code`/`message`/`details` when the envelope provides them, raw body retained for diagnostics.
- `SpreeDecodeError` — response body doesn't match expected shape.
- `SpreeAuthError` — 401/403-class semantics surfaced distinctly so apps can trigger re-login.

Rules:

- `toString()` and any logging **redact** tokens, keys, cookies, PII/payment data (AGENTS.md §3.7, §6).
- Never forward `Authorization`/token headers to a different origin on redirect (AGENTS.md §6).
- Never disable TLS validation.
- Error-path tests per operation (AGENTS.md §8).

## 2. Pagination

- Collection returns: `PaginatedResponse<T> { data: List<T>, meta: PaginationMeta }` with `meta = { count, totalCount, totalPages, page }` (field names verified against contracts before implementation — TS type name inferred).
- List params: named `{int? page, int? limit, List<String>? expand, Map<String,String>? filter}`; Ransack-style params passed through opaquely, never invented.
- No auto-paging by default (explicit choice; auto-iterate helpers only if analyzer confirms safe semantics).

## 3. Retry / idempotence

- **Default: retry safe/idempotent reads (GET) only**, with exponential backoff + jitter, bounded attempts, retrying only network/timeout/5xx-class failures — never 4xx.
- **Mutations (POST/PUT/PATCH/DELETE — carts, checkout, payments) are NEVER auto-retried** unless idempotency semantics + server support are verified per operation and recorded in its contract (AGENTS.md §3.9, §6).
- `RetryConfig` (max attempts, backoff, retryable statuses) is configurable; per-request override allowed; everything observable/testable via fake transport with scripted failures.
