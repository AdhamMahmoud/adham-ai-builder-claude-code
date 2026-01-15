# Adham AI Builder

Complete Claude Code plugin for building micro SaaS AI products from idea to market with spec-driven development.

## Plugin Structure (v2.0)

```
agents/
├── 01-core-development/     # 6 agents: Next.js, React, APIs, DB, UI
├── 02-ai-specialists/       # 6 agents: AI architecture, RAG, agents, chatbots
├── 03-business-strategy/    # 7 agents: GTM, validation, monetization
├── 04-spec-driven/          # 8 agents: Spec-Kit workflow
├── 05-quality-ops/          # 3 agents: Testing, review, deployment
├── 06-meta-orchestration/   # 2 agents: Smart routing, workflow coordination
└── INDEX.md                 # Full agent catalog

skills/                      # 17 reference skills
commands/                    # 19 quick-access commands
```

See [agents/INDEX.md](./agents/INDEX.md) for the full agent catalog.

## Usage

### Smart Router (Recommended)
```bash
/adham [your request]
```
Auto-detects intent and routes to the best workflow. **For features and projects, automatically uses spec-kit flow** to save tokens and ensure quality.

**Examples:**
```bash
/adham build a user dashboard with charts    # → spec-kit flow
/adham create a RAG pipeline for document search  # → spec-kit flow
/adham validate my AI writing assistant idea  # → idea-validator
/adham optimize this prompt for better results  # → prompt-engineer
/adham review this PR for security issues  # → code-reviewer
```

---

## Spec-Driven Development (Spec-Kit)

**The core workflow for building features.** Spec-kit front-loads decisions to save tokens and prevent rework.

### Why Spec-Kit?

| Problem | Spec-Kit Solution |
|---------|-------------------|
| Endless clarifications | Max 5 targeted questions upfront |
| Scope creep | Constitution defines boundaries |
| Rework from misunderstanding | Spec reviewed before implementation |
| Lost context in long sessions | Artifacts persist in `.specify/` |
| Unstructured implementation | Tasks with dependencies and phases |

### The Flow

```
/adham build [feature]
        ↓
┌─────────────────────────────────────────────────────────────┐
│  1. Constitution    → Project principles (once per project) │
│  2. Specify         → Feature spec from description         │
│  3. Clarify         → Resolve ambiguities (max 5 questions) │
│  4. Plan            → Technical implementation plan         │
│  5. Tasks           → Dependency-ordered task breakdown     │
│  6. Analyze         → Consistency check (optional)          │
│  7. Implement       → Phase-by-phase execution              │
└─────────────────────────────────────────────────────────────┘
```

### Spec-Kit Agents

| Agent | Purpose | Output |
|-------|---------|--------|
| `speckit-constitution` | Project principles & constraints | `.specify/memory/constitution.md` |
| `speckit-specify` | Create spec from description | `.specify/specs/[feature]/spec.md` |
| `speckit-clarify` | Resolve ambiguities | Updated spec with answers |
| `speckit-plan` | Technical implementation plan | `plan.md`, `data-model.md`, `contracts/` |
| `speckit-tasks` | Task breakdown | `tasks.md` with phases |
| `speckit-analyze` | Consistency analysis | Report with coverage metrics |
| `speckit-checklist` | Requirement quality validation | `checklists/[domain].md` |
| `speckit-implement` | Execute implementation | Working code! |

### Directory Structure

```
.specify/
├── memory/
│   └── constitution.md     # Project principles
├── specs/
│   └── [feature-name]/
│       ├── spec.md         # Feature specification
│       ├── plan.md         # Implementation plan
│       ├── tasks.md        # Task breakdown
│       ├── research.md     # Technical decisions
│       ├── data-model.md   # Entity definitions
│       ├── contracts/      # API specifications
│       └── checklists/     # Quality checklists
└── templates/              # Reusable templates
```

### Example: Building User Auth

```bash
/adham build user authentication with Google OAuth

# Spec-kit automatically:
# 1. Creates spec with user stories (P1: login, P2: logout, P3: profile)
# 2. Asks max 5 clarifying questions
# 3. Generates technical plan with data model
# 4. Creates 15-20 ordered tasks
# 5. Implements phase by phase
```

**Generated spec.md:**
```markdown
## User Story 1 - Google OAuth Login (Priority: P1)

User can sign in using their Google account.

**Acceptance Scenarios**:
1. Given user is logged out, When they click "Sign in with Google",
   Then they are redirected to Google OAuth consent
2. Given user completes OAuth, When redirected back,
   Then they are logged in and see dashboard
```

**Generated tasks.md:**
```markdown
## Phase 1: Setup
- [ ] T001 Install next-auth and Google provider

## Phase 2: Foundational
- [ ] T002 Create auth configuration in auth.ts
- [ ] T003 [P] Add session provider to app layout

## Phase 3: User Story 1 - Login (P1)
- [ ] T004 [US1] Create users table with Drizzle
- [ ] T005 [US1] Implement Google OAuth callback
- [ ] T006 [US1] Add login button to header
```

