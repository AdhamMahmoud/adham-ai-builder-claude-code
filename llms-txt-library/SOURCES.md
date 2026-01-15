# Official LLMs.txt Sources

List of official llms.txt endpoints from popular libraries and frameworks.

## Frontend

| Library | URL | Status |
|---------|-----|--------|
| Next.js | https://nextjs.org/docs/llms.txt | ✅ Available |
| React | https://react.dev/llms.txt | ⏳ Unknown |
| TailwindCSS | https://tailwindcss.com/docs/llms.txt | ⏳ Unknown |
| shadcn/ui | https://ui.shadcn.com/llms.txt | ⏳ Unknown |
| Radix UI | https://radix-ui.com/docs/llms.txt | ⏳ Unknown |
| Framer Motion | https://www.framer.com/motion/llms.txt | ⏳ Unknown |
| Magic UI | https://magicui.design/llms.txt | ✅ Available |
| Recharts | https://recharts.org/llms.txt | ⏳ Unknown |

## Backend & Database

| Library | URL | Status |
|---------|-----|--------|
| Node.js | https://nodejs.org/docs/llms.txt | ⏳ Unknown |
| Express | https://expressjs.com/llms.txt | ⏳ Unknown |
| PostgreSQL | https://www.postgresql.org/docs/llms.txt | ⏳ Unknown |
| Drizzle ORM | https://orm.drizzle.team/docs/llms.txt | ⏳ Unknown |
| Prisma | https://www.prisma.io/docs/llms.txt | ⏳ Unknown |
| MongoDB | https://docs.mongodb.com/llms.txt | ⏳ Unknown |
| Supabase | https://supabase.com/docs/llms.txt | ⏳ Unknown |

## AI & ML

| Library | URL | Status |
|---------|-----|--------|
| LangChain | https://docs.langchain.com/llms.txt | ✅ Available |
| LangGraph | https://docs.smith.langchain.com/langgraph/llms.txt | ⏳ Unknown |
| Vercel AI SDK | https://sdk.vercel.ai/docs/llms.txt | ⏳ Unknown |
| CrewAI | https://docs.crewai.com/llms.txt | ⏳ Unknown |
| LlamaIndex | https://docs.llamaindex.ai/llms.txt | ⏳ Unknown |
| Pinecone | https://docs.pinecone.io/llms.txt | ⏳ Unknown |
| Chroma | https://docs.trychroma.com/llms.txt | ⏳ Unknown |
| OpenAI | https://platform.openai.com/docs/llms.txt | ⏳ Unknown |
| Anthropic | https://docs.anthropic.com/llms.txt | ⏳ Unknown |
| Google AI | https://ai.google.dev/docs/llms.txt | ⏳ Unknown |

## Auth & Security

| Library | URL | Status |
|---------|-----|--------|
| NextAuth | https://next-auth.js.org/docs/llms.txt | ⏳ Unknown |
| Auth0 | https://auth0.com/docs/llms.txt | ⏳ Unknown |
| Zod | https://zod.dev/llms.txt | ⏳ Unknown |

## Testing

| Library | URL | Status |
|---------|-----|--------|
| Vitest | https://vitest.dev/llms.txt | ⏳ Unknown |
| Playwright | https://playwright.dev/docs/llms.txt | ⏳ Unknown |
| Jest | https://jestjs.io/docs/en/getting-started.html?llms.txt | ⏳ Unknown |
| Testing Library | https://testing-library.com/docs/llms.txt | ⏳ Unknown |

## DevOps & Deployment

| Library | URL | Status |
|---------|-----|--------|
| Vercel | https://vercel.com/docs/llms.txt | ⏳ Unknown |
| Docker | https://docs.docker.com/llms.txt | ⏳ Unknown |
| GitHub Actions | https://docs.github.com/en/actions/llms.txt | ⏳ Unknown |

## How to Download

```bash
# Download a single file
curl -O https://nextjs.org/docs/llms.txt

# Download and save to specific folder
curl https://docs.langchain.com/llms.txt -o ai-ml/langchain.txt

# Batch download (using URLs list)
cat sources.txt | while read url; do
  filename=$(echo $url | grep -oP '(?<=://)[^/]+' | sed 's/\..*//').txt
  curl -o "frontend/$filename" "$url" 2>/dev/null && echo "✓ $filename" || echo "✗ $filename"
done
```

## Verified Working (2026-01-15)

✅ Successfully downloadable llms.txt files:
- https://nextjs.org/docs/llms.txt
- https://docs.langchain.com/llms.txt
- https://magicui.design/llms.txt

## Add Request for More

Projects that should have llms.txt but don't yet:
- React
- TailwindCSS
- shadcn/ui
- Vercel AI SDK
- Pinecone
- Prisma
- PostgreSQL
