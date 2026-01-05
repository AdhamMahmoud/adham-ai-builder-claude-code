# Chatbot & No-Code AI Tools

| Tool | Type | Best For | Pricing | Docs |
|------|------|----------|---------|------|
| **Flowise** | Visual builder | No-code RAG, chains | Open source | https://docs.flowiseai.com |
| **Langflow** | Visual builder | Drag-drop LangChain | Open source | https://docs.langflow.org |
| **Botpress** | Platform | Production chatbots, integrations | Free/Paid | https://botpress.com/docs |
| **Rasa** | Framework | Custom NLU, on-prem | Open source | https://rasa.com/docs |
| **Voiceflow** | Platform | Conversational design, voice | Free/Paid | https://docs.voiceflow.com |
| **Stack AI** | Platform | No-code AI apps, workflows | Paid | https://docs.stack-ai.com |
| **Dust** | Platform | Company assistants, tools | Paid | https://docs.dust.tt |
| **ChatBase** | Platform | Website chatbots | Free/Paid | https://chatbase.co |
| **CustomGPT** | Platform | Business chatbots | Paid | https://customgpt.ai |
| **Dante AI** | Platform | Website AI chat | Paid | https://dante-ai.com |

## Flowise

### Features
- Visual LangChain builder
- RAG workflows
- API endpoints
- Self-hosted

### Use Cases
- Document Q&A
- Customer support
- Internal knowledge base

### Install
```bash
npm install -g flowise
npx flowise start
```

## Langflow

### Features
- Drag-drop interface
- LangChain components
- Export to code
- Templates

### Use Cases
- Rapid prototyping
- Non-technical teams
- Complex chains

### Install
```bash
pip install langflow
langflow run
```

## Botpress

### Features
- Multi-channel (web, WhatsApp, Telegram)
- Visual flow builder
- Analytics
- Integrations (CRM, DB)

### Use Cases
- Customer service
- Lead generation
- E-commerce support

### Setup
```bash
npm install -g @botpress/cli
bp init
```

## Rasa

### Features
- Custom NLU
- Dialog management
- On-premise
- Python-based

### Use Cases
- Enterprise chatbots
- Privacy-sensitive data
- Custom NLU models

### Install
```bash
pip install rasa
rasa init
```

## Feature Comparison

| Feature | Flowise | Langflow | Botpress | Rasa |
|---------|---------|----------|----------|------|
| Visual Builder | Yes | Yes | Yes | No |
| Self-hosted | Yes | Yes | Yes | Yes |
| RAG Built-in | Yes | Yes | No | No |
| Integrations | Medium | Medium | High | Medium |
| Learning Curve | Low | Low | Medium | High |
| Customization | Medium | Medium | High | Very High |

## Quick Start: Flowise RAG

1. Start Flowise
2. Create flow:
   - Document Loader → Text Splitter → Embeddings → Vector Store
   - Vector Store → Retriever → LLM → Output
3. Upload documents
4. Test queries
5. Deploy API

## Quick Start: Botpress Customer Support

1. Create bot
2. Design flows:
   - Greeting → Identify issue → Route to agent/FAQ
3. Connect channels (Slack, WhatsApp)
4. Train intents
5. Deploy

## Chatbot Patterns

### FAQ Bot
- Match question → Return answer
- Vector search for similar questions

### Support Bot
- Classify intent → Route to solution
- Escalate to human if needed

### Lead Gen Bot
- Collect info → Qualify lead → Book meeting
- CRM integration

### RAG Bot
- Query → Retrieve docs → Generate answer
- Citation of sources

## Integration Channels
- Website widget
- WhatsApp Business
- Telegram
- Slack
- Discord
- Facebook Messenger
- SMS

## Docs
- https://docs.flowiseai.com
- https://docs.langflow.org
- https://botpress.com/docs
- https://rasa.com/docs
