# ADR-002 — Models & Serialization

Date: 2026-11-22. Status: **proposed** (no dependency added this phase).

## Context

Models must match actual JSON shapes/nullability, stay independent of transport/Flutter/resources (AGENTS.md §7), and handle missing-vs-null, empty collections, defaults, and unknown enums safely.

## Alternatives considered

| Option | Pros | Cons |
|---|---|---|
| Hand-written immutable models + manual `fromJson`/`toJson` | Zero new deps; exact nullability control; reviewers see every field mapping; no build step | Verbose at scale (~dozens of Store API types — inferred, pending analyzer inventory) |
| `json_serializable` codegen | Removes boilerplate; explicit `nullable`/`defaultValue`/`unknownEnumValue` support | New dev + transitive deps; build_runner step; generated diffs in review |
| `freezed` | Unions + copyWith + serialization in one | Heavy, opinionated; union machinery unneeded for response DTOs; larger footprint |
| `built_value` | Strong immutability guarantees | Builder ceremony, unfamiliar to most contributors, serializers setup cost |

## Decision (recommended)

1. **Start manual**: hand-written `final`-field classes with explicit `fromJson`/`toJson`, `==`/`hashCode`, and round-trip tests. Fits Phase 03's first resources with zero dependency risk.
2. **Adopt `json_serializable` only if** the analyzer inventory shows model count/ churn justifies it — as a separate, owner-approved step with the §3.5 record. Models stay hand-reviewable either way.
3. **Reject `freezed` / `built_value`** for core DTOs: unjustified weight for data shapes with no union semantics.
4. Conventions (binding regardless of manual/codegen):
   - Fields nullable exactly where the API omits or nulls them (per contract evidence, not guessing).
   - Missing vs explicit-null distinguished only where behavior depends on it (e.g. PATCH semantics) — documented per model.
   - Unknown enum strings → documented `unknown` fallback value, never throw.
   - No `dynamic` leaks: nested objects get typed models or explicit `Map<String, Object?>`.

## Consequences

- More hand-written code initially, but every mapping is evidence-traceable to fixtures/contracts.
- Codegen migration, if approved, is mechanical (`*.g.dart` beside sources, owned by models_agent) and invisible to the public API.
