# Superpowers Plus Overlay

This repository is a thin fork of [obra/superpowers](https://github.com/obra/superpowers). Upstream remains the framework and source of releases; this overlay adds only:

- `skills/coding-standards/SKILL.md`, a compact implementation-quality baseline.
- One reference from the code-reviewer prompt to that baseline.
- A contract test for discovery and reference integrity.

It does not bundle ECC or the wshobson reviewer, and it does not duplicate TDD, review, or verification workflows.

## Install for Codex on Windows

Do not install the official Superpowers plugin at the same time; both copies expose skills with the same names.

```powershell
git clone https://github.com/Tami666/superpowers-plus.git "$env:USERPROFILE\.codex\superpowers-plus"
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.agents\skills"
New-Item -ItemType Junction -Path "$env:USERPROFILE\.agents\skills\superpowers-plus" -Target "$env:USERPROFILE\.codex\superpowers-plus\skills"
```

Restart Codex after installing.

## Update the Overlay

```powershell
Set-Location "$env:USERPROFILE\.codex\superpowers-plus"
git pull --ff-only origin main
```

## Sync Changes from Upstream

The clone already uses `origin` for this fork. Add the official repository once:

```powershell
git remote add upstream https://github.com/obra/superpowers.git
```

For each sync:

```powershell
git fetch upstream
git switch main
git merge upstream/main
git push origin main
```

Resolve conflicts by preserving the overlay files and the single reviewer reference. Run the contract test and upstream test suite before pushing.
