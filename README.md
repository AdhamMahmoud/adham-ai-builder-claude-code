# Adham AI Builder

Complete Claude Code plugin for building micro SaaS AI products from idea to market.

## Usage

### Smart Router (Recommended)
```bash
/adham [your request]
```
Auto-detects intent and routes to the best agent.

**Examples:**
```bash
/adham build a user dashboard with charts
/adham create a RAG pipeline for document search
/adham validate my AI writing assistant idea
/adham optimize this prompt for better results
/adham review this PR for security issues
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

| Tier | Model | Commands |
|------|-------|----------|
| **Opus** | Complex tasks | /build, /ai, /rag, /agent, /idea, /plan, /monetize |
| **Sonnet** | Standard tasks | /component, /api, /test, /review, /prompt, /chatbot |
| **Haiku** | Quick tasks | Simple lookups, formatting |

---

## Examples Workflow

### Build a Micro SaaS from Scratch

```bash
# 1. Validate idea
/idea AI-powered code review tool for small teams

# 2. Plan MVP
/plan MVP with GitHub integration and AI feedback

# 3. Build core features
/build GitHub OAuth authentication
/build repository connection and webhook
/ai code analysis with Claude API
/component review dashboard with diff viewer

# 4. Add billing
/monetize freemium with usage-based pricing
/build Stripe subscription integration

# 5. Launch
/launch on Product Hunt and dev communities

# 6. Iterate
/debug users reporting slow reviews
/review security of webhook handler
```

### Add AI Feature to Existing App

```bash
# 1. Design AI system
/ai architect document Q&A feature

# 2. Build RAG pipeline
/rag with Pinecone for user documents
/db add documents and embeddings tables

# 3. Create chat interface
/chatbot with streaming and history
/component chat UI with markdown support

# 4. Test and optimize
/prompt optimize for accuracy
/test AI chat endpoints
```

---

## Author

Adham Mahmoud - Senior Full-Stack Developer
