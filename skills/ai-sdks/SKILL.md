---
name: ai-sdks
description: AI SDK comparison including Vercel AI SDK, OpenAI, Anthropic, Google AI, Groq, and others with streaming chat patterns and function calling. Use when integrating AI models into applications.
---

# AI SDKs

| SDK | Provider | Models | Streaming | Best For | Docs |
|-----|----------|--------|-----------|----------|------|
| **Vercel AI SDK** | Multi-provider | All | Yes | Next.js, React, streaming | https://sdk.vercel.ai |
| **OpenAI SDK** | OpenAI | GPT-4, o1, o3 | Yes | Chat, assistants, embeddings | https://platform.openai.com/docs |
| **Anthropic SDK** | Anthropic | Claude 3.5, Opus | Yes | Claude, function calling | https://docs.anthropic.com |
| **Google AI SDK** | Google | Gemini | Yes | Gemini, multimodal | https://ai.google.dev |
| **Replicate SDK** | Replicate | Open-source | No | Image gen, fine-tuning | https://replicate.com/docs |
| **Together AI** | Together | Open-source | Yes | Fast inference, cheaper | https://docs.together.ai |
| **Groq** | Groq | Llama, Mixtral | Yes | Ultra-fast inference | https://console.groq.com/docs |
| **Cohere SDK** | Cohere | Command | Yes | Search, embeddings | https://docs.cohere.com |
| **Mistral SDK** | Mistral | Mistral, Mixtral | Yes | European AI, open models | https://docs.mistral.ai |
| **Hugging Face** | HF | 100k+ models | Varies | Open models, inference API | https://huggingface.co/docs |

## Vercel AI SDK (Recommended for Next.js)

### Setup
```bash
npm install ai @ai-sdk/openai @ai-sdk/anthropic
```

### Streaming Chat
```ts
// app/api/chat/route.ts
import { openai } from '@ai-sdk/openai'
import { streamText } from 'ai'

export async function POST(req: Request) {
  const { messages } = await req.json()

  const result = streamText({
    model: openai('gpt-4'),
    messages
  })

  return result.toDataStreamResponse()
}
```

### Client Component
```tsx
'use client'
import { useChat } from 'ai/react'

function Chat() {
  const { messages, input, handleInputChange, handleSubmit } = useChat()

  return (
    <div>
      {messages.map(m => (
        <div key={m.id}>{m.role}: {m.content}</div>
      ))}
      <form onSubmit={handleSubmit}>
        <input value={input} onChange={handleInputChange} />
      </form>
    </div>
  )
}
```

### Function Calling
```ts
import { z } from 'zod'

const result = await generateText({
  model: openai('gpt-4'),
  prompt: 'Get weather for SF',
  tools: {
    getWeather: {
      description: 'Get weather for a location',
      parameters: z.object({
        location: z.string()
      }),
      execute: async ({ location }) => {
        return { temp: 72, location }
      }
    }
  }
})
```

## OpenAI Direct

```ts
import OpenAI from 'openai'

const openai = new OpenAI({ apiKey: process.env.OPENAI_API_KEY })

const completion = await openai.chat.completions.create({
  model: 'gpt-4',
  messages: [{ role: 'user', content: 'Hello' }],
  stream: true
})

for await (const chunk of completion) {
  process.stdout.write(chunk.choices[0]?.delta?.content || '')
}
```

## Anthropic Direct

```ts
import Anthropic from '@anthropic-ai/sdk'

const anthropic = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY })

const message = await anthropic.messages.create({
  model: 'claude-3-5-sonnet-20241022',
  max_tokens: 1024,
  messages: [{ role: 'user', content: 'Hello' }]
})
```

## Model Comparison

### GPT-4 Turbo
- Best: Reasoning, code, broad knowledge
- Cost: $$$$
- Speed: Medium

### Claude 3.5 Sonnet
- Best: Long context, writing, analysis
- Cost: $$$
- Speed: Fast

### Gemini 1.5 Pro
- Best: Multimodal, 1M context window
- Cost: $$
- Speed: Medium

### Llama 3.1 (via Groq)
- Best: Open source, fast inference
- Cost: $
- Speed: Ultra-fast

## Rate Limits
- OpenAI: 10k RPM (paid)
- Anthropic: 5k RPM
- Groq: 30 RPM (free), 6k RPM (paid)
- Together: 1k RPM

## Docs
- https://sdk.vercel.ai
- https://platform.openai.com/docs
- https://docs.anthropic.com
