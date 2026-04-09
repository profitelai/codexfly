# Agents

## Project Manager Agent

The first core agent in Codexfly.

Responsibilities:

- understand the user request
- convert rough intent into structured tasks
- decide when research is needed
- generate stronger instructions for execution
- coordinate the flow between other agents

## Research Agent

Responsibilities:

- inspect repository context
- review relevant files
- summarize patterns and dependencies
- prepare research-first briefs before coding

## Codex Execution Agent

Responsibilities:

- execute implementation tasks against a repository
- capture outputs, diffs, and results
- update session state

## Review Agent

Responsibilities:

- inspect diffs and outputs
- summarize quality and risk
- identify likely regressions or incomplete work

## Usage Optimization Agent

Responsibilities:

- detect high-usage patterns
- identify waste and repetition
- recommend routing, memory, and prompt improvements
