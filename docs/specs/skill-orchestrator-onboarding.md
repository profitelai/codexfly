# Skill Orchestrator Onboarding

## Summary

Codexfly should add an onboarding agent flow that analyzes a project request and recommends the right project profile, stage groups, reusable skills, helper commands, and missing workflow modules before build work starts.

The goal is to avoid loading every skill by default, while still making common capabilities such as version-control and deployment workflows easy to include when the project clearly needs them.

## Problem

Codexfly now has skills, packs, groups, and profiles, but it still depends on a user or operator to decide:

- which skills should load for a new project
- whether a request should reuse an existing skill or create a new one
- when open-source discoverability skills are needed
- when a private or corporate project should avoid public-growth workflows
- whether the project should proceed with a lightweight direct build instead of introducing more skill complexity

This decision logic is currently manual.

For larger projects, manual selection will create:

- wasted tokens from loading too many skills
- missed workflows from loading too few skills
- inconsistent onboarding across projects
- poor fit between project type and skill configuration

## Target user

- Codexfly maintainers
- project owners onboarding a new repository
- operators setting up a new client, product, internal tool, or open-source initiative
- future Codexfly project-manager agents that need to prepare work before coding starts

## Goals

- Determine the best initial profile, groups, and skills for a project during onboarding.
- Support different defaults for open-source, private-product, and corporate-product projects.
- Allow optional OpenAI-backed analysis during onboarding when deeper classification or recommendation quality is needed.
- Recommend when to reuse an existing skill, when to add a new group, and when not to introduce a skill at all.
- Produce a clear execution flow that can be handed off to Codex for implementation work.
- Keep the system plugin-like and on-demand so only needed capabilities are activated per project.

## Non-goals

- Requiring OpenAI API access for every Codexfly project action.
- Automatically generating and merging production code without user review.
- Replacing Codex as the execution agent.
- Loading all skills by default for every repository.
- Solving general business strategy outside project onboarding and workflow design.

## User flow

1. A user starts onboarding for a repository or a new project request.
2. Codexfly asks for structured onboarding input:
   - project type
   - public or private
   - product stage
   - primary task types
   - expected integrations
   - recurring operational needs
3. The onboarding orchestrator classifies the request.
4. It chooses:
   - a recommended project profile
   - the active development stage
   - the groups to load now
   - default helper commands to install
   - optional missing skills or groups to create
5. If the request is complex or ambiguous and the user has configured an OpenAI API key, Codexfly can run a deeper one-time analysis during onboarding only.
6. Codexfly outputs:
   - the recommended skill setup
   - the reasoning
   - the project flow breakdown
   - suggested next implementation tasks
7. Codex then continues the actual build using that setup.

## Requirements

### Product requirements

- Codexfly must support a dedicated onboarding orchestration step before coding.
- The onboarding result must explicitly separate:
  - profile recommendation
  - stage recommendation
  - group recommendation
  - direct skill recommendation
  - helper command recommendation
- The system must understand at least:
  - open-source
  - private-product
  - corporate-product
- The onboarding result must include a decision on whether the task should:
  - reuse current skills
  - add a new skill
  - add a new group
  - proceed without any new skill

### Technical requirements

- Add a project onboarding config file that stores the chosen profile, active stage, enabled groups, and enabled helpers.
- Support plugin-like loading so a project can activate only the required modules for the current terminal or workspace.
- Add a recommendation engine interface that can run:
  - rule-based classification by default
  - optional OpenAI-assisted analysis when configured
- Make OpenAI-assisted analysis opt-in and restricted to onboarding or explicit planning requests.
- Preserve a stable handoff to Codex so Codex remains the implementation executor.

### Default behavior requirements

- Commonly reused workflows should be easy to enable by default for relevant project types.
- Git operations should remain a baseline capability.
- Deployment-related capabilities should be included by default only for project types that clearly need deployment workflows.
- Public-growth workflows should not automatically load for private or corporate repos unless explicitly requested.

## Constraints

- The system must remain usable without an OpenAI API key.
- OpenAI API usage should be limited to onboarding and explicit strategic planning moments, not routine coding turns.
- The orchestration result should be deterministic enough to inspect and edit manually.
- Skill and group loading must stay compatible with Codex's existing flat skill discovery model.
- The design must support future plugin-style modules that can be turned on per project or per terminal.

## Risks

- Over-automation may produce too many suggested skills for simple projects.
- Under-automation may fail to recommend useful reusable workflows.
- OpenAI-assisted analysis may become costly if invoked too often.
- Profile and group logic could become hard to reason about without a clear config model.
- Mixing public-growth recommendations into private or corporate contexts could reduce trust in onboarding quality.

## Open questions

- What exact config file should represent the chosen onboarding state for a project?
- Should the onboarding engine update recommendations as the project evolves or only at setup time?
- Which helpers should be baseline across most projects beyond git-related workflows?
- Should deployment become a dedicated first-party skill/group before making it a default recommendation?
- Should the onboarding system write suggested new skills/groups into a proposal file before generating them?

## Recommended next steps

1. Add a project onboarding spec file and implementation plan.
2. Introduce stage-aware and profile-aware project config files.
3. Build a rule-based recommendation engine first.
4. Add optional OpenAI-assisted onboarding analysis behind explicit config.
5. Add a proposal output format for new skills, groups, and helpers.
6. Add a small UI or CLI entry point that produces a project setup recommendation before implementation work begins.
