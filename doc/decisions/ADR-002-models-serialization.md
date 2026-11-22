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
2. **Generate JSON serialization with `json_serializable`**. Keep the public Freezed `fromJson` factories as thin entry points to generated functions; do not hand-write field-by-field mappings.
3. Keep contract-specific behavior explicit where generated field mappings cannot express it: open-enum fallbacks, the `ProductFilter` discriminator/unknown-facet dispatch, and request `extra` maps that must be flattened into the request body. These adapters must remain narrowly scoped and covered by request/serialization tests.
4. Keep JSON contract tests around every mapping, including missing/null distinctions, null omission, enum fallbacks, and nested model behavior.
5. Do not adopt `built_value`; its builder and serializer setup add ceremony without a demonstrated need.
6. Conventions (binding regardless of manual/codegen):
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
| [`json_annotation`](https://pub.dev/packages/json_annotation) | 4.12.0 | Runtime annotations and helpers for generated JSON serializers | BSD-3-Clause; maintained in the Dart JSON serialization repository; Dart-only, no Flutter dependency |
| [`json_serializable`](https://pub.dev/packages/json_serializable) | 6.15.2 | Generates model JSON mappings from the Freezed declarations | BSD-3-Clause; actively maintained with the Dart JSON serialization tooling; development-only |
| [`build_runner`](https://pub.dev/packages/build_runner) | 2.17.1 | Runs code generators | BSD-3-Clause; verified `tools.dart.dev`; published 2026-10-14; development tool for Linux, macOS, and Windows |

`freezed_annotation` and `json_annotation` are runtime dependencies; the generators and build tools are development-only. They add no Flutter dependency to SDK consumers. Alternatives considered were hand-written value classes (no tooling but substantially more boilerplate), `json_serializable` alone (does not generate equality or `copyWith`), and `built_value` (more ceremony). Package versions come from the resolved package constraints in `pubspec.lock`.

## Consequences

- Concrete model declarations now use Freezed-generated value semantics and `copyWith`; generated `*.freezed.dart` files are checked in.
- Developers must run `dart run build_runner build --delete-conflicting-outputs` after changing a Freezed model declaration or JSON annotation.
- Generated `*.freezed.dart` and `*.g.dart` files are checked in and must be reviewed with the source model.
- Contract-specific adapters are retained only where needed for flattened fields, open enums, discriminated filters, and flattened request `extra` maps.
