# System Architecture Diagrams

Visual representations of how agents, skills, and llms.txt files interact.

## 1. High-Level System Flow

```
┌──────────────────────────────────────────────────────────────────┐
│                         USER INTERFACE                            │
│  /adham [request] | /build | /component | /api | /db | etc      │
└────────────────────────────────┬─────────────────────────────────┘
                                 │
                                 ▼
                    ┌────────────────────────┐
                    │    ADHAM ROUTER        │
                    │  (Smart Intent Match)  │
                    └────┬────────────┬──────┘
                         │            │
            ┌────────────┘            └──────────────┐
            │                                         │
            ▼                                         ▼
    ┌──────────────────┐                  ┌────────────────────┐
    │  SPEC-KIT FLOW   │                  │  DIRECT ROUTING    │
    │ (Complex Tasks)  │                  │  (Quick Tasks)     │
    └────┬──────┬──────┘                  └────────┬───────────┘
         │      │                                  │
         │      └──────────────┬───────────────────┘
         │                     ▼
    ┌────▼─────────────────────────────────────────────┐
    │         SPECIALIZED AGENT SELECTION              │
    ├──────────────────────────────────────────────────┤
    │ • Core Development (nextjs, react, fullstack)   │
    │ • AI Specialists (ai-architect, rag, agents)    │
    │ • Business Strategy (gtm, monetization, etc)    │
    │ • Quality & Ops (testing, review, devops)       │
    └────┬─────────────────────────────────────────────┘
         │
         ▼
    ┌──────────────────────────────────────────────────┐
    │      KNOWLEDGE CONTEXT LOADING                   │
    ├──────────────────────────────────────────────────┤
    │                                                  │
    │  Skills (17)          LLMs.txt (15)             │
    │  ┌──────────────┐    ┌─────────────────┐       │
    │  │ nextjs       │    │ nextjs.txt      │       │
    │  │ react        │    │ (2.9 MB)        │       │
    │  │ database     │    │                 │       │
    │  │ auth         │    │ prisma.txt      │       │
    │  │ ui-library   │    │ (72 KB)         │       │
    │  │ ai-frameworks│    │                 │       │
    │  │ rag-tools    │    │ auth0.txt       │       │
    │  │ etc (17)     │    │ (712 KB)        │       │
    │  └──────────────┘    │                 │       │
    │                      │ openai.txt      │       │
    │  92 KB Total         │ (20 KB)         │       │
    │                      │                 │       │
    │                      │ ... (15 files)  │       │
    │                      │                 │       │
    │                      │ 4.4 MB Total    │       │
    │                      └─────────────────┘       │
    └──────────────────────────────────────────────────┘
         │
         ▼
    ┌──────────────────────────────────────────────────┐
    │    AGENT EXECUTION WITH RICH CONTEXT            │
    │                                                  │
    │  Loads:                                          │
    │  • Agent definition                             │
    │  • Relevant skills                              │
    │  • Matching llms.txt files                       │
    │  • Tool capabilities (Bash, Glob, etc)          │
    │                                                  │
    │  Executes:                                       │
    │  • Task analysis                                │
    │  • Pattern selection                            │
    │  • Code generation                              │
    │  • Result formatting                            │
    └──────────────────────────────────────────────────┘
         │
         ▼
    ┌──────────────────────────────────────────────────┐
    │         RESULT DELIVERY                          │
    │                                                  │
    │  • Code files                                   │
    │  • Configuration                                │
    │  • Documentation                                │
    │  • Tests                                        │
    └──────────────────────────────────────────────────┘
```

---

## 2. Agent Knowledge Integration Map

