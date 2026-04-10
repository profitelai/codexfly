# Codexfly Skills Pack

This starter pack adds repo-native skills, helper commands, stage-based skill groups, and project profiles for Codexfly.

## Install locally

```bash
./.codex/install-skills.sh
```

Install the current repo helpers too:

```bash
./.codex/install-skills.sh --project
```

Install the repo's default project pack:

```bash
./.codex/install-skills.sh --project
```

Show the repo's project metadata:

```bash
./.codex/bin/codex-skill-pack show-project
```

Install a specific skill pack:

```bash
./.codex/install-skills.sh --pack maintainer
```

Install a skill group:

```bash
./.codex/install-skills.sh --group research
```

Install a project profile:

```bash
./.codex/install-skills.sh --profile open-source
```

List available packs:

```bash
./.codex/install-skills.sh --list-packs
```

List available groups:

```bash
./.codex/install-skills.sh --list-groups
```

List available profiles:

```bash
./.codex/install-skills.sh --list-profiles
```

## Included skills
- brainstorm-spec
- implementation-planner
- frontend-design
- seo-review
- github-growth-review
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

The default project metadata is defined in `.codex/project-mode`, so each repository can declare:

- `PROJECT_VISIBILITY`
- `PROJECT_DEFAULT_PROFILE`
- `PROJECT_DEFAULT_STAGE`
- `PROJECT_EXTRA_GROUPS`

`project-profile` and `project-pack` remain supported as fallbacks.

## Skill groups
- `discovery`: problem framing, early direction, and opportunity analysis
- `research`: stakeholder context, exploratory review, and opportunity framing
- `planning`: architecture direction, implementation planning, and durable project state
- `design`: UI direction, content structure, and presentation clarity
- `development`: implementation support, security checks, and environment helpers
- `launch`: launch-readiness, repo positioning, and public-facing presentation
- `marketing`: discoverability, messaging, and stakeholder-facing summarization
- `project-management`: planning, memory, and execution coordination
- `maintenance`: ongoing review, security, and upkeep
- `operations`: server access, GitHub auth, and operational maintenance

Groups are category-based. Packs are opinionated bundles for a specific project or workflow.

## Project profiles
- `open-source`: best default for public repos that need discoverability, onboarding, and contributor growth
- `private-product`: focused on internal planning, implementation, and controlled execution
- `corporate-product`: stronger planning, stakeholder, governance, and operational workflow
- `codexfly-open-source`: the recommended profile for Codexfly itself

Profiles combine groups, packs, and direct skills to match a project type.

## Recommended development path

For open-source projects:

1. `discovery`
2. `research`
3. `planning`
4. `design`
5. `development`
6. `launch`
7. `maintenance`

For private product projects:

1. `planning`
2. `design`
3. `development`
4. `project-management`
5. `operations`

For corporate product projects:

1. `discovery`
2. `planning`
3. `design`
4. `development`
5. `project-management`
6. `operations`
7. stakeholder review via `ceo-review`

## Why this exists

Codexfly treats reusable skills as project infrastructure.

- Skills are versioned with the repository.
- Skill packs reduce prompt bloat by loading only the workflows a project needs.
- Helper commands make project setup repeatable across contributors and terminals.
- The same model-facing conventions can be reused across many repositories instead of being rewritten each time.

## Suggested usage
- `codex-project-onboard analyze "<request>"` for onboarding recommendations
- `codexfly run --direct "<task>"` for lightweight tasks that should skip onboarding
- `$brainstorm-spec` for feature discovery
- `$implementation-planner` for execution plans
- `$frontend-design` for UI direction
- `$seo-review` for GitHub discoverability, docs structure, and content review
- `$github-growth-review` for repo metadata, README conversion, stars/forks strategy, and open-source onboarding
- `$security-review` before merge or deploy
- `$project-memory` after major decisions
- `$stack-generator` for architecture choices
- `$ceo-review` for stakeholder updates
- `$server-login` for reusable SSH access workflows
- `$github-login` for reusable GitHub CLI auth workflows
