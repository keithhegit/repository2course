# Contributing

Thanks for helping improve `codebase-to-course`.

## Scope

This repository focuses on one goal:

- turn repositories into interactive HTML courses reliably, with clear evidence quality and stable batch behavior.

## How to Contribute

1. Fork and create a feature branch.
2. Keep changes focused and reviewable.
3. Update docs when behavior or contracts change.
4. Submit a PR with:
   - motivation
   - before/after behavior
   - verification steps

## Contribution Priorities

- source-confidence and fallback reliability
- quality-gate enforcement
- cross-platform build stability (especially Windows UTF-8)
- batch resume and dedup behavior
- interactive output quality and accessibility

## PR Checklist

- [ ] `SKILL.md` updated if workflow changed
- [ ] `README.md` updated if usage changed
- [ ] no hardcoded private tokens/URLs
- [ ] manual verification evidence included

## Review Notes

- prefer incremental, testable changes
- avoid broad rewrites without migration notes
- keep generated output contracts backward-compatible when possible
