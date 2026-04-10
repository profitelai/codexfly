# Codexfly Global Instructions

Codexfly is a project-centric AI workspace for continuity across coding sessions, models, agents, and machines.

## Product priorities
- Preserve project memory across sessions
- Make research-before-coding a first-class workflow
- Prefer clear task orchestration over ad hoc agent behavior
- Keep UI cinematic but usable
- Avoid generic SaaS aesthetics

## Default workflow
1. Create or update a spec in `docs/specs/`
2. Create an implementation plan in `docs/plans/`
3. For web UX work, define UI direction before coding
4. Update `.codex/project-memory.md` after major decisions
5. Run security review before merge on auth, API, data, or deploy changes
6. Write executive summaries in `docs/executive-reviews/` when work affects roadmap or stakeholders

## Output conventions
- Specs: `docs/specs/<slug>.md`
- Plans: `docs/plans/<slug>.md`
- Executive reviews: `docs/executive-reviews/<slug>.md`
- Durable memory: `.codex/project-memory.md`
