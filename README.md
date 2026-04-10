Codexfly

Codexfly is an open-source AI development system for software teams that want continuity across coding sessions, models, agents, and machines.

Instead of treating AI work as disposable chat, Codexfly makes the repository the source of truth for how AI operates.

It combines:

persistent project memory
repo-native skills (reusable AI workflows)
directory-scoped instructions (AGENTS.md)
multi-model continuation
replayable session history
agent orchestration

into a single mission-control interface.

Why Codexfly

Most AI coding tools are optimized for a single session.

Real software development is not.

Teams need:

continuity across sessions and contributors
shared project understanding between humans and agents
consistent workflows for spec → plan → build → review
memory that evolves with the codebase
the ability to switch models without losing context

Codexfly is designed for that.

Core Idea

Codexfly treats the project as a living system with three layers:

1. Raw session history

Prompts, model replies, commands, edits, logs, diffs

2. Structured project state

Decisions, tasks, blockers, relevant files, checkpoints

3. Distilled project memory

A compact, continuously updated brief any model or agent can continue from

Repo-Native AI Workflow (New 🔥)

Codexfly introduces a repo-native AI operating model:

Skills (workflow modules)

Reusable AI workflows stored in the repo:

brainstorm-spec
implementation-planner
frontend-design
security-review
project-memory
stack-generator
ceo-review

These act like installable capabilities, but are version-controlled with your codebase.

AGENTS.md (directory intelligence)

Instructions stored alongside code:

root → product rules
apps/web → frontend rules
apps/api → backend rules
packages/* → system-level conventions

AI behavior changes based on where it is in the repo.

Project Memory

A shared, durable memory file:

.codex/project-memory.md

Stores:

decisions
architecture
active work
open questions

This allows any model or agent to resume work instantly.

Initial Product Direction

Codexfly is being built as:

an AI project mission-control system
a repo-native skill system for development workflows
a prompt intelligence and session analysis platform
a multi-model workspace with shared project state
a task-based orchestration layer for coding agents
Design Direction

Codexfly should not feel like generic SaaS.

The intended UX:

simple on entry
cinematic in depth
clean enough for daily use
visually alive without noise

Mission control should feel like a living system, not a dashboard.

Planned Features
project memory across sessions and models
local and remote session ingestion
session replay and searchable history
prompt intelligence and improvement suggestions
research-first workflows before coding
repo-native skills and workflow automation
directory-aware AI behavior via AGENTS.md
Project Manager agent
Research agent
Codex execution agent
Review agent
usage, limits, and cost analytics
model handoff summaries
mission-control dashboard
First Agent: Project Manager

Responsibilities:

understand user intent
break work into tasks
decide when research is needed
generate stronger execution prompts
coordinate agents
maintain project state and memory
Recommended Stack

Frontend:

Next.js
React
Tailwind CSS
Framer Motion
React Three Fiber

Backend:

Node.js
PostgreSQL
Redis / queue system
object storage for logs and artifacts
What Makes Codexfly Different

Codexfly combines:

Claude-style workflow modules (skills)
Cursor-style repo ownership (rules in code)
Windsurf-style directory intelligence (AGENTS.md)

But makes them project-specific and version-controlled.

This turns AI from a tool into part of your development system.

Current Status

This repository is in early open-source setup.

The first milestone:

define product vision
establish architecture
create repo-native AI workflow
build initial scaffolding
onboard contributors
Contributing

Contributions are welcome across:

frontend and motion design
agent workflows
repo-native skill design
session ingestion
prompt intelligence
backend architecture
analytics and observability
documentation

See CONTRIBUTING.md.
