---
name: spree-sdk-testing
description: Test Dart SDK behavior, HTTP contracts, serialization, error handling, retry safety, and cross-platform examples.
---

# SDK Testing Skill

## Test layers
1. Unit tests for pure logic.
2. Serialization tests using sanitized fixtures.
3. HTTP contract tests asserting method, URL/path, query, headers, body, and response.
4. Error-path tests.
5. Opt-in integration tests against disposable Spree environments.

## Coverage
Cover success, empty results, missing/null fields, malformed payloads, unauthorized/forbidden/not-found/rate-limit/server errors, timeouts, pagination, and retry/idempotency rules as applicable.

Never call production services. Never include real customer data or payment credentials. Keep tests deterministic.

## Commands
Run `dart format --output=none --set-exit-if-changed .`, `dart analyze`, and `dart test`. For Flutter examples/adapters run `flutter analyze` and `flutter test`. Report exact output and untested areas.
