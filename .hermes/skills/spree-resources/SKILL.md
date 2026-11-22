---
name: spree-resources
description: Implement strongly typed Dart resource clients for verified Spree Store API operations.
---

# Spree Resource Engineering Skill

## Resource workflow
For every operation, verify and implement:
- HTTP method and exact Store API path;
- required headers and auth context;
- query parameters;
- request body;
- response envelope and typed model;
- error behavior.

Use the approved shared client. Keep resources thin and avoid duplicating transport/auth/error logic. Use named parameters and typed return values.

## Restrictions
Never implement Admin API accidentally. Never invent endpoints or parameters. Do not assume all operations share the same auth requirements. Stop and report undocumented behavior.

## Validation
Add tests asserting method, path, query, headers, body, successful parsing, and representative errors. Update the parity matrix.
