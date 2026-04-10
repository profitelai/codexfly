# Skill Orchestrator Onboarding Plan

## Objective

Implement a project onboarding orchestration layer that recommends and applies the right Codexfly profiles, groups, skills, and helpers before build work starts, with optional OpenAI-assisted analysis only during onboarding.

## Scope

In scope:

- project onboarding config model
- rule-based recommendation engine
- stage selection and profile selection
- skill/group/helper recommendation output
- optional OpenAI-assisted onboarding analysis interface
- CLI or script entry point
- handoff output for Codex execution

Out of scope for first pass:

- full mission-control UI
- autonomous code generation from onboarding output
- broad always-on OpenAI inference throughout all sessions
- dynamic runtime plugin marketplace

## Milestones

### Milestone 1: Config model and file layout

Deliverables:

- define project onboarding config files
- define recommendation output schema
- define helper/module enablement format
- document profile and stage resolution order

Suggested file targets:

- `.codex/project-profile`
- `.codex/project-stage`
- `.codex/project-groups`
- `docs/specs/`
- `docs/plans/`

### Milestone 2: Rule-based onboarding recommender

Deliverables:

- create a CLI or helper script that accepts onboarding inputs
- recommend:
  - profile
  - stage
  - groups
  - direct skills
  - helpers
  - new skill/group proposals
- write recommendation artifacts into the repo

Suggested file targets:

- `.codex/bin/`
- `packages/agents/` or future orchestration package
- `packages/project-memory/` for durable onboarding facts

### Milestone 3: OpenAI-assisted onboarding analysis

Deliverables:

- add optional configuration for OpenAI API key usage
- restrict usage to onboarding and explicit planning requests
- generate richer recommendation reasoning from the onboarding input
- preserve a clear fallback to rule-based mode when no key exists

Suggested file targets:

- `apps/api/` for future service integration
- `apps/worker/` for asynchronous analysis jobs
- `packages/agents/` for recommendation logic

### Milestone 4: Codex handoff and execution integration

Deliverables:

- generate a Codex-ready handoff document
- apply chosen profile/groups/helpers automatically
- identify when no extra skill should be added
- identify when a reusable skill or group should be proposed

Suggested file targets:

- `.codex/bin/`
- `.codex/project-memory.md`
- `docs/specs/`
- `docs/plans/`

## File and package targets

- [docs/specs/skill-orchestrator-onboarding.md](/Users/danimaster/codexfly/docs/specs/skill-orchestrator-onboarding.md)
- [docs/plans/skill-orchestrator-onboarding.md](/Users/danimaster/codexfly/docs/plans/skill-orchestrator-onboarding.md)
- [README.md](/Users/danimaster/codexfly/README.md)
- [.codex/README.md](/Users/danimaster/codexfly/.codex/README.md)
- future `.codex/bin/project-onboard`
- future `packages/agents/`
- future `packages/project-memory/`
- future `apps/api/`
- future `apps/worker/`

## Dependencies

- current skill, group, pack, and profile loader system
- project profile and project group conventions
- project memory conventions in `.codex/project-memory.md`
- future OpenAI API configuration handling

## Risks

- recommendation quality may be too rigid if the rule engine is too simple
- onboarding may become too expensive if OpenAI-assisted analysis is overused
- plugin-style modules may drift from the current repo-native skill model
- helpers may be recommended before a supporting skill exists

## Validation checklist

- confirm project onboarding works without OpenAI API access
- confirm OpenAI-assisted mode only runs when configured and explicitly allowed
- confirm the output selects different defaults for open-source, private-product, and corporate-product repos
- confirm the result can choose “no new skill needed”
- confirm the result can recommend a new skill or group proposal when justified
- confirm helper installation remains deterministic and inspectable

## Rollout order

1. Land the spec and plan.
2. Implement rule-based onboarding recommendations.
3. Add project onboarding config files and recommendation artifacts.
4. Add optional OpenAI-assisted enrichment behind config.
5. Add Codex handoff integration.
6. Add UI support after the CLI flow proves useful.
