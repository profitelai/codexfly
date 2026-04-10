---
name: implementation-planner
description: turn approved codexfly specs into execution plans. use when a codexfly spec needs milestones, file targets, dependencies, validation steps, and rollout order.
---

# Implementation Planner

Turn an approved Codexfly spec into an implementation plan.

## Instructions

1. Read the relevant spec from `docs/specs/` if available.
2. Map work to the current repo layout: `apps/web`, `apps/api`, `apps/worker`, `packages/agents`, `packages/analytics`, `packages/project-memory`, `packages/prompt-intelligence`, `packages/session-ingest`, and `packages/ui`.
3. Prefer milestone-based plans with concrete deliverables.
4. Include tests, observability, and rollback notes when relevant.
5. Write the output to `docs/plans/<slug>.md` when requested.

## Output sections

- Objective
- Scope
- Milestones
- File and package targets
- Dependencies
- Risks
- Validation checklist
- Rollout order
