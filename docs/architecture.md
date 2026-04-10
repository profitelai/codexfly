# Architecture

## High-Level System

Codexfly is organized around projects, not individual model chats.

Core layers:

1. Session ingestion
2. Structured project state
3. Distilled project memory
4. Agent orchestration
5. Usage and analytics
6. Mission-control UI
7. Repo-native skill packs and project loaders

## Core Entities

- Organization
- User
- Project
- Repository
- Session
- ModelRun
- AgentRun
- Task
- Decision
- Checkpoint
- UsageEvent
- ProjectMemory

## Memory Layers

### Raw events

Contains:

- prompts
- model outputs
- commands
- tool actions
- file edits
- logs
- timestamps

### Structured state

Contains:

- current goal
- completed tasks
- blockers
- key files
- decisions
- checkpoints
- outcomes

### Distilled project memory

Contains:

- compact project summary
- latest verified state
- unresolved items
- important constraints
- recommended next step

## Initial Modules

### `apps/web`

Mission-control UI, project launcher, session replay, analytics dashboard.

### `apps/api`

REST or RPC layer for projects, sessions, memory, and orchestration state.

### `apps/worker`

Background jobs for ingestion, summarization, scoring, and agent execution.

### `packages/session-ingest`

Parsers and normalizers for local and remote session logs.

### `packages/project-memory`

Structured memory generation, updates, and retrieval.

### `packages/prompt-intelligence`

Prompt comparisons, prompt improvement suggestions, and outcome analysis.

### `packages/agents`

Definitions and workflows for:

- Project Manager agent
- Research agent
- Codex execution agent
- Review agent
- Usage optimization agent

### `.codex/skills` and `.codex/packs`

Repo-native workflow modules and grouped skill packs that can be installed per project.

These should:

- keep reusable AI workflows versioned with the repo
- allow project-specific packs such as `core`, `maintainer`, or `codexfly`
- reduce prompt duplication across repositories and sessions
- support one-step skill installation per project terminal

### `packages/analytics`

Usage tracking, cost analysis, limit tracking, and efficiency scoring.

### `packages/ui`

Shared design system, primitives, dashboard components, and motion rules.
