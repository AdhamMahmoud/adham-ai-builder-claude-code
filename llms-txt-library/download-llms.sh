#!/bin/bash

# Download official llms.txt files from documentation

echo "📥 Downloading official llms.txt files..."

# Frontend
echo "Downloading frontend docs..."
curl -s -o frontend/nextjs.txt https://nextjs.org/docs/llms.txt && echo "✓ Next.js" || echo "✗ Next.js failed"
curl -s -o frontend/magic-ui.txt https://magicui.design/llms.txt && echo "✓ Magic UI" || echo "✗ Magic UI failed"

# AI/ML
echo "Downloading AI/ML docs..."
curl -s -o ai-ml/langchain.txt https://docs.langchain.com/llms.txt && echo "✓ LangChain" || echo "✗ LangChain failed"

# Testing for other popular sources
echo "Testing other sources..."
curl -s -I https://react.dev/llms.txt 2>/dev/null | head -1
curl -s -I https://tailwindcss.com/docs/llms.txt 2>/dev/null | head -1
curl -s -I https://ui.shadcn.com/llms.txt 2>/dev/null | head -1
curl -s -I https://vercel.com/docs/llms.txt 2>/dev/null | head -1

echo ""
echo "✅ Download complete! Check the folders for downloaded files."
