# Knowledge Architecture

Complete mapping of agents, skills, and llms.txt files into a unified knowledge system.

## 🏗️ Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    USER REQUEST                              │
│              (via /adham or /command)                        │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
         ┌───────────────────────────┐
         │    ADHAM ROUTER AGENT     │
         │  (Smart Intent Routing)   │
         └────────┬─────────┬────────┘
                  │         │
        ┌─────────┘         └──────────┐
        ▼                               ▼
┌──────────────────┐          ┌──────────────────┐
│  SPEC-KIT FLOW   │          │  DIRECT ROUTING  │
│  (Complex Tasks) │          │  (Quick Tasks)   │
└────────┬─────────┘          └────────┬─────────┘
         │                             │
         └──────────────┬──────────────┘
                        ▼
         ┌──────────────────────────────┐
         │    SPECIALIZED AGENTS        │
         │  (by category)               │
         ├──────────────────────────────┤
         │ ✓ Core Development           │
         │ ✓ AI Specialists             │
         │ ✓ Business Strategy           │
         │ ✓ Quality & Ops               │
         └────────┬────────┬────────┬────┘
                  │        │        │
    ┌─────────────┘        │        └──────────────┐
    ▼                      ▼                       ▼
┌─────────┐         ┌──────────┐           ┌──────────┐
│  SKILLS │         │  AGENTS  │           │ LLMs.txt │
│         │         │          │           │  FILES   │
│ - Auth  │◄────────┤ Context  ├──────────►│ Official │
│ - DB    │         │ & Facts  │           │  Docs    │
│ - UI    │         │          │           │ (4.4 MB) │
│ - AI    │         └──────────┘           │          │
│ - etc   │                                └──────────┘
└─────────┘
    ▲
    │
    │ (Reference)
    │
