# Adham AI Builder - Agent Catalog

32 specialized agents organized into 6 categories for building AI-powered micro-SaaS products.

## Quick Reference

| Category | Agents | Focus |
|----------|--------|-------|
| [01-core-development](./01-core-development/) | 6 | Web development with Next.js, React, APIs |
| [02-ai-specialists](./02-ai-specialists/) | 6 | AI/ML features, RAG, multi-agent systems |
| [03-business-strategy](./03-business-strategy/) | 7 | GTM, validation, monetization |
| [04-spec-driven](./04-spec-driven/) | 8 | Spec-Kit workflow for structured development |
| [05-quality-ops](./05-quality-ops/) | 3 | Testing, review, deployment |
| [06-meta-orchestration](./06-meta-orchestration/) | 2 | Smart routing, workflow coordination |

## Usage

### Smart Router (Recommended)
```bash
/adham [your request]
```
Auto-detects intent and routes to appropriate workflow.

### Spec-Driven Development (Features)
```bash
/adham build [feature description]
```
Triggers full spec-kit flow: specify → clarify → plan → tasks → implement

### Direct Agent Access
Use specific commands for quick tasks:
```bash
/component [name]    # react-developer
/api [endpoint]      # api-architect
/db [schema]         # database-architect
/test [target]       # testing-engineer
/review [code]       # code-reviewer
```

---

## Agent Categories

### 01 Core Development
Building blocks for web applications.

| Agent | Description |
|-------|-------------|
| `nextjs-developer` | Next.js 16 App Router, RSC, Server Actions |
| `react-developer` | React 19 patterns, hooks, state management |
| `fullstack-developer` | End-to-end database → API → frontend |
| `api-architect` | REST/GraphQL/tRPC design |
| `database-architect` | Drizzle ORM, PostgreSQL, migrations |
| `ui-designer` | shadcn/ui, Tailwind, accessibility |

### 02 AI Specialists
AI and machine learning capabilities.

| Agent | Description |
|-------|-------------|
| `ai-architect` | AI system design, model selection |
| `rag-engineer` | RAG pipelines, vector DBs, retrieval |
| `agent-builder` | Multi-agent systems (LangGraph, CrewAI) |
| `ai-integrator` | Model integration, SDK patterns |
| `chatbot-builder` | Conversational AI, streaming |
| `prompt-engineer` | Prompt optimization, evaluation |

### 03 Business Strategy
From idea to market.

| Agent | Description |
|-------|-------------|
| `idea-validator` | Market validation (David Andre framework) |
| `product-strategist` | Product roadmap, feature prioritization |
| `gtm-strategist` | Go-to-market planning |
| `growth-hacker` | User acquisition, SEO, conversion |
| `marketing-expert` | Marketing tactics, messaging |
| `monetization-advisor` | Pricing strategy, Stripe |
| `project-planner` | Task breakdown, milestones |

### 04 Spec-Driven (Spec-Kit)
Structured development workflow.

| Agent | Purpose | Output |
|-------|---------|--------|
| `speckit-constitution` | Project principles | `constitution.md` |
| `speckit-specify` | Feature specs | `spec.md` |
| `speckit-clarify` | Resolve ambiguities | Updated spec |
| `speckit-plan` | Technical planning | `plan.md` |
| `speckit-tasks` | Task breakdown | `tasks.md` |
| `speckit-analyze` | Consistency check | Analysis report |
| `speckit-checklist` | Quality validation | Checklists |
| `speckit-implement` | Execute tasks | Working code |

### 05 Quality Ops
Quality assurance and operations.

| Agent | Description |
|-------|-------------|
| `code-reviewer` | Security, performance review |
| `testing-engineer` | Vitest, Playwright tests |
| `devops-engineer` | CI/CD, Vercel deployment |

### 06 Meta Orchestration
Agent coordination.

| Agent | Description |
|-------|-------------|
| `adham-router` | Smart intent routing |
| `workflow-orchestrator` | Multi-agent workflows |

---

## Common Workflows

### New Feature
```
/adham build [feature]
  → speckit-specify
  → speckit-clarify (if needed)
  → speckit-plan
  → speckit-tasks
  → speckit-implement
  → testing-engineer
  → code-reviewer
```

### New AI Feature
```
/adham build AI [feature]
  → speckit-specify
  → speckit-plan + ai-architect
  → speckit-tasks
  → speckit-implement + rag-engineer/chatbot-builder
  → testing-engineer
```

### Launch Preparation
```
code-reviewer → testing-engineer → devops-engineer → gtm-strategist
```

### Idea Validation
```
idea-validator → product-strategist → project-planner
```
