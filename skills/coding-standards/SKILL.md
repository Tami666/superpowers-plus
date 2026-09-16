---
name: coding-standards
description: Use when implementing or refactoring production code and making implementation-quality decisions
---

# Coding Standards

## Overview

Keep implementation code readable, direct, and proportionate to the current requirement. Prefer code that fits the repository over theoretically perfect code that adds new machinery.

## Baseline

- Prefer readability over cleverness.
- Choose the simplest implementation that satisfies the current requirement.
- Follow existing repository conventions before introducing a new pattern.
- Use descriptive names and keep functions and modules cohesive.
- Prefer early returns over deep nesting.
- Keep side effects explicit and local.
- Prefer immutable data where practical; explicit local mutation is acceptable.
- Validate external input at system boundaries.
- Handle failures explicitly; never silently swallow errors.
- Replace magic values with named constants when the name adds meaning.
- Remove duplication when the repetition is meaningful; do not abstract incidental similarity.
- Add wrappers, adapters, helpers, or infrastructure only when they remove real complexity.
- Do not add speculative flexibility or compatibility paths without a requirement.
- Do not refactor unrelated code while completing the task.
- Delete dead code created or made obsolete by the change.

## Boundaries

This skill defines implementation-quality defaults. It does not replace `test-driven-development`, `requesting-code-review`, or `verification-before-completion`; use those skills for their respective workflows.

When a repository has a documented local convention, follow it unless it conflicts with the task's explicit requirements.
