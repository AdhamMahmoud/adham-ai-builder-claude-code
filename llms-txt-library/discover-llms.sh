#!/bin/bash

# Comprehensive llms.txt discovery and downloader
# Tests hundreds of documentation endpoints for llms.txt availability

echo "🔍 Discovering all available llms.txt files..."
echo "=============================================="
echo ""

# Create a log file
LOG_FILE="download_results.log"
> "$LOG_FILE"

# Counter for stats
TOTAL=0
SUCCESS=0
FAILED=0

# Function to test and download a URL
download_if_exists() {
  local url=$1
  local folder=$2
  local name=$3

  TOTAL=$((TOTAL + 1))

  # Extract domain for folder organization if not provided
  if [ -z "$folder" ]; then
    folder=$(echo "$url" | sed -E 's|https?://([^/]+).*|\1|' | sed 's/\..*//g')
  fi

  # Create folder if it doesn't exist
  mkdir -p "$folder"

  # Test if file exists
  HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$url" --max-time 5)

  if [ "$HTTP_CODE" = "200" ]; then
    # Download the file
    curl -s -o "$folder/$name.txt" "$url"
    SIZE=$(du -h "$folder/$name.txt" | cut -f1)
    SUCCESS=$((SUCCESS + 1))
    echo "✅ $name ($SIZE) - $url" | tee -a "$LOG_FILE"
  else
    FAILED=$((FAILED + 1))
    echo "❌ $name (HTTP $HTTP_CODE) - $url" >> "$LOG_FILE"
  fi
}

# Frontend Frameworks
echo "📱 Frontend Frameworks..."
download_if_exists "https://react.dev/llms.txt" "frontend" "react"
download_if_exists "https://nextjs.org/docs/llms.txt" "frontend" "nextjs"
download_if_exists "https://vuejs.org/llms.txt" "frontend" "vue"
download_if_exists "https://angular.io/docs/llms.txt" "frontend" "angular"
download_if_exists "https://svelte.dev/docs/llms.txt" "frontend" "svelte"
download_if_exists "https://astro.build/docs/llms.txt" "frontend" "astro"
download_if_exists "https://remix.run/docs/llms.txt" "frontend" "remix"
download_if_exists "https://nuxt.com/docs/llms.txt" "frontend" "nuxt"

# UI Libraries & Components
echo "🎨 UI Libraries..."
download_if_exists "https://ui.shadcn.com/llms.txt" "frontend" "shadcn-ui"
download_if_exists "https://tailwindcss.com/docs/llms.txt" "frontend" "tailwind"
download_if_exists "https://radix-ui.com/docs/llms.txt" "frontend" "radix-ui"
download_if_exists "https://magicui.design/llms.txt" "frontend" "magic-ui"
download_if_exists "https://material-ui.com/docs/llms.txt" "frontend" "material-ui"
download_if_exists "https://storybook.js.org/docs/llms.txt" "frontend" "storybook"
download_if_exists "https://ant.design/docs/llms.txt" "frontend" "ant-design"
download_if_exists "https://headlessui.com/docs/llms.txt" "frontend" "headless-ui"

# Animations & Effects
echo "✨ Animation Libraries..."
download_if_exists "https://www.framer.com/motion/llms.txt" "frontend" "framer-motion"
download_if_exists "https://www.gsap.com/docs/llms.txt" "frontend" "gsap"
download_if_exists "https://react-spring.io/docs/llms.txt" "frontend" "react-spring"
download_if_exists "https://aoijs.org/docs/llms.txt" "frontend" "aoi"

# State Management
echo "💾 State Management..."
download_if_exists "https://zustand.bear.sh/docs/llms.txt" "frontend" "zustand"
download_if_exists "https://redux.js.org/docs/llms.txt" "frontend" "redux"
download_if_exists "https://jotai.org/docs/llms.txt" "frontend" "jotai"
download_if_exists "https://recoil.js.org/docs/llms.txt" "frontend" "recoil"
download_if_exists "https://xstate.js.org/docs/llms.txt" "frontend" "xstate"
download_if_exists "https://valtio.pmnd.rs/docs/llms.txt" "frontend" "valtio"

