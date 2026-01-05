# AI Agent Frameworks

| Framework | Type | Best For | Docs |
|-----------|------|----------|------|
| **LangChain** | Multi-agent orchestration | Complex chains, RAG, memory | https://python.langchain.com |
| **LangGraph** | State machine graphs | Multi-step workflows, cycles | https://langchain-ai.github.io/langgraph |
| **CrewAI** | Role-based agents | Task delegation, specialized roles | https://docs.crewai.com |
| **Google ADK** | Agent toolkit | Google AI integration, Gemini | https://google.github.io/adk-toolkit |
| **AutoGen** | Multi-agent conversation | Code generation, debugging | https://microsoft.github.io/autogen |
| **OpenAI Agents SDK** | Assistant API wrapper | GPT-4 assistants, function calling | https://platform.openai.com/docs/assistants |
| **Haystack** | NLP pipelines | Search, QA, document processing | https://haystack.deepset.ai |
| **Semantic Kernel** | Plugin-based agents | Microsoft ecosystem | https://learn.microsoft.com/semantic-kernel |
| **SuperAGI** | Autonomous agents | Long-running autonomous tasks | https://superagi.com/docs |
| **BabyAGI** | Task-driven agents | Autonomous task generation | https://github.com/yoheinakajima/babyagi |

## Quick Comparison

### LangChain
- Pros: Mature, extensive integrations, large community
- Cons: Complex API, can be overkill
- Use: RAG, chatbots, document processing

### LangGraph
- Pros: Visual workflows, state management, cycles
- Cons: Newer, smaller ecosystem
- Use: Multi-step agents, human-in-loop

### CrewAI
- Pros: Simple role-based API, collaborative agents
- Cons: Less flexible than LangChain
- Use: Teams of specialized agents

### AutoGen
- Pros: Code-focused, Microsoft backing
- Cons: Python-heavy
- Use: Code generation, debugging agents

## Pattern: Agentic Workflow
1. Plan - Break down task
2. Execute - Run sub-tasks
3. Reflect - Evaluate results
4. Iterate - Retry if needed

## Pattern: RAG Agent
1. Retrieve - Vector search documents
2. Augment - Add context to prompt
3. Generate - LLM response