---

## Development Commands

### /build - Full Feature Implementation
```bash
/build [feature description]
```
End-to-end implementation: database → API → frontend → tests.

**Examples:**
```bash
/build user authentication with Google OAuth
/build subscription billing with Stripe
/build real-time notifications system
/build admin dashboard with user management
```

### /component - React Component
```bash
/component [component name/description]
```
Creates React 19 component with TypeScript, hooks, and tests.

**Examples:**
```bash
/component pricing table with toggle for monthly/yearly
/component file upload with drag and drop
/component data table with sorting and pagination
/component modal dialog for confirmation
```

### /api - API Endpoint
```bash
/api [endpoint description]
```
Creates REST API route with validation, auth, and error handling.

**Examples:**
```bash
/api POST /users with email validation
/api GET /posts with pagination and filters
/api webhook handler for Stripe events
/api CRUD endpoints for projects resource
```

### /db - Database Operations
```bash
/db [operation description]
```
Drizzle schema, migrations, queries, and indexes.

**Examples:**
```bash
/db create users table with email and role
/db add posts table with user relationship
/db migration to add credits column
/db optimize query for user dashboard stats
```

### /test - Testing
```bash
/test [target]
```
Unit tests, integration tests, E2E with Vitest/Playwright.

**Examples:**
```bash
/test UserProfile component
/test /api/auth endpoints
/test checkout flow E2E
/test all services in lib/services
```

### /deploy - Deployment
```bash
/deploy [platform/config]
```
CI/CD, Docker, Vercel configuration.

**Examples:**
```bash
/deploy to Vercel with environment setup
/deploy Docker configuration for production
/deploy GitHub Actions CI/CD pipeline
/deploy database migration strategy
```

---

## AI Commands

### /ai - AI Feature
```bash
/ai [feature description]
```
Implements AI features with model selection and streaming.

**Examples:**
```bash
/ai chat interface with GPT-4 streaming
/ai content generation with Claude
/ai image analysis with Gemini Vision
/ai multi-model fallback system
```

### /rag - RAG Pipeline
```bash
/rag [description]
```
Document ingestion, embeddings, vector search, retrieval.

**Examples:**
```bash
/rag pipeline for PDF documentation
/rag with Pinecone and OpenAI embeddings
/rag hybrid search with keyword + semantic
/rag for company knowledge base
```

### /agent - Multi-Agent System
```bash
/agent [specification]
```
LangGraph, CrewAI, or custom agent orchestration.

**Examples:**
```bash
/agent research assistant with web search
/agent code review team with 3 specialists
/agent customer support with escalation
/agent data analysis pipeline
```

### /chatbot - Conversational AI
```bash
/chatbot [specification]
```
Chat UI, memory, context management, streaming.

**Examples:**
```bash
/chatbot for customer support with FAQ
/chatbot with conversation history
/chatbot using Flowise visual builder
/chatbot with tool calling capabilities
```

### /prompt - Prompt Engineering
```bash
/prompt [task/optimization]
```
Optimize prompts, add few-shot examples, evaluate.

**Examples:**
```bash
/prompt optimize for code generation accuracy
/prompt add few-shot examples for classification
/prompt evaluate with DeepEval metrics
/prompt A/B test these two variants
```

---

## Business Commands

### /idea - Validate SaaS Idea
```bash
/idea [concept description]
```
Market research, competition analysis, feasibility score.

**Examples:**
```bash
/idea AI-powered resume builder for developers
/idea meeting transcription tool for sales teams
/idea social media scheduler for solopreneurs
/idea code review bot for GitHub
```

**Output:** GO / NO-GO / PIVOT recommendation with TAM/SAM/SOM.

### /plan - Implementation Plan
```bash
/plan [project description]
```
Task breakdown, milestones, dependencies, timeline.

**Examples:**
```bash
/plan MVP for AI writing assistant
/plan add team collaboration features
/plan migrate from Firebase to Supabase
/plan implement multi-tenancy
```

### /launch - Go-to-Market
```bash
/launch [product]
```
Launch checklist, marketing channels, metrics.

**Examples:**
```bash
/launch my AI tool on Product Hunt
/launch strategy for developer tools
/launch B2B SaaS marketing plan
/launch content marketing roadmap
```

### /monetize - Pricing Strategy
```bash
/monetize [product]
```
Pricing tiers, Stripe setup, revenue optimization.

**Examples:**
```bash
/monetize freemium model for AI tool
/monetize usage-based pricing with credits
/monetize enterprise tier strategy
/monetize annual vs monthly pricing
```

---

## Utility Commands

### /review - Code Review
```bash
/review [file/PR/scope]
```
Security, performance, best practices audit.

