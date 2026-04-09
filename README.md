# Codexfly

Codexfly is an open-source AI project workspace for software teams that want continuity across coding sessions, models, agents, and machines.

Instead of treating AI work as disposable chat, Codexfly treats the project as the source of truth. It captures session history, builds persistent project memory, improves prompts over time, and helps agents research, plan, code, review, and optimize usage from one mission-control interface.

## Why Codexfly

Most AI coding tools are strong in a single session.
Real software work is not a single session.

Teams need:

- persistent project memory
- multi-model continuation
- replayable session history
- prompt improvement
- research-before-coding workflows
- cost and usage analytics
- task orchestration across agents

Codexfly is designed to solve that.

## Core Idea

Codexfly separates three layers of memory:

1. Raw session history
   prompts, model replies, commands, edits, logs, diffs
2. Structured project state
   decisions, tasks, blockers, relevant files, checkpoints
3. Distilled project memory
   a compact brief that any model or agent can continue from

This allows multiple models and agents to work on the same project without starting from scratch every time.

## Initial Product Direction

Codexfly is being built as:

- an AI project mission-control system
- a prompt intelligence and session analysis platform
- a multi-model workspace with shared project state
- a task-based orchestration layer for coding agents

## Design Direction

Codexfly should not feel like generic SaaS.

The intended UX direction is:

- simple on entry
- cinematic in depth
- clean enough for daily use
- visually alive without becoming noisy

The main dashboard should feel like a futuristic command center with:

- glass panels
- live progress states
- subtle particle and ripple motion
- animated task pipelines
- agent activity streams
- strong information hierarchy

The design must remain original. It can be inspired by cinematic sci-fi interfaces, but it should not copy protected movie UI assets or branding.

## Planned Features

- project memory across sessions and models
- local and remote session ingestion
- session replay and searchable history
- prompt intelligence and improvement suggestions
- research-first workflow before coding
- Project Manager agent
- Research agent
- Codex execution agent
- Review agent
- usage, limits, and cost analytics
- model handoff summaries
- mission-control dashboard

## First Agent

The first custom agent should be the `Project Manager Agent`.

Responsibilities:

- understand the user request
- break work into tasks
- decide when research is needed
- generate stronger execution prompts
- coordinate other agents
- keep project state up to date

## Recommended Stack

Frontend:

- Next.js
- React
- Tailwind CSS
- Framer Motion
- React Three Fiber for cinematic visual layers

Backend:

- Node.js service layer
- PostgreSQL
- Redis or a queue system
- object storage for logs and artifacts

## Repository Layout

```text
codexfly/
├─ apps/
│  ├─ web/
│  ├─ api/
│  └─ worker/
├─ packages/
│  ├─ agents/
│  ├─ analytics/
│  ├─ project-memory/
│  ├─ prompt-intelligence/
│  ├─ session-ingest/
│  └─ ui/
├─ docs/
├─ examples/
├─ scripts/
└─ .github/
```

## Current Status

This repository is in early open-source setup.

The first public milestone is to establish:

- product vision
- architecture
- roadmap
- contribution model
- community files
- initial application scaffolding

## Contributing

Contributions are welcome across:

- frontend and motion design
- agent workflows
- session ingestion
- prompt analysis
- backend architecture
- observability and analytics
- documentation

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

This project is licensed under the MIT License.