# Data Fetching
echo "🔄 Data Fetching..."
download_if_exists "https://tanstack.com/query/docs/llms.txt" "frontend" "tanstack-query"
download_if_exists "https://swr.vercel.app/docs/llms.txt" "frontend" "swr"
download_if_exists "https://apollo-client-docs.js.org/docs/llms.txt" "frontend" "apollo-client"
download_if_exists "https://urql.dev/docs/llms.txt" "frontend" "urql"

# Backend Frameworks
echo "⚙️ Backend Frameworks..."
download_if_exists "https://expressjs.com/docs/llms.txt" "backend" "express"
download_if_exists "https://fastify.io/docs/llms.txt" "backend" "fastify"
download_if_exists "https://nestjs.com/docs/llms.txt" "backend" "nestjs"
download_if_exists "https://koajs.com/docs/llms.txt" "backend" "koa"
download_if_exists "https://hapi.dev/docs/llms.txt" "backend" "hapi"
download_if_exists "https://fastapi.tiangolo.com/docs/llms.txt" "backend" "fastapi"
download_if_exists "https://docs.djangoproject.com/llms.txt" "backend" "django"
download_if_exists "https://flask.palletsprojects.com/docs/llms.txt" "backend" "flask"

# Node.js & Runtime
echo "🟢 Node.js & Runtime..."
download_if_exists "https://nodejs.org/docs/llms.txt" "backend" "nodejs"
download_if_exists "https://deno.land/docs/llms.txt" "backend" "deno"
download_if_exists "https://bun.sh/docs/llms.txt" "backend" "bun"

# Databases & ORMs
echo "🗄️ Databases & ORMs..."
download_if_exists "https://www.postgresql.org/docs/llms.txt" "backend" "postgresql"
download_if_exists "https://docs.mongodb.com/llms.txt" "backend" "mongodb"
download_if_exists "https://www.mysql.com/docs/llms.txt" "backend" "mysql"
download_if_exists "https://orm.drizzle.team/docs/llms.txt" "backend" "drizzle-orm"
download_if_exists "https://www.prisma.io/docs/llms.txt" "backend" "prisma"
download_if_exists "https://typeorm.io/docs/llms.txt" "backend" "typeorm"
download_if_exists "https://sequelize.org/docs/llms.txt" "backend" "sequelize"
download_if_exists "https://supabase.com/docs/llms.txt" "backend" "supabase"
download_if_exists "https://firebase.google.com/docs/llms.txt" "backend" "firebase"

# AI & LLM Frameworks
echo "🤖 AI & LLM Frameworks..."
download_if_exists "https://docs.langchain.com/llms.txt" "ai-ml" "langchain"
download_if_exists "https://langgraph.ai/docs/llms.txt" "ai-ml" "langgraph"
download_if_exists "https://docs.smith.langchain.com/langgraph/llms.txt" "ai-ml" "langgraph-smith"
download_if_exists "https://docs.crewai.com/llms.txt" "ai-ml" "crewai"
download_if_exists "https://docs.llamaindex.ai/llms.txt" "ai-ml" "llamaindex"
download_if_exists "https://docs.vectara.com/llms.txt" "ai-ml" "vectara"
download_if_exists "https://docs.ragas.io/llms.txt" "ai-ml" "ragas"

# Vercel AI SDK
echo "⚡ Vercel AI SDK..."
download_if_exists "https://sdk.vercel.ai/docs/llms.txt" "ai-ml" "vercel-ai-sdk"
download_if_exists "https://ai.vercel.com/docs/llms.txt" "ai-ml" "vercel-ai"

