# Codexfly Skills Pack

This starter pack adds repo-native skills, helper commands, and skill packs for Codexfly.

## Install locally

```bash
./.codex/install-skills.sh
```

Install the repo's default project pack:

```bash
./.codex/install-skills.sh --project
```

Install a specific skill pack:

```bash
./.codex/install-skills.sh --pack maintainer
```

Install a skill group:

```bash
./.codex/install-skills.sh --group research
```

List available packs:

```bash
./.codex/install-skills.sh --list-packs
```

List available groups:

```bash
./.codex/install-skills.sh --list-groups
```

## Included skills
- brainstorm-spec
- implementation-planner
- frontend-design
- seo-review
- security-review
- project-memory
- stack-generator
- ceo-review
- server-login
- github-login

## Skill packs
- `core`: baseline planning and memory workflow
- `product`: discovery, planning, UI direction, discoverability, and stakeholder output
- `engineering`: implementation, architecture, security, and durable memory
- `maintainer`: maintainer review, memory, planning, stakeholder summary, and auth helpers
- `full`: every repo-native skill
- `codexfly`: the recommended pack for this project, including reusable login helpers

The default project pack is defined in `.codex/project-pack`, so each repository can load the right grouped skills in one step.

## Skill groups
- `research`: discovery, framing, stakeholder context, and discoverability review
- `planning`: planning, architecture direction, and durable project state
- `development`: implementation support, UI work, security checks, and environment helpers
- `marketing`: discoverability, messaging, and stakeholder-facing summarization
- `project-management`: planning, memory, and execution coordination
- `operations`: server access, GitHub auth, and security-oriented maintenance

Groups are category-based. Packs are opinionated bundles for a specific project or workflow.

## Why this exists

Codexfly treats reusable skills as project infrastructure.

- Skills are versioned with the repository.
- Skill packs reduce prompt bloat by loading only the workflows a project needs.
- Helper commands make project setup repeatable across contributors and terminals.
- The same model-facing conventions can be reused across many repositories instead of being rewritten each time.

## Suggested usage
- `$brainstorm-spec` for feature discovery
- `$implementation-planner` for execution plans
- `$frontend-design` for UI direction
- `$seo-review` for GitHub discoverability, docs structure, and content review
- `$security-review` before merge or deploy
- `$project-memory` after major decisions
- `$stack-generator` for architecture choices
- `$ceo-review` for stakeholder updates
- `$server-login` for reusable SSH access workflows
- `$github-login` for reusable GitHub CLI auth workflows
