# AGENTS.md — Spree SDK Engineering Handbook

## 1. Mission

Build `spree_sdk`, an idiomatic, strongly typed, production-quality Dart SDK for the Spree Commerce Store API. It must be usable from pure Dart and Flutter applications. The core package must not depend on Flutter.

The goal is functional parity with the public capabilities of the official `@spree/sdk` TypeScript package, not a line-by-line translation of its internals.

## 2. Authoritative references

- TypeScript SDK: https://github.com/spree/spree/tree/main/packages/sdk
- npm package: https://www.npmjs.com/package/@spree/sdk
- Store API introduction: https://spreecommerce.org/docs/api-reference/store-api/introduction
- Dart package conventions: https://dart.dev/tools/pub/package-layout
- Effective Dart: https://dart.dev/effective-dart

At the start of research, record:
- upstream repository commit SHA or release tag;
- Spree server/API version being targeted;
- documentation/OpenAPI revision or retrieval date;
- date the compatibility analysis was performed.

Use the upstream SDK source and tests to understand expected public behavior. Use current official Spree documentation/OpenAPI and verified fixtures to establish API contracts. If sources conflict, record the conflict and ask the orchestrator for a decision.

## 3. Non-negotiable rules

1. Never invent endpoints, HTTP methods, query parameters, headers, payload fields, response envelopes, token semantics, or enum values.
2. Target Store API only. Do not accidentally implement Admin API operations.
3. Do not start implementation until the feature inventory and architecture contracts have been reviewed.
4. Keep core Dart code independent of Flutter.
5. Do not add dependencies without documenting the reason, alternatives, maintenance status, platform support, and license.
6. Do not expose internal transport types in the public API unless an accepted ADR explicitly allows it.
7. Do not log or commit credentials, API keys, JWTs, guest tokens, cookies, personal data, or payment data.
8. Do not silently persist credentials in the core package.
9. Never blindly retry checkout, payment, cart mutation, or other non-idempotent operations.
10. Do not publish to pub.dev without explicit project-owner approval.

## 4. Project architecture principles

Keep these concerns separate:
- public client/configuration;
- HTTP transport and middleware;
- authentication/token provider interfaces;
- errors;
- domain/request/response models;
- serialization;
- Store API resources;
- pagination and shared utilities.

Prefer cohesive resource classes and typed request/response models. Public methods should use named parameters where appropriate and expose predictable Dart types.

The public import should be:

```dart
import 'package:spree_sdk/spree_sdk.dart';
```

The package name must be checked for availability on pub.dev before publication.

## 5. API contract evidence

For every implemented operation, maintain a contract record containing:
- upstream TypeScript export/method, if one exists;
- HTTP method and exact path;
- required and optional headers;
- authentication requirements;
- query parameters;
- request body schema;
- response envelope and model;
- error behavior;
- source URLs/file paths and relevant tests;
- local test/fixture covering the operation.

Mark every fact as `verified`, `inferred`, or `unknown`. Inferred or unknown behavior must not be implemented as fact. Raise it as a question.

## 6. Authentication and transport

- Authentication must be explicit and configurable.
- Token refresh must use a documented callback/provider contract.
- Core SDK must not choose a platform storage mechanism.
- A Flutter secure-storage adapter, if needed, belongs in a separate optional package.
- Redact credentials from exceptions, logs, and diagnostics.
- Do not forward authorization credentials to a different origin during redirects.
- Do not disable TLS certificate validation.
- Retry safe/idempotent operations only by default.
- Retry mutations only when idempotency semantics and server support are verified.

## 7. Models and serialization

- Match actual JSON shapes and nullability.
- Distinguish missing fields, explicit nulls, empty collections, and defaults when behavior depends on the distinction.
- Use fixtures from documented or captured responses; remove secrets and personal data.
- Test serialization round trips where applicable.
- Handle unknown enum values safely when forward compatibility requires it.
- Keep models independent from Dio, Flutter, and resource implementations.

## 8. Testing gates

Every feature must include relevant:
- unit tests;
- request-construction tests (method, URL/path, query, headers, body);
- response parsing tests;
- error-path tests;
- integration tests when a disposable Spree test environment is available.

Tests must never call production services. Never use production customer credentials or real payment details.

Before handing off code, run:

```bash
dart format --output=none --set-exit-if-changed .
dart analyze
dart test
```

For Flutter examples/adapters, also run:

```bash
flutter analyze
flutter test
```

Report exact commands and their exit status. Do not claim tests passed if they were not run.

## 9. Agent collaboration

- Read this file, your agent profile, assigned skill, task brief, and relevant ADRs before working.
- Work only within the files assigned by the orchestrator.
- Do not edit files owned by another agent.
- Do not change shared interfaces without architect/orchestrator approval.
- Use Git branches/worktrees for isolated work when configured.
- Do not merge your own work unless explicitly assigned.
- If blocked by missing or contradictory API information, stop and report the blocker.
- Keep changes focused and reviewable.

## 10. Required handoff report

Every delegated task must return:

1. **Summary** — what was accomplished.
2. **Files** — created/modified files.
3. **Evidence** — source URLs, upstream paths, API contract references.
4. **Tests** — exact commands and results.
5. **Limitations** — unresolved questions, assumptions, missing coverage.
6. **Next step** — recommended follow-up.

## 11. Definition of done

A task is complete only when:
- acceptance criteria are met;
- implementation matches verified contracts;
- relevant tests are added and pass;
- formatting and analyzer checks pass for the changed scope;
- public documentation is updated where needed;
- no secrets or sensitive data are present;
- handoff report is complete;
- orchestrator has reviewed and accepted the result.
