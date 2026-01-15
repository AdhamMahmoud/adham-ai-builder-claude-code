# Skills Reference

17 knowledge skills organized by domain. Skills provide reference documentation that agents use for context.

## AI & Machine Learning

| Skill | Description | Used By |
|-------|-------------|---------|
| [ai-frameworks](./ai-frameworks/) | LangChain, LangGraph, CrewAI, AutoGen comparison | ai-architect, agent-builder |
| [ai-sdks](./ai-sdks/) | Vercel AI SDK, OpenAI, Anthropic, Groq patterns | ai-integrator, chatbot-builder |
| [ai-evaluation](./ai-evaluation/) | DeepEval, RAGAS, Promptfoo metrics | prompt-engineer, rag-engineer |
| [rag-tools](./rag-tools/) | LlamaIndex, Pinecone, Chroma, pgvector | rag-engineer |
| [chatbot-tools](./chatbot-tools/) | Flowise, Langflow, Botpress patterns | chatbot-builder |
| [mcp-tools](./mcp-tools/) | MCP server configurations | ai-architect, ai-integrator |
| [llms-txt-directory](./llms-txt-directory/) | 50+ documentation URLs for RAG | rag-engineer |

## Web Development

| Skill | Description | Used By |
|-------|-------------|---------|
| [nextjs-patterns](./nextjs-patterns/) | App Router, RSC, Server Actions, Turbopack | nextjs-developer, fullstack-developer |
| [react-patterns](./react-patterns/) | React 19 hooks, Suspense, Server Components | react-developer |
| [database-patterns](./database-patterns/) | Drizzle ORM, PostgreSQL, migrations | database-architect |
| [auth-patterns](./auth-patterns/) | NextAuth v5, OAuth, RBAC, sessions | fullstack-developer |
| [billing-patterns](./billing-patterns/) | Stripe, subscriptions, credits systems | monetization-advisor |
| [ui-library](./ui-library/) | shadcn/ui components, Radix, Tailwind | ui-designer |
| [animation-library](./animation-library/) | Framer Motion, GSAP, React Spring | ui-designer |

## Business Strategy

| Skill | Description | Used By |
|-------|-------------|---------|
| [micro-saas-ideas](./micro-saas-ideas/) | Profitable niches 2025-2026, validation | idea-validator |
| [gtm-playbook](./gtm-playbook/) | Launch strategies, channels, metrics | gtm-strategist |
| [pricing-models](./pricing-models/) | SaaS pricing, Stripe patterns | monetization-advisor |

## How Skills Work

Skills are loaded as context when agents need reference information. They contain:

- **Tables and comparisons** - Quick reference for tool selection
- **Code examples** - Implementation patterns ready to use
- **Best practices** - Recommended approaches
- **Official docs links** - For deeper exploration

## Adding New Skills

Create a new directory in `skills/` with a `SKILL.md` file:

```
skills/
└── new-skill/
    └── SKILL.md
```

Update `plugin.json` to include the new skill path.