┌─────────────────────────────────────────┐
│      AGENT TOOLKIT                      │
├─────────────────────────────────────────┤
│ - Read, Write, Edit (File ops)          │
│ - Glob, Grep (Search)                   │
│ - Bash (Execute)                        │
│ - Task (Sub-agents)                     │
│ - WebFetch, WebSearch (External)        │
└─────────────────────────────────────────┘
```

---

## 📋 Agent ↔ Skills ↔ LLMs.txt Mapping

### 01-CORE-DEVELOPMENT

#### nextjs-developer
**Skills Used**:
- `nextjs-patterns` - App Router, RSC, Server Actions
- `react-patterns` - React 19 patterns
- `database-patterns` - Database integration

**LLMs.txt Files**:
- `frontend-ui/nextjs.txt` (2.9 MB) - Complete API reference
- `frontend-ui/shadcn-ui.txt` (12 KB) - Component patterns
- `backend-api-db/drizzle-orm.txt` (20 KB) - Database layer

**Role**: Implements full Next.js applications with server/client components

---

#### react-developer
**Skills Used**:
- `react-patterns` - Hooks, Server Components
- `animation-library` - Framer Motion, GSAP
- `ui-library` - shadcn/ui, Radix

**LLMs.txt Files**:
- `frontend-ui/nextjs.txt` - React patterns section
- `frontend-ui/shadcn-ui.txt` - Component examples
- `frontend-ui/magicui.txt` - Animation patterns
- `frontend-ui/aceternity.txt` - Advanced UI

**Role**: Creates reusable React components and custom hooks

---

#### fullstack-developer
**Skills Used**:
- All database-patterns skills
- All frontend patterns
- `auth-patterns` - Authentication
- `billing-patterns` - Payment integration

**LLMs.txt Files**:
- `backend-api-db/prisma.txt` (72 KB) - ORM patterns
- `backend-api-db/drizzle-orm.txt` (20 KB) - Alternative ORM
- `backend-api-db/pinecone.txt` (52 KB) - Vector DB
- `auth/auth0.txt` (712 KB) - Auth integration
- `auth/clerk.txt` (208 KB) - Alternative auth
- `frontend-ui/nextjs.txt` - Full stack reference

**Role**: End-to-end implementation across all layers

---

#### api-architect
**Skills Used**:
- `database-patterns` - Data models
- `auth-patterns` - API security
- API design best practices

**LLMs.txt Files**:
- `backend-api-db/hono.txt` (8 KB) - Lightweight API framework
- `backend-api-db/pinecone.txt` - Vector search APIs
- `ai-llm-orchestration/openai.txt` (20 KB) - LLM API design

**Role**: Designs REST/GraphQL APIs with proper contracts

---

#### database-architect
**Skills Used**:
- `database-patterns` - Drizzle, PostgreSQL

**LLMs.txt Files**:
- `backend-api-db/prisma.txt` (72 KB) - Schema design
- `backend-api-db/drizzle-orm.txt` (20 KB) - ORM queries
- `backend-api-db/pinecone.txt` (52 KB) - Vector indexing

**Role**: Database schema design and optimization

---

#### ui-designer
**Skills Used**:
- `ui-library` - shadcn/ui, Radix
- `animation-library` - Animations
- Tailwind CSS patterns

**LLMs.txt Files**:
- `frontend-ui/shadcn-ui.txt` (12 KB) - Component library
- `frontend-ui/magicui.txt` (28 KB) - Advanced UI
- `frontend-ui/aceternity.txt` (16 KB) - Premium components

**Role**: Beautiful, accessible UI components

---

### 02-AI-SPECIALISTS

#### ai-architect
**Skills Used**:
- `ai-frameworks` - LangChain, LangGraph
- `ai-sdks` - Vercel AI SDK, OpenAI

**LLMs.txt Files**:
- `ai-llm-orchestration/openai.txt` (20 KB) - Model selection
- `ai-agents-frameworks/crewai.txt` (40 KB) - Agent architecture
- `ai-agents-frameworks/pydantic-ai.txt` (12 KB) - Type-safe agents

**Role**: AI system design and orchestration

---

#### rag-engineer
**Skills Used**:
- `rag-tools` - Vector DBs, chunking
- `database-patterns` - Data storage

**LLMs.txt Files**:
- `backend-api-db/pinecone.txt` (52 KB) - Vector DB setup
- `ai-agents-frameworks/pydantic-ai.txt` - Retrieval patterns

**Role**: RAG pipelines and document search

---

#### agent-builder
**Skills Used**:
- `ai-frameworks` - LangGraph, CrewAI

**LLMs.txt Files**:
- `ai-agents-frameworks/crewai.txt` (40 KB) - Agent orchestration
- `ai-agents-frameworks/pydantic-ai.txt` (12 KB) - Agent patterns
- `ai-agents-frameworks/smolagents.txt` (4 KB) - Lightweight agents

**Role**: Multi-agent systems and workflows

---

#### ai-integrator
**Skills Used**:
- `ai-sdks` - Integration patterns
- `mcp-tools` - MCP servers

**LLMs.txt Files**:
- `ai-llm-orchestration/openai.txt` - API integration
- `ai-agents-frameworks/pydantic-ai.txt` - Type-safe integration

**Role**: Integrating AI into applications

---

#### chatbot-builder
**Skills Used**:
- `chatbot-tools` - Flowise, Langflow
- `ai-sdks` - Streaming patterns

**LLMs.txt Files**:
- `ai-agents-frameworks/crewai.txt` - Multi-turn dialogue
- `ai-llm-orchestration/openai.txt` - Chat API reference

**Role**: Conversational AI and chatbots

---

#### prompt-engineer
**Skills Used**:
- `ai-evaluation` - DeepEval, RAGAS

**LLMs.txt Files**:
- `ai-llm-orchestration/openai.txt` - Prompt best practices
- `ai-agents-frameworks/pydantic-ai.txt` - Structured outputs

**Role**: Prompt optimization and evaluation

---

### 03-BUSINESS-STRATEGY

#### idea-validator
**Skills Used**:
- `micro-saas-ideas` - Validation framework

**LLMs.txt Files**:
- (Domain knowledge focused)

**Role**: Market validation

---

#### product-strategist
**Skills Used**:
- (Product strategy knowledge)

**LLMs.txt Files**:
- (Architecture knowledge)

**Role**: Product roadmap

---

#### gtm-strategist
**Skills Used**:
- `gtm-playbook` - Launch strategy

**LLMs.txt Files**:
- (Strategic knowledge)

**Role**: Go-to-market planning

---

#### growth-hacker
**Skills Used**:
- (Growth strategies)

**LLMs.txt Files**:
- (Growth patterns)

**Role**: User acquisition

---

#### marketing-expert
**Skills Used**:
- (Marketing strategies)

**LLMs.txt Files**:
- (Domain knowledge)

**Role**: Marketing execution

---

#### monetization-advisor
**Skills Used**:
- `pricing-models` - SaaS pricing
- `billing-patterns` - Stripe integration

**LLMs.txt Files**:
- `auth/auth0.txt` - Enterprise features
- (Monetization patterns)

**Role**: Pricing strategy

---

#### project-planner
**Skills Used**:
- (Project management)

**LLMs.txt Files**:
- (Planning patterns)

**Role**: Task breakdown

---

### 04-SPEC-DRIVEN

#### speckit-constitution
**Skills Used**:
- (Architecture knowledge)

**LLMs.txt Files**:
- (All available for reference)

**Role**: Project principles

---

#### speckit-specify
**Skills Used**:
- (Requirements gathering)

**LLMs.txt Files**:
- (All available for context)

**Role**: Feature specifications

---

#### speckit-clarify
**Skills Used**:
- (Clarification patterns)

**LLMs.txt Files**:
- (Reference as needed)

**Role**: Ambiguity resolution

---

#### speckit-plan
**Skills Used**:
- All relevant skill areas

**LLMs.txt Files**:
- **ALL FILES** (comprehensive planning)

**Role**: Technical planning

---

#### speckit-tasks
**Skills Used**:
- (Task breakdown)

**LLMs.txt Files**:
- (Execution reference)

**Role**: Task breakdown

---

#### speckit-implement
**Skills Used**:
- (Execution knowledge)

**LLMs.txt Files**:
- **ALL FILES** (implementation reference)

**Role**: Code implementation

---

#### speckit-analyze
**Skills Used**:
- (Analysis patterns)

**LLMs.txt Files**:
- (Verification reference)

**Role**: Consistency check

---

#### speckit-checklist
**Skills Used**:
- (Quality validation)

**LLMs.txt Files**:
- (Best practices reference)

**Role**: Quality validation

---

### 05-QUALITY-OPS

#### code-reviewer
**Skills Used**:
- (Code quality patterns)

**LLMs.txt Files**:
- All development files (reference)

**Role**: Code quality audit

---

#### testing-engineer
**Skills Used**:
- (Testing frameworks)

**LLMs.txt Files**:
- `testing-observability/vitest.txt` (12 KB) - Unit testing

**Role**: Test implementation

---

#### devops-engineer
**Skills Used**:
- (DevOps patterns)

**LLMs.txt Files**:
- (Deployment reference)

**Role**: Deployment automation

---

### 06-META-ORCHESTRATION

#### adham-router
**Skills Used**:
- (Routing patterns)

**LLMs.txt Files**:
- (All available for context)

**Role**: Smart routing

---

#### workflow-orchestrator
**Skills Used**:
- (Orchestration patterns)

**LLMs.txt Files**:
- (All available for workflows)

**Role**: Multi-agent coordination

---

## 🎯 Knowledge Integration Pattern

### For Each Agent:

1. **Agent Definition** (`.md` file)
   - Role and responsibilities
   - Core patterns
   - Output format

2. **Relevant Skills** (automatically loaded)
   - Patterns specific to the agent's domain
   - Code examples
   - Best practices

3. **LLMs.txt Files** (context enrichment)
   - Official documentation
   - API references
   - Real-world examples

4. **Execution** (via Task tool)
   - Sub-agents for specialized work
   - Tool calls for operations
   - Result aggregation

### Example: fullstack-developer

```
User Request
    ↓
