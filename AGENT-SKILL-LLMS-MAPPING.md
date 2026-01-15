# Agent ↔ Skill ↔ LLMs.txt Mapping

Quick reference for which knowledge sources support each agent.

## 🎯 Core Development Agents

### nextjs-developer
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | nextjs-patterns | App Router, RSC, Server Actions |
| **Skills** | react-patterns | React 19 patterns |
| **Skills** | database-patterns | Database integration |
| **LLMs** | frontend-ui/nextjs.txt | 2.9 MB - Complete Next.js docs |
| **LLMs** | frontend-ui/shadcn-ui.txt | 12 KB - UI components |
| **LLMs** | backend-api-db/drizzle-orm.txt | 20 KB - Database layer |

**Context**: 3.0 MB of official documentation

---

### react-developer
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | react-patterns | React 19, hooks, Server Components |
| **Skills** | animation-library | Framer Motion, GSAP, React Spring |
| **Skills** | ui-library | shadcn/ui, Radix, Tailwind |
| **LLMs** | frontend-ui/nextjs.txt | React patterns section |
| **LLMs** | frontend-ui/shadcn-ui.txt | 12 KB - Component reference |
| **LLMs** | frontend-ui/magicui.txt | 28 KB - Animation patterns |
| **LLMs** | frontend-ui/aceternity.txt | 16 KB - Advanced UI |

**Context**: 2.9+ MB of UI documentation

---

### fullstack-developer
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | database-patterns | Drizzle, PostgreSQL, migrations |
| **Skills** | nextjs-patterns | Full-stack integration |
| **Skills** | react-patterns | Component development |
| **Skills** | auth-patterns | Authentication security |
| **Skills** | billing-patterns | Payment integration |
| **LLMs** | backend-api-db/prisma.txt | 72 KB - ORM reference |
| **LLMs** | backend-api-db/drizzle-orm.txt | 20 KB - Query patterns |
| **LLMs** | backend-api-db/pinecone.txt | 52 KB - Vector DB |
| **LLMs** | auth/auth0.txt | 712 KB - Auth solutions |
| **LLMs** | auth/clerk.txt | 208 KB - Modern auth |
| **LLMs** | frontend-ui/nextjs.txt | 2.9 MB - Full-stack reference |

**Context**: 4.0+ MB of comprehensive docs

---

### api-architect
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | database-patterns | Data models |
| **Skills** | auth-patterns | API security |
| **LLMs** | backend-api-db/hono.txt | 8 KB - Lightweight API framework |
| **LLMs** | backend-api-db/pinecone.txt | 52 KB - Vector search APIs |
| **LLMs** | ai-llm-orchestration/openai.txt | 20 KB - LLM API design |

**Context**: 80 KB of API-specific docs

---

### database-architect
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | database-patterns | Drizzle ORM, PostgreSQL |
| **LLMs** | backend-api-db/prisma.txt | 72 KB - Schema design |
| **LLMs** | backend-api-db/drizzle-orm.txt | 20 KB - ORM queries |
| **LLMs** | backend-api-db/pinecone.txt | 52 KB - Vector indexing |

**Context**: 144 KB of database docs

---

### ui-designer
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | ui-library | shadcn/ui, Radix primitives |
| **Skills** | animation-library | Animations and interactions |
| **LLMs** | frontend-ui/shadcn-ui.txt | 12 KB - Component library |
| **LLMs** | frontend-ui/magicui.txt | 28 KB - Advanced components |
| **LLMs** | frontend-ui/aceternity.txt | 16 KB - Premium UI |

**Context**: 56 KB of component docs

---

## 🤖 AI Specialist Agents

### ai-architect
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | ai-frameworks | LangChain, LangGraph, CrewAI |
| **Skills** | ai-sdks | Vercel AI SDK, OpenAI SDK |
| **LLMs** | ai-llm-orchestration/openai.txt | 20 KB - Model selection |
| **LLMs** | ai-agents-frameworks/crewai.txt | 40 KB - Agent architecture |
| **LLMs** | ai-agents-frameworks/pydantic-ai.txt | 12 KB - Type-safe agents |

**Context**: 72 KB of AI architecture docs

---

### rag-engineer
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | rag-tools | Vector DBs, chunking, embeddings |
| **Skills** | database-patterns | Data persistence |
| **LLMs** | backend-api-db/pinecone.txt | 52 KB - Vector DB setup |
| **LLMs** | ai-agents-frameworks/pydantic-ai.txt | 12 KB - Retrieval patterns |

**Context**: 64 KB of RAG-specific docs

---

### agent-builder
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | ai-frameworks | LangGraph, CrewAI |
| **LLMs** | ai-agents-frameworks/crewai.txt | 40 KB - Orchestration |
| **LLMs** | ai-agents-frameworks/pydantic-ai.txt | 12 KB - Agent patterns |
| **LLMs** | ai-agents-frameworks/smolagents.txt | 4 KB - Lightweight |

**Context**: 56 KB of agent framework docs

---

### ai-integrator
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | ai-sdks | Integration patterns |
| **Skills** | mcp-tools | MCP server patterns |
| **LLMs** | ai-llm-orchestration/openai.txt | 20 KB - API integration |
| **LLMs** | ai-agents-frameworks/pydantic-ai.txt | 12 KB - Type-safe integration |

**Context**: 32 KB of integration docs

---

### chatbot-builder
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | chatbot-tools | Flowise, Langflow, Botpress |
| **Skills** | ai-sdks | Streaming patterns |
| **LLMs** | ai-agents-frameworks/crewai.txt | 40 KB - Multi-turn dialogue |
| **LLMs** | ai-llm-orchestration/openai.txt | 20 KB - Chat API |

