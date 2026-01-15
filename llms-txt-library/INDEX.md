# LLMs.txt Library Index

Central repository of llms.txt files for popular frameworks and tools. Each file contains the essential documentation optimized for LLM context.

## Frontend Frameworks & Libraries

### React & Next.js
- `react-19.txt` - React 19 hooks, Server Components, Suspense
- `nextjs-16.txt` - Next.js 16 App Router, RSC, Server Actions, Turbopack
- `nextjs-api.txt` - Next.js route handlers and API routes

### UI & Styling
- `shadcn-ui.txt` - shadcn/ui components and usage patterns
- `tailwind-css.txt` - Tailwind CSS utilities and configuration
- `radix-ui.txt` - Radix UI primitives and headless components
- `framer-motion.txt` - Framer Motion animations and gestures
- `recharts.txt` - Recharts data visualization

## Backend & Database

### Databases & ORMs
- `drizzle-orm.txt` - Drizzle ORM schema, queries, migrations
- `postgresql.txt` - PostgreSQL essentials for Node.js
- `prisma.txt` - Prisma ORM and schema definitions
- `mongodb.txt` - MongoDB and Mongoose patterns
- `supabase.txt` - Supabase (PostgreSQL + realtime)

### Backend Frameworks
- `express.txt` - Express.js API server patterns
- `fastapi.txt` - FastAPI Python backend
- `nest.js.txt` - NestJS enterprise framework

## AI & ML Libraries

### LLM Frameworks
- `langchain.txt` - LangChain chains, agents, memory
- `langgraph.txt` - LangGraph state machines and agents
- `crewai.txt` - CrewAI multi-agent framework
- `llamaindex.txt` - LlamaIndex document indexing and retrieval
- `vercel-ai-sdk.txt` - Vercel AI SDK streaming patterns

### Vector Databases
- `pinecone.txt` - Pinecone vector DB API
- `chroma.txt` - Chroma open-source vector DB
- `pgvector.txt` - PostgreSQL pgvector extension
- `qdrant.txt` - Qdrant vector database
- `weaviate.txt` - Weaviate GraphQL vector DB

### LLM APIs
- `openai-api.txt` - OpenAI API (GPT-4, embedding models)
- `anthropic-api.txt` - Anthropic Claude API
- `google-ai.txt` - Google Gemini API
- `groq-api.txt` - Groq API (fast inference)
- `cohere-api.txt` - Cohere API and embeddings

## Authentication & Security

### Auth
- `nextauth.txt` - NextAuth v5 OAuth, JWT, sessions
- `auth0.txt` - Auth0 authentication
- `supabase-auth.txt` - Supabase auth with PostgreSQL
- `jsonwebtoken.txt` - JWT patterns and best practices

### Security
- `helmet.txt` - Helmet.js security headers
- `zod.txt` - Zod schema validation
- `jose.txt` - JOSE JWT library

## Payment & Billing

### Payment Processing
- `stripe.txt` - Stripe API (payments, subscriptions, webhooks)
- `stripe-webhooks.txt` - Stripe webhook handling patterns

## Testing

### Testing Frameworks
- `vitest.txt` - Vitest unit testing
- `react-testing-library.txt` - React component testing
- `playwright.txt` - Playwright E2E testing
- `jest.txt` - Jest testing framework
- `cypress.txt` - Cypress E2E testing

## DevOps & Deployment

### Hosting & CI/CD
- `vercel.txt` - Vercel deployment and configuration
- `github-actions.txt` - GitHub Actions CI/CD
- `docker.txt` - Docker containerization
- `railway.txt` - Railway deployment platform

## Utilities & Tools

### Development Tools
- `typescript.txt` - TypeScript essentials
- `eslint.txt` - ESLint configuration and rules
- `prettier.txt` - Prettier code formatting
- `git.txt` - Git commands and workflows
- `npm.txt` - NPM package management

### Monitoring & Observability
- `sentry.txt` - Sentry error tracking
- `datadog.txt` - Datadog monitoring
- `langsmith.txt` - LangSmith tracing and evaluation

## How to Use

Each `.txt` file contains:
- **API Reference** - Essential endpoints and methods
- **Code Examples** - Common usage patterns
- **Configuration** - Setup and initialization
- **Best Practices** - Recommended approaches
- **Common Pitfalls** - What to avoid

### For RAG Systems

Include relevant llms.txt files in your vector DB:

```typescript
// Example: Loading llms.txt files for RAG context
const documents = [
  loadFile('llms-txt-library/react-19.txt'),
  loadFile('llms-txt-library/nextjs-16.txt'),
  loadFile('llms-txt-library/shadcn-ui.txt'),
  loadFile('llms-txt-library/langchain.txt'),
  loadFile('llms-txt-library/stripe.txt'),
]

await vectorDb.index(documents)
```

### For LLM Prompting

Reference in system prompts:

```markdown
You are a full-stack developer assistant. You have access to documentation for:

<llms-txt>
React 19, Next.js 16, shadcn/ui, Tailwind CSS,
Drizzle ORM, PostgreSQL, LangChain, Stripe
</llms-txt>

Use this knowledge to help build web applications.
```

## File Statistics

- **Total Files**: 40+
- **Frontend**: 8 files
- **Backend**: 6 files
- **AI/ML**: 12 files
- **Auth**: 4 files
- **Testing**: 5 files
- **DevOps**: 4 files
- **Utilities**: 8+ files

## Priority Tiers

### Tier 1 (Essential)
- react-19.txt
- nextjs-16.txt
- shadcn-ui.txt
- tailwind-css.txt
- drizzle-orm.txt
- langchain.txt
- stripe.txt

### Tier 2 (Recommended)
- typescript.txt
- zod.txt
- vitest.txt
- playwright.txt
- vercel.txt
- pinecone.txt
- openai-api.txt

### Tier 3 (Optional)
- All other files based on project needs

## Adding New Files

Create new llms.txt files following this format:

```markdown
# [Library Name]

## Overview
Brief description of the library and its purpose.

## Installation
```bash
npm install [package-name]
```

## Quick Start
[Code example]

## API Reference
[Essential endpoints/functions]

## Best Practices
- Practice 1
- Practice 2

## Common Patterns
[Usage patterns]

## Resources
- [Official Docs](link)
- [GitHub](link)
```

## Maintenance

Last Updated: 2026-01-15

Files should be updated when:
- Major version releases
- API breaking changes
- New critical features
- Better examples available