# LLM APIs
echo "🧠 LLM & API Services..."
download_if_exists "https://platform.openai.com/docs/llms.txt" "ai-ml" "openai"
download_if_exists "https://docs.anthropic.com/llms.txt" "ai-ml" "anthropic"
download_if_exists "https://ai.google.dev/docs/llms.txt" "ai-ml" "google-ai"
download_if_exists "https://cloud.google.com/vertex-ai/docs/llms.txt" "ai-ml" "vertex-ai"
download_if_exists "https://console.groq.com/docs/llms.txt" "ai-ml" "groq"
download_if_exists "https://docs.cohere.com/llms.txt" "ai-ml" "cohere"
download_if_exists "https://docs.together.ai/llms.txt" "ai-ml" "together-ai"
download_if_exists "https://replicate.com/docs/llms.txt" "ai-ml" "replicate"
download_if_exists "https://www.aleph-alpha.com/docs/llms.txt" "ai-ml" "aleph-alpha"
download_if_exists "https://docs.ai21.com/llms.txt" "ai-ml" "ai21"

# Vector Databases
echo "📊 Vector Databases..."
download_if_exists "https://docs.pinecone.io/llms.txt" "ai-ml" "pinecone"
download_if_exists "https://docs.trychroma.com/llms.txt" "ai-ml" "chroma"
download_if_exists "https://qdrant.tech/documentation/llms.txt" "ai-ml" "qdrant"
download_if_exists "https://weaviate.io/developers/llms.txt" "ai-ml" "weaviate"
download_if_exists "https://milvus.io/docs/llms.txt" "ai-ml" "milvus"
download_if_exists "https://www.elasticvector.com/docs/llms.txt" "ai-ml" "elasticsearch-vector"
download_if_exists "https://docs.vespa.ai/llms.txt" "ai-ml" "vespa"
download_if_exists "https://cloud.mongodb.com/docs/atlas/llms.txt" "ai-ml" "mongodb-atlas"

# Authentication & Security
echo "🔐 Authentication..."
download_if_exists "https://next-auth.js.org/docs/llms.txt" "auth" "nextauth"
download_if_exists "https://auth0.com/docs/llms.txt" "auth" "auth0"
download_if_exists "https://docs.clerk.com/llms.txt" "auth" "clerk"
download_if_exists "https://zod.dev/llms.txt" "auth" "zod"
download_if_exists "https://joi.dev/docs/llms.txt" "auth" "joi"
download_if_exists "https://docs.passport-next.js.org/llms.txt" "auth" "passport"

# Testing
echo "🧪 Testing Frameworks..."
download_if_exists "https://vitest.dev/docs/llms.txt" "testing" "vitest"
download_if_exists "https://jestjs.io/docs/llms.txt" "testing" "jest"
download_if_exists "https://playwright.dev/docs/llms.txt" "testing" "playwright"
download_if_exists "https://cypress.io/docs/llms.txt" "testing" "cypress"
download_if_exists "https://testing-library.com/docs/llms.txt" "testing" "testing-library"
download_if_exists "https://nightwatchjs.org/docs/llms.txt" "testing" "nightwatch"
download_if_exists "https://webdriverio.io/docs/llms.txt" "testing" "webdriverio"
download_if_exists "https://puppeteer.dev/docs/llms.txt" "testing" "puppeteer"

# DevOps & Deployment
echo "🚀 DevOps & Deployment..."
download_if_exists "https://vercel.com/docs/llms.txt" "devops" "vercel"
download_if_exists "https://docs.docker.com/llms.txt" "devops" "docker"
download_if_exists "https://docs.github.com/en/actions/llms.txt" "devops" "github-actions"
download_if_exists "https://docs.gitlab.com/ee/ci/llms.txt" "devops" "gitlab-ci"
download_if_exists "https://docs.netlify.com/llms.txt" "devops" "netlify"
download_if_exists "https://railway.app/docs/llms.txt" "devops" "railway"
download_if_exists "https://docs.aws.amazon.com/llms.txt" "devops" "aws"
download_if_exists "https://cloud.google.com/docs/llms.txt" "devops" "gcp"
download_if_exists "https://docs.microsoft.com/en-us/azure/llms.txt" "devops" "azure"
download_if_exists "https://www.heroku.com/docs/llms.txt" "devops" "heroku"
download_if_exists "https://fly.io/docs/llms.txt" "devops" "fly-io"
download_if_exists "https://render.com/docs/llms.txt" "devops" "render"