**Context**: 60 KB of chatbot docs

---

### prompt-engineer
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | ai-evaluation | DeepEval, RAGAS, Promptfoo |
| **LLMs** | ai-llm-orchestration/openai.txt | 20 KB - Prompt engineering |
| **LLMs** | ai-agents-frameworks/pydantic-ai.txt | 12 KB - Structured outputs |

**Context**: 32 KB of prompt optimization docs

---

## 💼 Business Strategy Agents

### idea-validator
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | micro-saas-ideas | Validation framework |
| **Framework** | David Andre validation |

**Context**: Strategic knowledge

---

### product-strategist
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | General product knowledge |

**Context**: Product strategy

---

### gtm-strategist
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | gtm-playbook | Launch strategies |

**Context**: GTM strategy

---

### growth-hacker
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | General growth knowledge |

**Context**: Growth strategy

---

### marketing-expert
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | General marketing knowledge |

**Context**: Marketing execution

---

### monetization-advisor
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | pricing-models | SaaS pricing strategies |
| **Skills** | billing-patterns | Stripe integration |
| **LLMs** | auth/auth0.txt | 712 KB - Enterprise features |

**Context**: Pricing + enterprise knowledge

---

### project-planner
| Type | Resource | Details |
|------|----------|---------|
| **Skills** | General planning knowledge |

**Context**: Project management

---

## 🛠️ Spec-Kit Agents

### speckit-constitution
**All Skills** - Reference as needed
**All LLMs** - Reference for principles

---

### speckit-specify
**Depends on domain** - Loads relevant skills + llms.txt files

**For Frontend**:
- nextjs-patterns, react-patterns, ui-library
- frontend-ui/*.txt files

**For Backend**:
- database-patterns, auth-patterns
- backend-api-db/*.txt files

**For AI**:
- ai-frameworks, ai-sdks, rag-tools
- ai-agents-frameworks/*.txt, ai-llm-orchestration/*.txt files

---

### speckit-plan
**All Skills + All LLMs** - Comprehensive planning context

- Full skill knowledge base (92 KB)
- All 15 llms.txt files (4.4 MB)

**Total Context**: 4.5 MB

---

### speckit-tasks
**Relevant subset** - Based on specification requirements

---

### speckit-implement
**All Skills + All LLMs** - Complete implementation context

- Full knowledge base available
- Agent selection based on task requirements

---

### speckit-analyze
**All Skills + All LLMs** - Consistency verification

---

### speckit-checklist
**Domain-specific skills** - Quality validation

---

## ✅ Quality & Operations Agents

### code-reviewer
| Type | Resource | Details |
|------|----------|---------|
| **LLMs** | All development files | Reference for best practices |

**Context**: Code quality patterns

---

### testing-engineer
| Type | Resource | Details |
|------|----------|---------|
| **LLMs** | testing-observability/vitest.txt | 12 KB - Unit testing |

**Context**: Testing framework reference

---

### devops-engineer
| Type | Resource | Details |
|------|----------|---------|
| **Knowledge** | DevOps patterns |

**Context**: Deployment strategy

---

## 🎯 Meta-Orchestration Agents

### adham-router
**All Skills + All LLMs** - Available for routing decisions

**Uses**: Intent analysis + context matching

---

### workflow-orchestrator
**All Skills + All LLMs** - Multi-agent coordination

**Uses**: Workflow sequencing + context passing

---

## 📊 Summary Statistics

### Knowledge Distribution

| Category | Skills | LLMs | Total |
|----------|--------|------|-------|
| Frontend Development | 3 | 1,100 KB | 1,100 KB |
| AI & Agents | 3 | 140 KB | 140 KB |
| Backend & Database | 2 | 224 KB | 224 KB |
| Authentication | 1 | 920 KB | 920 KB |
| Testing | 1 | 12 KB | 12 KB |
| Business | 6 | - | 6 files |
| **TOTAL** | **17** | **4.4 MB** | **4.4 MB** |

### Agent Knowledge Coverage

| Tier | Agents | Skills | LLMs | Context |
|------|--------|--------|------|---------|
| **Expert** | fullstack, api-architect | 3-5 | 4-6 | 1+ MB |
| **Advanced** | nextjs, react, database | 2-4 | 3-4 | 100+ KB |
| **Intermediate** | ai-architect, rag-engineer | 2-3 | 2-3 | 50+ KB |
| **Specialized** | ui-designer, testing | 1-2 | 0-2 | 10+ KB |
| **Strategic** | Business agents | 1-2 | 0-1 | Reference |

---

## 🚀 Usage Guide

### For Users

When you request something specific:

```
/adham build Next.js dashboard with Prisma and Auth0
```

The system automatically:
1. Routes to speckit-specify
2. Loads nextjs-patterns, database-patterns, auth-patterns skills
3. References nextjs.txt, prisma.txt, auth0.txt files
4. Creates specification with this rich context

### For Developers

To add support for a new technology:

1. **Add LLMs.txt file**:
   - Download from official source
   - Place in appropriate category folder

2. **Update this mapping**:
   - Add entry to relevant agent section
   - Update statistics

3. **Verify coverage**:
   - Check agent can access new knowledge
   - Test with sample request

---

## 🔗 Cross-References

- **Agent Catalog**: `agents/INDEX.md`
- **Skills Index**: `skills/INDEX.md`
- **LLMs Library**: `llms-txt-library/MANIFEST.md`
- **Full Architecture**: `KNOWLEDGE_ARCHITECTURE.md`

---

**Last Updated**: 2026-01-15
**Total Knowledge Base**: 4.5 MB
**Status**: ✅ Production Ready
