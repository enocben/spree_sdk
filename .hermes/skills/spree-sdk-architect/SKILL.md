---
name: spree-sdk-architect
description: Design the public API, architecture, dependency strategy, interface contracts, and file ownership for a cross-platform Dart SDK.
---

# Dart SDK Architecture Skill

## Design principles
- Core package is pure Dart and Flutter-independent.
- Public import: `package:spree_sdk/spree_sdk.dart`.
- Keep client/config, transport, auth, errors, models, serialization, resources, and utilities separated.
- Prefer typed APIs, named parameters, immutable models where practical, and intentional barrel exports.
- Avoid exposing Dio or other transport implementation types unless approved.
- Design injectable seams for deterministic tests.
- Keep token persistence outside core.

## Decisions to document
Evaluate HTTP package, model/code generation, error model, pagination, token provider, retries/idempotency, platform support, public exports, and dependency footprint. Record alternatives and rationale in ADRs.

## Parallelization
Create a file ownership map and stable contracts before implementation. Avoid assigning the same files to multiple agents. Do not implement resources while designing contracts.
