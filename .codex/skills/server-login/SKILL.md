---
name: server-login
description: connect to a configured ssh server or run one-off remote commands. use when the user asks to log into a server, check a saved ssh target, or reuse a repo-defined ssh helper workflow.
---

# Server Login

Reuse the local helper instead of rebuilding SSH commands manually.

## Instructions

1. Prefer `server-login` for an interactive shell.
2. Prefer `server-login --command '<command>'` for one-shot remote checks.
3. Run `server-login --check` only if the initial connect path fails.
4. Never print passwords, private keys, full host inventories, or raw env values.
5. If a repo-local env file is needed, keep it untracked.

## Supported config

- `SSH_ALIAS`
- `SSH_HOST`
- `SSH_PORT`
- `SSH_USER`
- `SSH_PASSWORD`
- `SSH_IDENTITY_FILE`

The helper looks first for explicit env vars, then for untracked local env files.
