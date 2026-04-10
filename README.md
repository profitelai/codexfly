# Codexfly

Open-source AI workspace for coding agents, project memory, AGENTS.md workflows, and reusable skill packs.

Project standards and contributor workflow:

- [Contributing](./CONTRIBUTING.md)
- [Security Policy](./SECURITY.md)
- [Support](./SUPPORT.md)
- [Governance](./GOVERNANCE.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [License](./LICENSE)

Codexfly is an orchestration layer for AI coding agents. It prepares the right project setup before code is generated, so repositories can define how AI should operate instead of rebuilding that logic in every session.

## What Codexfly does

Codexfly prepares the right development environment before coding starts.

Example:

You ask:

`"Create an open-source CLI tool"`

Codexfly:

- selects the right project profile
- loads only necessary workflows
- avoids unnecessary complexity

Then Codex builds with the correct setup.

This prevents:

- overloading tools
- missing workflows
- inconsistent project setup

## How it works

Given a project request, Codexfly:

- selects the right project profile
- determines the current development stage
- enables only the necessary groups, skills, and helpers
- records onboarding decisions in shared project memory
- hands off to Codex or another coding agent for execution

This keeps token usage focused and makes AI behavior part of the repository itself.

## Real demo

- [Open-source CLI example](./docs/examples/open-source-cli.md)
- [Demo recording script](./docs/examples/demo-script.md)

The CLI example shows a concrete onboarding result for an open-source deployment tool, including selected profile, groups, skills, helpers, and reasoning.

## Modes

### Direct mode

For small tasks, Codexfly can skip onboarding and hand work directly to Codex:

```bash
codexfly run --direct "fix this bug"
```

Use direct mode when the task is low complexity:

- single-file task
- no integrations
- no deployment
- no repo setup needed

### Onboarding mode

Use onboarding when the task needs broader setup:

```bash
codexfly onboard "build SaaS backend"
```

## Core concepts

- Profiles: project types such as open-source, private-product, and corporate-product
- Stages: lifecycle phases such as discovery, planning, development, launch, and maintenance
- Groups: bundles of related skills by category
- Skills: reusable AI workflows stored with the repo
- Helpers: executable commands for recurring setup and operations
- Project Mode: repo-level defaults in `.codex/project-mode`
- Project Memory: durable execution context in `.codex/project-memory.md`

## Project configuration

Each repository can declare its normal operating defaults in `.codex/project-mode`:

```bash
PROJECT_VISIBILITY=open-source
PROJECT_DEFAULT_PROFILE=codexfly-open-source
PROJECT_DEFAULT_STAGE=development
PROJECT_EXTRA_GROUPS=project-management
```

This lets one repo behave like an open-source project and another behave like a private or corporate workflow without changing the core system.

## Learning system

Codexfly uses `.codex/project-memory.md` to keep onboarding and execution adaptive instead of static.

It records:

- onboarding decisions
- execution feedback
- missing capabilities
- follow-up improvements

That feedback can be used to reduce unnecessary skills on future runs and recommend missing workflow components when similar requests come back.

## Why Codexfly

Codexfly is built for teams and maintainers who need:

- consistent project onboarding
- reduced token usage through focused skill loading
- reusable workflows across repositories
- continuity across sessions, contributors, and models
- repo-native AI behavior through versioned instructions and memory

## Getting started

```bash
git clone https://github.com/profitelai/codexfly
cd codexfly
./.codex/install-skills.sh --project
```

Then try:

```bash
codexfly onboard "I want to build an open-source CLI tool for managing deployments."
codexfly run --direct "fix this bug"
```

## Support Codexfly

Help build open infrastructure for AI-powered development.

If this direction matters to you, support can help fund:

- better onboarding intelligence
- more reusable skills and helper packs
- stronger open-source contributor workflows

## Contributing

We are building a modular system for developer workflows. Contributions are useful in:

- onboarding improvements
- reusable skills and groups
- real-world examples
- project memory and orchestration
- docs, discoverability, and contributor setup

## License

MIT. See [LICENSE](./LICENSE).
