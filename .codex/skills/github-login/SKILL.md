---
name: github-login
description: authenticate github cli with a configured token or verify existing github auth. use when the user asks to log into github, check saved github access, or reuse a repo-defined gh auth workflow.
---

# GitHub Login

Reuse the local helper instead of rebuilding GitHub auth steps manually.

## Instructions

1. Prefer `github-login` to authenticate `gh`.
2. Prefer `github-login --check` for a non-destructive auth check.
3. Never print raw tokens or copy them into chat, docs, or tracked files.
4. If a repo-local env file is needed, keep it untracked.

## Supported config

- `GITHUB_TOKEN`
- `GH_TOKEN`
- `GITHUB_PAT`
- `GITHUB_ACCESS_TOKEN`
- `GH_HOST`

The helper checks existing `gh` auth first, then falls back to a configured token.
