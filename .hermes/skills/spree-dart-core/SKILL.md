---
name: spree-dart-core
description: Implement the approved Dart SDK core including HTTP transport, configuration, auth hooks, errors, and safe retry behavior.
---

# Dart Core Engineering Skill

## Implementation scope
Implement only approved core contracts: client configuration, base URL handling, HTTP adapter, request pipeline, interceptors, token-provider hooks, structured errors, pagination primitives, and retry policy.

## Rules
- Normalize URLs safely and test edge cases.
- Redact authorization headers, cookies, keys, JWTs, and guest tokens.
- Never persist tokens implicitly.
- Never disable TLS verification.
- Do not forward credentials to a different origin after redirects.
- Retry safe/idempotent requests only by default.
- Do not automatically retry payment, checkout, or mutations without verified idempotency support.
- Keep Flutter APIs out of core.
- Do not leak transport exceptions without a documented mapping strategy.

## Validation
Test request construction, timeouts, headers, token injection, error mapping, redaction, and retry behavior. Run format, analyze, and tests.
