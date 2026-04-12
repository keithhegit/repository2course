# Security Policy

## Supported Scope

Security reports are welcome for:

- skill prompt contracts that could lead to unsafe file/command behavior
- credential leakage risks in generated outputs
- unsafe defaults in scripts/templates
- malicious-content propagation risks from source repositories

## Reporting

Please report vulnerabilities privately before opening a public issue.

Suggested report fields:

- affected file(s)
- reproduction steps
- impact
- mitigation proposal

## Secure Defaults

- never embed tokens or secrets in generated courses
- prefer least-privilege operations
- explicitly label low-confidence source runs (B/C level)
- avoid destructive git/shell behavior unless user explicitly requests
