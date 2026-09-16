#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
skill="$repo_root/skills/coding-standards/SKILL.md"
reviewer="$repo_root/skills/requesting-code-review/code-reviewer.md"

test -f "$skill"
grep -q '^name: coding-standards$' "$skill"
grep -q 'Use when implementing or refactoring production code' "$skill"
grep -q 'coding-standards' "$reviewer"
grep -q 'Do not restate its rules' "$reviewer"

echo "coding-standards contract: PASS"