Adham Router detects "build user auth"
    ↓
Routes to speckit-specify
    ↓
Creates specification with user stories
    ↓
Routes to speckit-plan
    ↓
Plan loads relevant skills & llms.txt:
  - auth-patterns (skill)
  - nextjs patterns (skill)
  - auth0.txt (official docs)
  - clerk.txt (official docs)
    ↓
Generates implementation plan
    ↓
Routes to speckit-tasks
    ↓
Creates ordered tasks
    ↓
Routes to speckit-implement
    ↓
fullstack-developer executes
    ↓
Loads context:
  - database-patterns skill
  - auth-patterns skill
  - prisma.txt (official docs)
  - auth0.txt (official docs)
  - clerk.txt (official docs)
    ↓
Implements with official docs as reference
```

---

## 📊 Coverage Matrix

### Agents by Knowledge Source

```
AGENT                   SKILLS      LLMS.TXT    COVERAGE
─────────────────────────────────────────────────────────
nextjs-developer        ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐
react-developer         ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐
fullstack-developer     ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐
database-architect      ⭐⭐⭐⭐   ⭐⭐⭐⭐   ⭐⭐⭐⭐
api-architect           ⭐⭐⭐⭐   ⭐⭐⭐    ⭐⭐⭐⭐
ui-designer             ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐
─────────────────────────────────────────────────────────
ai-architect            ⭐⭐⭐⭐   ⭐⭐⭐    ⭐⭐⭐⭐
rag-engineer            ⭐⭐⭐⭐   ⭐⭐⭐    ⭐⭐⭐⭐
agent-builder           ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐⭐
ai-integrator           ⭐⭐⭐    ⭐⭐⭐    ⭐⭐⭐
chatbot-builder         ⭐⭐⭐⭐   ⭐⭐⭐    ⭐⭐⭐⭐
prompt-engineer         ⭐⭐⭐    ⭐⭐⭐    ⭐⭐⭐
─────────────────────────────────────────────────────────
code-reviewer           ⭐⭐⭐⭐   ⭐⭐⭐⭐   ⭐⭐⭐⭐
testing-engineer        ⭐⭐⭐⭐   ⭐⭐⭐    ⭐⭐⭐
devops-engineer         ⭐⭐⭐    ⭐⭐     ⭐⭐⭐
─────────────────────────────────────────────────────────
OVERALL SYSTEM          ⭐⭐⭐⭐⭐  ⭐⭐⭐⭐   ⭐⭐⭐⭐⭐
```

---

## 🔄 Data Flow Examples

### Example 1: Build User Dashboard

```
/adham build admin dashboard with charts
    ↓
