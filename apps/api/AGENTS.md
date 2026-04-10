# API Instructions

When working in `apps/api`:

- Prefer explicit contracts and typed payloads
- Validate all external input
- Keep agent, session, analytics, and project-memory boundaries explicit
- Avoid leaking secrets or sensitive project data in logs
- Design for replayability and auditability where possible
