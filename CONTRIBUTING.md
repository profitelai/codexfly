# Contributing to Codexfly

Thanks for contributing.

Codexfly is intended to become a serious open-source project, so contributions should optimize for clarity, maintainability, and product usefulness.

## Before You Start

- read the README
- read [docs/vision.md](./docs/vision.md)
- read [docs/architecture.md](./docs/architecture.md)
- check the roadmap in [docs/roadmap.md](./docs/roadmap.md)
- read [SECURITY.md](./SECURITY.md) for vulnerability reporting

## Contribution Areas

We welcome help with:

- frontend UX and motion systems
- backend architecture
- AI agent orchestration
- project memory models
- session ingestion pipelines
- cost and usage analytics
- developer tooling
- documentation

## Ground Rules

- keep changes scoped
- explain tradeoffs clearly
- avoid unrelated refactors
- prefer incremental improvements over speculative rewrites
- document new architecture decisions

## Branch and PR Guidance

- create a focused branch per feature or fix
- do not push directly to `main`
- open a pull request for every change that targets `main`
- keep pull requests reviewable
- include a short summary of what changed and why
- include screenshots or recordings for UI work when relevant
- note any follow-up work explicitly

## Access Model

- first-time or occasional contributors should use forks and pull requests
- trusted long-term contributors can be granted direct `write` access and still work through pull requests
- `main` is protected and should remain merge-only through reviewed pull requests

## Recommended Workflow

```bash
git clone https://github.com/profitelai/codexfly.git
cd codexfly
git checkout -b feat/my-change
```

Or, if you are contributing from a fork:

```bash
git clone https://github.com/<your-user>/codexfly.git
cd codexfly
git remote add upstream https://github.com/profitelai/codexfly.git
git checkout -b feat/my-change
```

Before opening a PR:

- keep the branch focused on one problem
- rebase or merge from the latest `main` if needed
- summarize verification steps clearly

## Git Identity

If you keep your email private on GitHub, set your local git email to your GitHub noreply address before committing:

```bash
git config user.name "Your Name"
git config user.email "YOUR_GITHUB_ID+YOUR_GITHUB_USERNAME@users.noreply.github.com"
```

This avoids push failures caused by GitHub email privacy protection.

## Recommended Pull Request Format

- Problem
- Change
- Verification
- Risks or follow-ups

## Architecture Changes

If your change affects project structure, memory models, ingestion, or orchestration, update the relevant file in `docs/`.

## Code Style

- prefer readable code over clever code
- keep naming explicit
- preserve separation between raw events, structured state, and distilled memory
- keep user-facing copy concise and product-grade

## Need Help?

Open an issue with:

- the problem you want to solve
- your proposed direction
- assumptions or open questions

For support questions, see [SUPPORT.md](./SUPPORT.md).