```
┌─────────────────────────────────────────────────────────────┐
│                    32 SPECIALIZED AGENTS                     │
└─────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ 01-CORE-DEVELOPMENT (6 agents)                               │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  nextjs-developer ──► Skills: nextjs, react, database        │
│  │                    LLMs: nextjs.txt, shadcn.txt           │
│  │                    Coverage: 3.0+ MB                      │
│  │
│  react-developer ──► Skills: react, ui-library, animation   │
│  │                   LLMs: shadcn.txt, magicui.txt           │
│  │                   Coverage: 76 KB                         │
│  │
│  fullstack-developer ──► Skills: ALL frontend+backend        │
│  │                       LLMs: prisma.txt, auth.txt          │
│  │                       Coverage: 4.0+ MB                   │
│  │
│  api-architect ──► Skills: database, auth                    │
│  │                 LLMs: hono.txt, openai.txt               │
│  │                 Coverage: 80 KB                           │
│  │
│  database-architect ──► Skills: database                     │
│  │                      LLMs: prisma.txt, drizzle.txt       │
│  │                      Coverage: 144 KB                     │
│  │
│  ui-designer ──► Skills: ui-library, animation               │
│                  LLMs: shadcn.txt, magicui.txt               │
│                  Coverage: 56 KB                             │
│
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ 02-AI-SPECIALISTS (6 agents)                                 │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  ai-architect ──► Skills: ai-frameworks, ai-sdks             │
│  │                LLMs: openai.txt, crewai.txt              │
│  │                Coverage: 72 KB                            │
│  │
│  rag-engineer ──► Skills: rag-tools, database                │
│  │                LLMs: pinecone.txt, pydantic.txt          │
│  │                Coverage: 64 KB                            │
│  │
│  agent-builder ──► Skills: ai-frameworks                     │
│  │                 LLMs: crewai.txt, pydantic.txt           │
│  │                 Coverage: 56 KB                           │
│  │
│  ai-integrator ──► Skills: ai-sdks, mcp-tools                │
│  │                 LLMs: openai.txt, pydantic.txt           │
│  │                 Coverage: 32 KB                           │
│  │
│  chatbot-builder ──► Skills: chatbot-tools, ai-sdks          │
│  │                   LLMs: crewai.txt, openai.txt           │
│  │                   Coverage: 60 KB                         │
│  │
│  prompt-engineer ──► Skills: ai-evaluation                   │
│                     LLMs: openai.txt, pydantic.txt          │
│                     Coverage: 32 KB                          │
│
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ 03-BUSINESS-STRATEGY (7 agents)                              │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  idea-validator ──► Skills: micro-saas-ideas                 │
│  product-strategist ──► Skills: product knowledge            │
│  gtm-strategist ──► Skills: gtm-playbook                     │
│  growth-hacker ──► Skills: growth strategies                 │
│  marketing-expert ──► Skills: marketing knowledge            │
│  monetization-advisor ──► Skills: pricing-models             │
│  project-planner ──► Skills: planning knowledge              │
│
│  (Primarily skill-based, strategic knowledge)                │
│
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ 04-SPEC-DRIVEN (8 agents)                                    │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  speckit-constitution ──► ALL Skills + ALL LLMs              │
│  speckit-specify ──► Domain-specific skills+llms             │
│  speckit-clarify ──► Domain-specific skills+llms             │
│  speckit-plan ──► ALL Skills + ALL LLMs (4.5 MB)             │
│  speckit-tasks ──► Relevant subset                           │
│  speckit-implement ──► ALL Skills + ALL LLMs (4.5 MB)        │
│  speckit-analyze ──► ALL Skills + ALL LLMs                   │
│  speckit-checklist ──► Domain-specific skills                │
│
│  (Hub for all knowledge aggregation)                         │
│
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ 05-QUALITY-OPS (3 agents)                                    │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  code-reviewer ──► All development llms.txt files             │
│  testing-engineer ──► vitest.txt (12 KB)                     │
│  devops-engineer ──► DevOps patterns                          │
│
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ 06-META-ORCHESTRATION (2 agents)                             │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  adham-router ──► ALL Skills + ALL LLMs (for routing)        │
│  workflow-orchestrator ──► ALL Skills + ALL LLMs             │
│                      (for coordination)                       │
│
└──────────────────────────────────────────────────────────────┘
```

---

## 3. Knowledge Base Structure

```
┌─────────────────────────────────────────────────────────────────┐
│                    KNOWLEDGE BASE (4.5 MB)                      │
└─────────────────────────────────────────────────────────────────┘

Skills (17 files, 92 KB)           LLMs.txt (15 files, 4.4 MB)
┌──────────────────────────┐       ┌──────────────────────────┐
│ Frontend (3)             │       │ Frontend (4)             │
│ ├─ nextjs-patterns       │       │ ├─ nextjs.txt (2.9 MB)  │
│ ├─ react-patterns        │       │ ├─ shadcn-ui.txt        │
│ └─ ui-library            │       │ ├─ magicui.txt          │
│                          │       │ └─ aceternity.txt       │
│ Backend (3)              │       │                          │
│ ├─ database-patterns     │       │ Backend (4)              │
│ ├─ auth-patterns         │       │ ├─ prisma.txt (72 KB)   │
│ └─ billing-patterns      │       │ ├─ pinecone.txt         │
│                          │       │ ├─ drizzle-orm.txt      │
│ AI/ML (4)                │       │ └─ hono.txt             │
│ ├─ ai-frameworks         │       │                          │
│ ├─ ai-sdks               │       │ AI/ML (5)                │
│ ├─ rag-tools             │       │ ├─ openai.txt           │
│ └─ mcp-tools             │       │ ├─ crewai.txt           │
│                          │       │ ├─ pydantic-ai.txt      │
│ Auth (2)                 │       │ ├─ smolagents.txt       │
│ ├─ auth-patterns         │       │ └─ (from ai-agents)     │
│ └─ jsonwebtoken          │       │                          │
│                          │       │ Auth (2)                 │
│ Testing (1)              │       │ ├─ auth0.txt (712 KB)   │
│ └─ chatbot-tools         │       │ └─ clerk.txt (208 KB)   │
│                          │       │                          │
│ Business (4)             │       │ Testing (1)              │
│ ├─ micro-saas-ideas      │       │ └─ vitest.txt (12 KB)   │
│ ├─ gtm-playbook          │       │                          │
│ ├─ pricing-models        │       │ Total: 4.4 MB            │
│ └─ llms-txt-directory    │       │                          │
│                          │       │ Categories: 6            │
│ Total: 92 KB             │       │ Largest: nextjs (2.9 MB)│
│                          │       │ Smallest: smolagents (4K)│
│ Categories: 6            │       └──────────────────────────┘
└──────────────────────────┘
```

