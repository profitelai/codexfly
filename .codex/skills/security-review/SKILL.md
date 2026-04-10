---
name: security-review
description: review codexfly changes for auth, api, data, and deployment risks. use when codexfly code or architecture changes need a security-focused review before merge or release.
---

# Security Review

Perform a focused security review for Codexfly.

## Instructions

1. Prioritize auth, secrets, API surfaces, worker jobs, project-memory data, session ingestion, object storage, and analytics exposure.
2. Check for least-privilege concerns, unsafe defaults, missing validation, and sensitive logging.
3. Distinguish confirmed findings from speculative risks.
4. Recommend concrete mitigations.

## Output sections

- Summary
- Findings
- Severity
- Affected area
- Recommended fix
- Follow-up checks