# Tools & Utilities
echo "🛠️ Tools & Utilities..."
download_if_exists "https://www.typescriptlang.org/docs/llms.txt" "utilities" "typescript"
download_if_exists "https://eslint.org/docs/llms.txt" "utilities" "eslint"
download_if_exists "https://prettier.io/docs/llms.txt" "utilities" "prettier"
download_if_exists "https://vitejs.dev/docs/llms.txt" "utilities" "vite"
download_if_exists "https://turbo.build/pack/docs/llms.txt" "utilities" "turbopack"
download_if_exists "https://webpack.js.org/docs/llms.txt" "utilities" "webpack"
download_if_exists "https://rollupjs.org/docs/llms.txt" "utilities" "rollup"
download_if_exists "https://esbuild.github.io/docs/llms.txt" "utilities" "esbuild"
download_if_exists "https://git-scm.com/docs/llms.txt" "utilities" "git"
download_if_exists "https://docs.npmjs.com/llms.txt" "utilities" "npm"
download_if_exists "https://pnpm.io/docs/llms.txt" "utilities" "pnpm"
download_if_exists "https://yarnpkg.com/docs/llms.txt" "utilities" "yarn"
download_if_exists "https://bun.sh/docs/llms.txt" "utilities" "bun-pkg"

# Monitoring & Observability
echo "📈 Monitoring & Observability..."
download_if_exists "https://sentry.io/docs/llms.txt" "monitoring" "sentry"
download_if_exists "https://docs.datadoghq.com/llms.txt" "monitoring" "datadog"
download_if_exists "https://docs.newrelic.com/llms.txt" "monitoring" "new-relic"
download_if_exists "https://grafana.com/docs/llms.txt" "monitoring" "grafana"
download_if_exists "https://prometheus.io/docs/llms.txt" "monitoring" "prometheus"
download_if_exists "https://docs.honeycomb.io/llms.txt" "monitoring" "honeycomb"
download_if_exists "https://docs.lightstep.com/llms.txt" "monitoring" "lightstep"
download_if_exists "https://docs.getlitmus.io/llms.txt" "monitoring" "litmus"

# Logging & Tracing
echo "📝 Logging & Tracing..."
download_if_exists "https://www.elastic.co/guide/index.html/llms.txt" "monitoring" "elastic"
download_if_exists "https://docs.splunk.com/llms.txt" "monitoring" "splunk"
download_if_exists "https://docs.sumologic.com/llms.txt" "monitoring" "sumo-logic"
download_if_exists "https://docs.logz.io/llms.txt" "monitoring" "logz-io"
download_if_exists "https://smith.langchain.com/docs/llms.txt" "monitoring" "langsmith"

echo ""
echo "=============================================="
echo "📊 Summary"
echo "=============================================="
echo "Total URLs tested: $TOTAL"
echo "✅ Successfully downloaded: $SUCCESS"
echo "❌ Not found: $FAILED"
echo "Success rate: $((SUCCESS * 100 / TOTAL))%"
echo ""
echo "📄 Detailed results saved to: $LOG_FILE"
echo ""
echo "📁 Downloaded files by category:"
for dir in frontend backend ai-ml auth testing devops utilities monitoring; do
  count=$(ls "$dir"/*.txt 2>/dev/null | wc -l)
  if [ $count -gt 0 ]; then
    size=$(du -sh "$dir" 2>/dev/null | awk '{print $1}')
    echo "  $dir: $count files ($size)"
  fi
done