adham-router → speckit-specify
    ↓
Spec references:
  - nextjs-patterns (skill)
  - ui-library (skill)
  - nextjs.txt (official docs)
  - shadcn-ui.txt (official docs)
    ↓
Creates spec.md
    ↓
adham-router → speckit-plan
    ↓
Plan references:
  - All above + database-patterns (skill)
  - prisma.txt, drizzle.txt (official docs)
    ↓
Creates plan.md
    ↓
adham-router → speckit-tasks
    ↓
Creates task breakdown
    ↓
adham-router → speckit-implement
    ↓
Invokes: nextjs-developer, database-architect, ui-designer
    ↓
Each agent loads:
  - Their relevant skills
  - Matching llms.txt files
  - Executes with official docs as reference
```

### Example 2: Add AI Feature

```
/adham build RAG for document search
    ↓
adham-router → speckit-specify
    ↓
Spec references:
  - ai-frameworks (skill)
  - openai.txt, crewai.txt (official docs)
    ↓
Spec created
    ↓
adham-router → speckit-plan
    ↓
Plan references:
  - All above
  - rag-tools (skill)
  - pinecone.txt (official docs)
    ↓
Plan created with RAG architecture
    ↓
adham-router → speckit-implement
    ↓
Invokes: rag-engineer, ai-architect, database-architect
    ↓
Each loads their knowledge sources
    ↓
Implementation with official docs
```

---

## 🚀 Activation Instructions

### For End Users

1. **Request with context**:
   ```
   /adham build Next.js dashboard with Prisma and Auth0
   ```

2. **System automatically**:
   - Routes to speckit-specify
   - Loads nextjs-patterns, database-patterns, auth-patterns skills
   - References nextjs.txt, prisma.txt, auth0.txt files
   - Creates comprehensive specification

3. **Throughout workflow**:
   - Each agent loads relevant skills and docs
   - All agents execute with rich context
   - Official documentation as ground truth

### For Developers

1. **Add new agent**:
   - Create agent in appropriate category
   - Reference relevant skills in agent definition
   - List llms.txt files that support the agent

2. **Update skills**:
   - Modify skill markdown files
   - Update agent references

3. **Add llms.txt files**:
   - Run `./llms-txt-library/download-all.sh`
   - Update KNOWLEDGE_ARCHITECTURE.md mapping

---

## 📈 System Capabilities

With this unified knowledge architecture:

✅ **Comprehensive Context**: Every agent has access to skills + official docs
✅ **Current Information**: llms.txt files keep knowledge up-to-date
✅ **Reliable References**: Official docs as ground truth
✅ **Efficient Routing**: Adham router matches requests to best agents
✅ **Spec-Driven Quality**: Spec-kit flow ensures comprehensive planning
✅ **Professional Output**: Rich knowledge foundation for high-quality results

---

## 🎓 Learning Resources

For understanding the architecture:
1. Read `agents/INDEX.md` - Agent catalog
2. Review `skills/INDEX.md` - Skills reference
3. Check `llms-txt-library/MANIFEST.md` - Documentation files
4. Study this file - Knowledge architecture

---

**Status**: ✅ Unified Knowledge Architecture Complete
**Date**: 2026-01-15
**Version**: 2.0