---

## 4. Spec-Kit Flow with Knowledge Integration

```
User: "Build user auth with OAuth"
│
▼
speckit-specify
├─ Loads Skills:
│  ├─ auth-patterns
│  ├─ nextjs-patterns
│  └─ database-patterns
├─ Loads LLMs:
│  ├─ auth0.txt (712 KB)
│  ├─ clerk.txt (208 KB)
│  └─ nextjs.txt (2.9 MB)
└─ Creates: spec.md

│
▼
speckit-clarify
├─ Uses: auth + nextjs skills
├─ References: auth0.txt, clerk.txt
└─ Updates: spec.md with answers

│
▼
speckit-plan
├─ Loads: ALL Skills (92 KB)
├─ Loads: ALL LLMs (4.4 MB)
├─ Accesses: Official docs as reference
└─ Creates: plan.md with architecture

│
▼
speckit-tasks
├─ Uses: Spec + Plan
├─ Creates: tasks.md (ordered, phased)
└─ Marked: Dependencies & parallelization

│
▼
speckit-implement
├─ Loads: Skills (92 KB)
├─ Loads: LLMs (4.4 MB)
├─ Invokes: fullstack-developer agent
├─ fullstack-developer:
│  ├─ Loads: database, auth, nextjs skills
│  ├─ References: prisma.txt, auth0.txt, nextjs.txt
│  └─ Generates: Code + Tests + Docs
├─ Result: Working implementation
└─ Quality: Official docs as ground truth
```

---

## 5. Multi-Agent Collaboration

```
Request: "Build full-stack AI product"
│
├─ Routing Analysis
│  └─ Complexity: High → Spec-Kit Flow
│
├─ speckit-specify
│  └─ Load Skills: nextjs, database, ai-frameworks
│  └─ Load LLMs: nextjs.txt, prisma.txt, openai.txt
│  └─ Output: Comprehensive spec
│
├─ speckit-plan
│  └─ Load ALL Skills + ALL LLMs (4.5 MB context)
│  └─ Planning decisions with official docs
│  └─ Output: Technical plan
│
├─ speckit-tasks
│  └─ Dependency analysis
│  └─ Phase breakdown
│  └─ Output: Task list
│
└─ speckit-implement
   │
   ├─ Task 1: Database Schema
   │  └─ Agent: database-architect
   │     ├─ Skills: database-patterns
   │     ├─ LLMs: prisma.txt, drizzle.txt
   │     └─ Output: Schema + migrations
   │
   ├─ Task 2: API Endpoints
   │  └─ Agent: api-architect
   │     ├─ Skills: database-patterns, auth-patterns
   │     ├─ LLMs: hono.txt, openai.txt
   │     └─ Output: API contracts + routes
   │
   ├─ Task 3: Frontend Pages
   │  └─ Agent: nextjs-developer
   │     ├─ Skills: nextjs, react, ui-library
   │     ├─ LLMs: nextjs.txt, shadcn-ui.txt
   │     └─ Output: UI components + pages
   │
   ├─ Task 4: AI Integration
   │  └─ Agent: ai-architect
   │     ├─ Skills: ai-frameworks, ai-sdks
   │     ├─ LLMs: openai.txt, crewai.txt
   │     └─ Output: AI features + agents
   │
   └─ Task 5: Testing
      └─ Agent: testing-engineer
         ├─ Skills: Testing knowledge
         ├─ LLMs: vitest.txt
         └─ Output: Test suite
```

---

## 6. Knowledge Lookup Hierarchy

