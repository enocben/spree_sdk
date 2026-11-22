---
name: spree-security
description: Review SDK credential handling, HTTP transport, redirects, logging, retries, payment boundaries, and dependency risks.
---

# SDK Security Review Skill

## Review checklist
- No secrets, tokens, cookies, or sensitive customer/payment data in logs or repository.
- No implicit token persistence in core.
- TLS verification remains enabled.
- Credentials are not forwarded across origins on redirects.
- Errors and diagnostics redact sensitive values.
- Retries cannot duplicate non-idempotent operations.
- Payment flows use provider-approved tokenization/hosted flows; avoid raw card data in SDK.
- Dependencies and licenses are reviewed.
- URL and custom transport behavior are documented.

## Reporting
Classify findings Critical/High/Medium/Low/Informational. Include evidence, impact, exploitability, remediation, and release-blocking status. Do not silently patch without assignment.
