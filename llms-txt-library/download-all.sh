#!/bin/bash

# Download all official llms.txt files from curated sources

echo "📥 Downloading official llms.txt files..."
echo "==========================================="
echo ""

TOTAL=0
SUCCESS=0
FAILED=0

download() {
  local url=$1
  local folder=$2
  local name=$3

  TOTAL=$((TOTAL + 1))

  mkdir -p "$folder"

  echo -n "  Downloading $name... "

  HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$url" --max-time 5)

  if [ "$HTTP_CODE" = "200" ]; then
    curl -s -o "$folder/$name.txt" "$url"
    SIZE=$(du -h "$folder/$name.txt" | cut -f1)
    SUCCESS=$((SUCCESS + 1))
    echo "✅ ($SIZE)"
  else
    FAILED=$((FAILED + 1))
    echo "❌ (HTTP $HTTP_CODE)"
  fi
}

# Frontend & UI
echo "📱 Frontend & UI Libraries"
download "https://nextjs.org/docs/llms-full.txt" "frontend-ui" "nextjs"
download "https://react.dev/llms.txt" "frontend-ui" "react"
download "https://ui.shadcn.com/llms.txt" "frontend-ui" "shadcn-ui"
download "https://tailwindcss.com/docs/llms.txt" "frontend-ui" "tailwindcss"
download "https://magicui.design/llms.txt" "frontend-ui" "magicui"
download "https://ui.aceternity.com/llms.txt" "frontend-ui" "aceternity"
download "https://www.framer.com/motion/llms.txt" "frontend-ui" "framer-motion"
download "https://radix-ui.com/docs/llms.txt" "frontend-ui" "radix-ui"

# AI & LLM Orchestration
echo ""
echo "🤖 AI & LLM Orchestration"
download "https://python.langchain.com/llms.txt" "ai-llm-orchestration" "langchain-python"
download "https://js.langchain.com/llms.txt" "ai-llm-orchestration" "langchain-js"
download "https://docs.llamaindex.ai/en/stable/llms.txt" "ai-llm-orchestration" "llamaindex"
download "https://sdk.vercel.ai/llms.txt" "ai-llm-orchestration" "vercel-ai-sdk"
download "https://docs.anthropic.com/llms.txt" "ai-llm-orchestration" "anthropic"
download "https://platform.openai.com/docs/llms.txt" "ai-llm-orchestration" "openai"
download "https://cloud.google.com/docs/gemini/llms.txt" "ai-llm-orchestration" "google-gemini"

# AI Agents & Frameworks
echo ""
echo "🤖 AI Agents & Frameworks"
download "https://microsoft.github.io/autogen/llms.txt" "ai-agents-frameworks" "autogen"
download "https://ai.pydantic.dev/llms.txt" "ai-agents-frameworks" "pydantic-ai"
download "https://huggingface.co/docs/smolagents/llms.txt" "ai-agents-frameworks" "smolagents"
download "https://docs.crewai.com/llms.txt" "ai-agents-frameworks" "crewai"
download "https://langgraph.ai/llms.txt" "ai-agents-frameworks" "langgraph"

# Backend API & Database
echo ""
echo "⚙️ Backend, API & Database"
download "https://fastapi.tiangolo.com/llms.txt" "backend-api-db" "fastapi"
download "https://supabase.com/docs/llms-full.txt" "backend-api-db" "supabase"
download "https://docs.pinecone.io/llms.txt" "backend-api-db" "pinecone"
download "https://qdrant.tech/documentation/llms.txt" "backend-api-db" "qdrant"
download "https://hono.dev/llms.txt" "backend-api-db" "hono"
download "https://orm.drizzle.team/llms.txt" "backend-api-db" "drizzle-orm"
download "https://www.prisma.io/docs/llms.txt" "backend-api-db" "prisma"
download "https://nodejs.org/docs/llms.txt" "backend-api-db" "nodejs"
download "https://www.postgresql.org/docs/llms.txt" "backend-api-db" "postgresql"
download "https://docs.mongodb.com/llms.txt" "backend-api-db" "mongodb"

# Authentication
echo ""
echo "🔐 Authentication"
download "https://authjs.dev/llms.txt" "auth" "next-auth"
download "https://auth0.com/ai/docs/llms-full.txt" "auth" "auth0"
download "https://clerk.com/llms.txt" "auth" "clerk"
download "https://better-auth.com/llms.txt" "auth" "better-auth"
download "https://supabase.com/docs/llms-full.txt" "auth" "supabase-auth"

# Testing & Observability
echo ""
echo "🧪 Testing & Observability"
download "https://docs.smith.langchain.com/llms.txt" "testing-observability" "langsmith"
download "https://playwright.dev/llms.txt" "testing-observability" "playwright"
download "https://vitest.dev/llms.txt" "testing-observability" "vitest"
download "https://docs.sentry.io/llms.txt" "testing-observability" "sentry"
download "https://jestjs.io/docs/llms.txt" "testing-observability" "jest"

# Print summary
echo ""
echo "==========================================="
echo "📊 Download Summary"
echo "==========================================="
echo "Total URLs tested: $TOTAL"
echo "✅ Successfully downloaded: $SUCCESS"
echo "❌ Failed: $FAILED"
if [ $TOTAL -gt 0 ]; then
  echo "Success rate: $((SUCCESS * 100 / TOTAL))%"
fi
echo ""
echo "📁 Files by category:"
for dir in frontend-ui ai-llm-orchestration ai-agents-frameworks backend-api-db auth testing-observability; do
  if [ -d "$dir" ]; then
    count=$(ls "$dir"/*.txt 2>/dev/null | wc -l)
    if [ $count -gt 0 ]; then
      size=$(du -sh "$dir" 2>/dev/null | awk '{print $1}')
      echo "  $dir: $count files ($size)"
    fi
  fi
done

echo ""
echo "✨ All files ready for RAG ingestion!"
