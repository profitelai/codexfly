Codexfly

An open-source AI operating system for real software projects.

Project standards and contributor workflow:

- [Contributing](./CONTRIBUTING.md)
- [Security Policy](./SECURITY.md)
- [Support](./SUPPORT.md)
- [Governance](./GOVERNANCE.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [License](./LICENSE)

Codexfly is an AI development system for teams that want continuity across coding sessions, models, agents, and machines.

Instead of treating AI work as disposable chat, Codexfly makes the repository the source of truth for how AI operates.

It brings together:

persistent project memory
repo-native skills (reusable AI workflows)
directory-aware instructions (AGENTS.md)
multi-model continuation
replayable session history
agent orchestration
multi-user collaboration
controlled terminal execution

into a single mission-control system.

Why Codexfly

Most AI coding tools are optimized for a single conversation.

Real software development is not.

Work spans:

multiple sessions
multiple contributors
multiple models
evolving decisions over time

Teams need a system that can:

preserve context across sessions and people
give agents the right instructions in the right part of the repo
standardize workflows like spec → plan → build → review
accumulate memory instead of rebuilding it
switch models without losing continuity

Codexfly is designed for that.

Core Idea

Codexfly treats AI development as a system with three layers of continuity:

1. Raw session history

Prompts, replies, commands, edits, logs, and diffs

2. Structured project state

Decisions, tasks, blockers, relevant files, and checkpoints

3. Distilled project memory

A compact, continuously updated brief that any model or agent can continue from

This allows work to continue across sessions, contributors, and models without starting over.

The Codexfly Operating Model

Codexfly makes AI behavior part of the repository itself.

Skills (workflow modules)

Reusable workflows stored in the repo:

brainstorm-spec
implementation-planner
frontend-design
security-review
project-memory
stack-generator
ceo-review

These act like installable capabilities, but are version-controlled with your codebase.

AGENTS.md (directory intelligence)

Instructions live alongside the code:

root → product rules
apps/web → frontend conventions
apps/api → backend and data rules
packages/* → system-level guidance

AI behavior adapts based on where it is in the repository.

Project Memory

A shared, durable memory file:

.codex/project-memory.md

Stores:

key decisions
architecture
active work
open questions

Any model or agent can resume work instantly using this shared context.

How It Works

A typical workflow in Codexfly:

Turn an idea into a spec using brainstorm-spec
Turn the spec into a plan with implementation-planner
Apply directory-specific guidance via AGENTS.md
Build with shared memory and model continuity
Run security-review before merge
Generate summaries with ceo-review

The result is a workflow that compounds context instead of losing it.

🧠 Mission Control Dashboard

The Codexfly dashboard is the central interface for managing projects, agents, memory, and execution.

It is not a static UI — it is a live operational view of the project.

What the Dashboard Shows
1. Project State
active tasks
current milestone
blockers and dependencies
recent decisions
linked specs and plans

Reflects the structured project state layer.

2. Agent Activity
active agents (Project Manager, Research, Execution, Review)
current tasks per agent
agent handoffs and transitions
status: running, waiting, blocked, completed

Shows how work is coordinated in real time.

3. Terminal & Execution
active terminal sessions
recent commands and outputs
current repo, branch, and environment
execution history and logs
approval requests for risky actions

Connects AI decisions to actual system execution.

4. Project Memory
latest distilled project memory
updates to .codex/project-memory.md
memory diffs over time
key decisions and open questions

Ensures continuity across sessions and contributors.

Dashboard Capabilities

Users can:

start and stop agent workflows
inspect and approve commands before execution
jump between memory, specs, code, and terminal
switch models without losing context
replay sessions step-by-step
trigger skills directly
Design Philosophy

The dashboard should feel like a mission control system, not a dashboard.

It should be:

minimal at first glance
information-dense when expanded
animated to reflect real activity
structured around workflows

Key elements:

live task pipelines
agent activity streams
execution timelines
subtle, meaningful motion
Why the Dashboard Matters

Most AI tools show outputs.

Codexfly shows:

state
process
execution

This allows teams to:

understand what is happening
intervene when needed
trust automation
collaborate across users and sessions
Authentication, Accounts, and Runtime

Codexfly separates identity, provider access, and execution.

Codexfly Accounts
email / Google / GitHub login
team workspaces
roles (owner, admin, member)
project permissions
audit history
Connected AI Accounts

Each user connects their own:

OpenAI / Codex
API keys
future providers

This ensures:

no shared credentials
clear attribution
accurate usage tracking
safe collaboration
Terminal Runtime
Local runtime (v1)
runs on user machine
secure local agent
full control
Remote runtime (future)
containerized execution
reproducible environments
shared team runtime
Safe Execution Model

Every command:

proposed by agent
validated by Codexfly
executed in controlled runtime
logged and tracked
optionally approved

Tracked data includes:

user
workspace
project
model
runtime
command history
cost
Initial Product Direction

Codexfly is being built as:

an AI project mission-control system
a repo-native workflow engine
a prompt intelligence platform
a multi-model workspace
a task orchestration layer
First Agent: Project Manager

Responsibilities:

understand user intent
break work into tasks
decide when research is needed
generate better prompts
coordinate agents
maintain project state
Planned Features
project memory across sessions
session replay and search
prompt intelligence
research-first workflows
repo-native skills
AGENTS.md behavior
multi-agent system
cost analytics
model handoffs
mission-control dashboard
Design Direction

The interface should be:

simple on entry
cinematic in depth
clean for daily use
visually alive without noise

Mission control should feel like a living system.

Recommended Stack
Frontend
Next.js
React
Tailwind
Framer Motion
React Three Fiber
Backend
Node.js
PostgreSQL
Redis / queue
object storage
What Makes Codexfly Different

Codexfly makes AI part of the project itself.

workflows = skills
instructions = code
memory = persistent
execution = controlled

This turns AI into part of your development system.

Who Codexfly Is For

Teams that:

use multiple AI tools
need continuity across sessions
want project-specific workflows
want repo-defined AI behavior
need safe multi-user execution
Current Status

Early open-source development.

Current focus:

product vision
architecture
repo-native workflows
scaffolding
contributors

Goal: reach public alpha.

Contributing

Contributions welcome in:

frontend / motion
agents
skills
ingestion
prompt intelligence
backend
analytics
docs

See CONTRIBUTING.md.
