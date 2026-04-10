# Worker Instructions

When working in `apps/worker`:

- Make jobs idempotent where practical
- Treat retries, dead-letter handling, and observability as first-class concerns
- Keep project-memory updates and session ingestion work traceable
- Document event shapes and failure states