**Examples:**
```bash
/review app/api/auth for security
/review PR #123
/review all database queries
/review React components for performance
```

### /debug - Debug Issues
```bash
/debug [issue description]
```
Root cause analysis, fix implementation, regression tests.

**Examples:**
```bash
/debug users getting 401 on dashboard
/debug memory leak in chat component
/debug slow API response times
/debug Stripe webhook not triggering
```

### /docs - Documentation
```bash
/docs [target]
```
README, API docs, architecture overview.

**Examples:**
```bash
/docs API endpoints
/docs project README
/docs component library
/docs deployment guide
```

---

## Skills Reference

Skills are automatically loaded by agents for context.

### AI Libraries
| Skill | Contents |
|-------|----------|
| `ai-frameworks` | LangChain, CrewAI, Google ADK, AutoGen comparison |
| `ai-sdks` | Vercel AI SDK, OpenAI, Anthropic, Groq patterns |
| `rag-tools` | LlamaIndex, Pinecone, Chroma, pgvector |
| `chatbot-tools` | Flowise, Langflow, Botpress, Rasa |
| `ai-evaluation` | DeepEval, RAGAS, Promptfoo metrics |
| `mcp-tools` | MCP server configurations |
| `llms-txt-directory` | 50+ documentation URLs |

### Tech Stack
| Skill | Contents |
|-------|----------|
| `nextjs-patterns` | App Router, RSC, caching, Turbopack |
| `react-patterns` | React 19 hooks, Suspense, Server Components |
| `database-patterns` | Drizzle ORM, PostgreSQL, migrations |
| `auth-patterns` | NextAuth v5, OAuth, RBAC |
| `billing-patterns` | Stripe, subscriptions, credits |
| `ui-library` | shadcn components, Radix, Tailwind |
| `animation-library` | Framer Motion, GSAP, React Spring |

### Business
| Skill | Contents |
|-------|----------|
| `micro-saas-ideas` | Profitable niches 2025-2026 |
| `gtm-playbook` | Launch strategies, channels |
| `pricing-models` | SaaS pricing, Stripe patterns |

---

## Model Tiers

| Tier | Model | Commands/Agents |
|------|-------|-----------------|
| **Opus** | Complex tasks | /adham, spec-kit agents, /build, /ai, /rag, /agent, /idea, /plan, /monetize |
| **Sonnet** | Standard tasks | /component, /api, /test, /review, /prompt, /chatbot |
| **Haiku** | Quick tasks | Simple lookups, formatting |

---

## Example Workflows

### Build a Micro SaaS from Scratch (with Spec-Kit)

```bash
# 1. Validate idea first
/idea AI-powered code review tool for small teams

# 2. Build with spec-kit (automatic flow)
/adham build GitHub OAuth authentication
# → Creates spec → Clarifies → Plans → Tasks → Implements

/adham build repository connection with webhooks
# → Spec-kit handles the full flow

/adham create AI code analysis feature with Claude
# → Spec-kit + ai-architect

/adham build review dashboard with diff viewer
# → Spec-kit + react-developer

# 3. Add billing
/monetize freemium with usage-based pricing
/adham build Stripe subscription integration
# → Spec-kit handles billing feature

# 4. Launch
/launch on Product Hunt and dev communities

# 5. Quick fixes (direct routing, no spec-kit)
/adham fix the slow review loading
/adham review security of webhook handler
```

### View Spec-Kit Artifacts

```bash
# After building features, check the specs
cat .specify/specs/github-auth/spec.md
cat .specify/specs/github-auth/tasks.md

# See what's been built
ls .specify/specs/
```

### Add AI Feature to Existing App

```bash
# 1. Build with spec-kit for full context
/adham build document Q&A feature with RAG
# → Creates comprehensive spec
# → Plans RAG architecture
# → Generates tasks for embeddings, vector DB, retrieval

# 2. Spec-kit generates these artifacts:
# .specify/specs/document-qa/
# ├── spec.md         (user stories, requirements)
# ├── plan.md         (RAG architecture decisions)
# ├── data-model.md   (documents, embeddings tables)
# ├── contracts/      (API endpoints)
# └── tasks.md        (ordered implementation)

# 3. Quick additions (direct routing)
/component chat UI with markdown support
/prompt optimize for accuracy
/test AI chat endpoints
```

### Manual Spec-Kit Flow (Advanced)

```bash
# Run each step manually for more control
/adham use speckit-constitution  # Set up project principles
/adham use speckit-specify build user profiles with avatars
/adham use speckit-clarify       # Answer clarification questions
/adham use speckit-plan          # Review technical plan
/adham use speckit-tasks         # Check task breakdown
/adham use speckit-analyze       # Verify consistency
/adham use speckit-implement     # Execute implementation
```

---

## Author

Adham Mahmoud - Senior Full-Stack Developer