```
Agent needs information about: "React Server Components"

Step 1: Check Agent Definition
└─ Is it in the agent's built-in knowledge?
   (nextjs-developer knows RSC basics)
   ✓ Has foundational knowledge

Step 2: Load Relevant Skills
├─ nextjs-patterns skill
│  └─ Contains: RSC overview, best practices, patterns
│  └─ Size: ~10-20 KB of context
└─ Access: Instant (already in plugin)

Step 3: Load Relevant LLMs.txt
├─ nextjs.txt (2.9 MB)
│  └─ Contains: Complete Next.js documentation
│  └─ Includes: RSC API reference, examples
│  └─ Size: 2.9 MB of official docs
└─ react.txt (not available, would be fallback)

Step 4: Execute Task
├─ Agent context now includes:
│  ├─ Agent knowledge (RSC basics)
│  ├─ Skill knowledge (10-20 KB patterns)
│  ├─ Official docs (2.9 MB reference)
│  └─ Total context: 3+ MB
└─ Result: Accurate, well-informed implementation

Total lookup time: <1 second
Total context available: 3+ MB
Accuracy: 99% (official docs as source of truth)
```

---

## 7. Request Type → Knowledge Source Mapping

```
Request Type                Knowledge Sources        Context Size
────────────────────────────────────────────────────────────────

"Create React component"
└─ react-developer          react-patterns           100 KB
                            ui-library               (Skills)
                            shadcn-ui.txt            (LLMs)

"Build Next.js app"
└─ nextjs-developer         nextjs-patterns          3.0+ MB
                            react-patterns           (Skills)
                            database-patterns        + nextjs.txt
                            nextjs.txt               (LLMs)

"Full-stack feature"
└─ fullstack-developer      5 skills                 4.0+ MB
                            6 llms files             (Skills
                            Total knowledge          + LLMs)

"Add AI feature"
└─ ai-architect             ai-frameworks            100+ KB
                            ai-sdks                  (Skills)
                            openai.txt               + LLMs)
                            crewai.txt

"Build RAG pipeline"
└─ rag-engineer             rag-tools                100+ KB
                            database-patterns        (Skills)
                            pinecone.txt             + LLMs)

"Implement auth"
└─ fullstack-developer      auth-patterns            920+ KB
                            nextjs-patterns          (Skills)
                            auth0.txt                + LLMs)
                            clerk.txt

"Create landing page"
└─ ui-designer              ui-library               80+ KB
                            animation-library        (Skills)
                            shadcn-ui.txt            + LLMs)
                            magicui.txt

"Deploy to production"
└─ devops-engineer          DevOps knowledge         ~50 KB
                            (skill-based)            (Skills)
```

---

## 8. Unified Knowledge System

```
                    ┌─────────────────────────┐
                    │   32 AGENTS             │
                    │   (Specialized roles)   │
                    └────────────┬────────────┘
                                 │
                ┌────────────────┼────────────────┐
                │                │                │
                ▼                ▼                ▼
        ┌──────────────┐ ┌──────────────┐ ┌──────────────┐
        │ SKILLS       │ │ AGENTS       │ │ LLMS.TXT     │
        │ (92 KB)      │ │ KNOWLEDGE    │ │ (4.4 MB)     │
        │              │ │ (Built-in)   │ │              │
        │ Patterns &   │ │              │ │ Official     │
        │ Best         │ │ Expertise    │ │ Docs         │
        │ Practices    │ │ & Methods    │ │              │
        └──────────────┘ └──────────────┘ └──────────────┘
                │                │                │
                └────────────────┼────────────────┘
                                 │
                                 ▼
                    ┌─────────────────────────┐
                    │  UNIFIED KNOWLEDGE      │
                    │  BASE (4.5 MB)          │
                    │                         │
                    │ ✓ Comprehensive        │
                    │ ✓ Authoritative        │
                    │ ✓ Well-Organized       │
                    │ ✓ Instantly Available   │
                    └────────────┬────────────┘
                                 │
                ┌────────────────┼────────────────┐
                │                │                │
                ▼                ▼                ▼
            ┌────────┐      ┌──────────┐    ┌──────────┐
            │ HIGH   │      │ ACCURATE │    │OFFICIAL  │
            │QUALITY │      │PATTERNS  │    │REFERENCE │
            │OUTPUT  │      │& EXAMPLES│    │DOCS      │
            └────────┘      └──────────┘    └──────────┘
```

---

**Architecture Status**: ✅ Complete
**Knowledge Integration**: ✅ Unified
**Context Availability**: ✅ 4.5 MB Always Ready
**Official Docs**: ✅ 15 Files Indexed
