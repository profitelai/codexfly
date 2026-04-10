# 🚀 Codexfly

Open-source AI workspace for coding agents, project memory, AGENTS.md workflows, and reusable skill packs.

Project standards and contributor workflow:

- [Contributing](./CONTRIBUTING.md)
- [Security Policy](./SECURITY.md)
- [Support](./SUPPORT.md)
- [Governance](./GOVERNANCE.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [License](./LICENSE)

# 🚀 Codexfly

**Codexfly is an orchestration layer for AI coding agents.**
It prepares the right project setup *before* code is generated.

Codexfly turns AI development into a **system**, not a series of disposable chats.

---

## ✨ Why Codexfly?

**Codexfly fixes this by deciding *how the project should be built first till the end*.**

It makes the repository the **source of truth for how AI operates**. 

---

## ⚙️ What it does

Given a project request, Codexfly:

* selects the right **project profile**
* determines the current **development stage**
* enables only the necessary **groups, skills, and helpers**
* avoids unnecessary complexity
* optionally uses AI for smarter onboarding (only when needed)

Then hands off to Codex (or other agents) for execution.

---

## 🧠 Example

### Input

> "Build an open-source CLI tool for deployments"

### Codexfly output

* **Profile:** codexfly-open-source
* **Stage:** development

**Groups enabled**

* version-control
* project-management

**Skills**

* github-login
* server-login

**Helpers**

* git workflows
* deployment helpers

👉 Result: Codex runs with the *right setup*, no wasted tokens.

---

## ⚡ Modes

### 🔹 Direct Mode (fast path)

Skip orchestration for simple tasks:

```bash
codexfly run --direct "fix this bug"
```

---

### 🔹 Onboarding Mode (full setup)

```bash
codexfly onboard "build SaaS backend"
```

---

## 🧩 Core Concepts

* **Profiles** → project types (open-source, private, corporate)
* **Stages** → development lifecycle phases
* **Groups** → bundles of related skills
* **Skills** → reusable AI workflows
* **Helpers** → executable commands
* **Project Mode** → repo-level defaults

---

## 📦 Project Configuration

Each repo defines its setup:

```
.codex/project-mode
```

Example:

```
PROJECT_VISIBILITY=open-source
PROJECT_DEFAULT_PROFILE=codexfly-open-source
PROJECT_DEFAULT_STAGE=development
PROJECT_EXTRA_GROUPS=project-management
```

---

## 🔁 Learning System (Project Memory)

Codexfly improves over time using:

```
.codex/project-memory.md
```

It tracks:

* onboarding decisions
* execution feedback
* missing capabilities

👉 This turns static setup into a **learning system**.

---

## 🚀 Getting Started

```bash
git clone https://github.com/profitelai/codexfly
cd codexfly

# Install default project setup
./.codex/install-skills.sh --project
```

---

## 🎯 What Codexfly enables

* consistent project onboarding
* reduced token usage
* better AI execution environments
* reusable workflows across repos
* continuity across sessions, agents, and models 

---

## 💸 Support Codexfly

Codexfly is building **open infrastructure for AI-powered development**.

If this direction matters to you, you can support development:

👉 Add your donation link or wallet here

Your support helps:

* improve onboarding intelligence
* build new reusable skills
* keep the system open and evolving

---

## 🛣 Roadmap

* [ ] onboarding CLI agent
* [ ] rule-based recommendation engine
* [ ] optional AI-assisted onboarding
* [ ] project memory feedback loop
* [ ] demo workflows and templates

---

## 🤝 Contributing

We’re building a modular system for developer workflows.

Contributions welcome:

* new skills
* new groups
* onboarding improvements
* real-world examples

---

## 📄 License

MIT

See CONTRIBUTING.md.
