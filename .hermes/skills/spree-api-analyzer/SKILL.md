---
name: spree-api-analyzer
description: Analyze the official Spree TypeScript SDK and Store API to produce verified contracts and feature parity evidence.
---

# Spree API Analysis Skill

## Research workflow
- Inspect the complete upstream `packages/sdk` source, package metadata, exports, tests, and examples.
- Record repository commit SHA/tag and inspection date.
- Inspect current official Store API documentation and OpenAPI schemas.
- Identify API version and distinguish Store API from Admin API.
- Inventory every public resource, method, option, model/type, auth flow, error, pagination, and retry behavior.
- For each method record HTTP verb/path, auth, headers, query, body, response envelope, error cases, and tests.
- Mark each statement `verified`, `inferred`, or `unknown`.

## Evidence rules
Use source file paths, official docs, OpenAPI operation identifiers, and test names. Do not infer endpoint paths from resource names. Record disagreements and unresolved questions; do not silently choose one interpretation.

## Output
Maintain the feature parity matrix and research documents under `doc/research/`. Do not edit implementation files.
