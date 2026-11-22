# ADR-002 — Models & Serialization

Date: 2026-11-23. Status: **accepted**.

## Context

Models must match actual JSON shapes/nullability, stay independent of transport/Flutter/resources (AGENTS.md §7), and handle missing-vs-null, empty collections, defaults, and unknown enums safely.

## Alternatives considered

| Option | Pros | Cons |
|---|---|---|
| Hand-written immutable models + manual `fromJson`/`toJson` | Zero new deps; exact nullability control; reviewers see every field mapping; no build step | Verbose at scale (~dozens of Store API types — inferred, pending analyzer inventory) |
| `json_serializable` codegen | Removes boilerplate; explicit `nullable`/`defaultValue`/`unknownEnumValue` support | New dev + transitive deps; build_runner step; generated diffs in review |
| `freezed` + `json_serializable` | Immutable data classes, equality, `copyWith`, unions, and JSON code generation | Build step, generated files, more dependencies, and generated JSON still needs contract-focused tests |
| `built_value` | Strong immutability guarantees | Builder ceremony, unfamiliar to most contributors, serializers setup cost |

## Decision

1. **Use Freezed for all concrete data models and request parameter objects**, with `freezed_annotation` in `dependencies` and `freezed` plus `build_runner` in `dev_dependencies`.
2. **Keep wire serialization explicit**: `fromJson`/`toJson` remain hand-written so numeric conversions, unknown-enum fallbacks, null omission, and field names continue to match verified contracts. The `ProductFilter` dispatcher and wire enums remain ordinary Dart types.
3. Keep JSON contract tests around every mapping. Do not use generated serializers until custom converters and exact field-omission behavior are verified for the affected model.
4. Do not adopt `built_value`; its builder and serializer setup add ceremony without a demonstrated need.
5. Conventions (binding regardless of manual/codegen):
   - Fields nullable exactly where the API omits or nulls them (per contract evidence, not guessing).
   - Missing vs explicit-null distinguished only where behavior depends on it (e.g. PATCH semantics) — documented per model.
   - Unknown enum strings → documented `unknown` fallback value, never throw.
   - No `dynamic` leaks: nested objects get typed models or explicit `Map<String, Object?>`.

## Dependency record

Versions resolved on 2026-11-23; all are compatible with this package's Dart `^3.14.0` SDK constraint.

| Package | Version | Purpose | License / maintenance / platform |
|---|---:|---|---|
| [`freezed_annotation`](https://pub.dev/packages/freezed_annotation) | 3.1.0 | Runtime annotations referenced by model source | MIT; published by verified `dash-overflow.net`; Dart-compatible and no Flutter runtime dependency |
| [`freezed`](https://pub.dev/packages/freezed) | 4.0.3 | Generates immutable value classes, equality, and `copyWith` | MIT; verified `dash-overflow.net`; published 2026-10-17; generator runs as a development tool |
| [`build_runner`](https://pub.dev/packages/build_runner) | 2.17.1 | Runs code generators | BSD-3-Clause; verified `tools.dart.dev`; published 2026-10-14; development tool for Linux, macOS, and Windows |

`freezed_annotation` is the only direct runtime dependency in this set. The generator and build tools are development-only, so they do not add Flutter or build-tool dependencies to SDK consumers. `json_serializable` was considered but is not included: handwritten JSON mappings are retained to preserve the explicit Store API contract. Alternatives considered were hand-written value classes (no tooling but more boilerplate), `json_serializable` alone (does not generate equality or `copyWith`), and `built_value` (more ceremony). Package versions, publisher, platform, and license details were checked on the linked pub.dev pages on 2026-11-23.

## Consequences

- Concrete model declarations now use Freezed-generated value semantics and `copyWith`; generated `*.freezed.dart` files are checked in.
- Developers must run `dart run build_runner build --delete-conflicting-outputs` after changing a Freezed model declaration.
- JSON parsing and serialization remain hand-written and contract-tested.
