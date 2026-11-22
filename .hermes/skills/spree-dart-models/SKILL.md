---
name: spree-dart-models
description: Build typed Dart request and response models with accurate JSON serialization from verified Spree API schemas.
---

# Dart Models Skill

## Modeling workflow
- Use only verified upstream/API schemas and sanitized fixtures.
- Preserve actual JSON key names and nullability.
- Distinguish absent, null, empty, and default values when semantically relevant.
- Use the approved immutable/code-generation strategy.
- Handle unknown enum values safely where needed.
- Keep models independent of HTTP transport and Flutter.
- Avoid speculative convenience fields.

## Validation
For each model, add fixture-backed parsing tests and serialization tests where applicable. Cover required fields, optional fields, explicit nulls, empty arrays/maps, and unknown values. Document source schema evidence.
