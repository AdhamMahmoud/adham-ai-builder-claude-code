# Commands Reference

19 commands for quick task execution. Commands route to specialized agents.

## Entry Point

| Command | Description |
|---------|-------------|
| `/adham [request]` | Smart router - auto-detects intent and routes appropriately |

## Development Commands

| Command | Description | Routes To |
|---------|-------------|-----------|
| `/build [feature]` | Full feature implementation | fullstack-developer (or spec-kit flow) |
| `/component [name]` | Create React component | react-developer |
| `/api [endpoint]` | Design/implement API endpoint | api-architect |
| `/db [operation]` | Database schema or query | database-architect |
| `/test [target]` | Write tests | testing-engineer |
| `/deploy [platform]` | Deployment configuration | devops-engineer |

## AI Commands

| Command | Description | Routes To |
|---------|-------------|-----------|
| `/ai [feature]` | AI/ML feature design | ai-architect |
| `/rag [pipeline]` | RAG pipeline setup | rag-engineer |
| `/agent [spec]` | Multi-agent system | agent-builder |
| `/chatbot [spec]` | Conversational AI | chatbot-builder |
| `/prompt [task]` | Prompt engineering | prompt-engineer |

## Business Commands

| Command | Description | Routes To |
|---------|-------------|-----------|
| `/idea [concept]` | Validate business idea | idea-validator |
| `/plan [project]` | Project planning | project-planner |
| `/launch [product]` | Go-to-market strategy | gtm-strategist |
| `/monetize [product]` | Pricing strategy | monetization-advisor |

## Utility Commands

| Command | Description | Routes To |
|---------|-------------|-----------|
| `/review [code]` | Code review | code-reviewer |
| `/debug [issue]` | Debug issue | fullstack-developer |
| `/docs [target]` | Documentation | project-planner |

## Usage Examples

```bash
# Smart routing (recommended)
/adham build user authentication with OAuth

# Direct commands
/component UserProfile with avatar and edit button
/api POST /users with validation
/db create users table with email and password
/test UserProfile component
/review src/components/UserProfile.tsx

# AI features
/ai add document search with RAG
/chatbot customer support with memory
/prompt optimize for code generation

# Business
/idea SaaS for freelancer invoicing
/launch prepare for Product Hunt
/monetize freemium with usage limits
```

## When to Use What

| Scenario | Command |
|----------|---------|
| New feature (complex) | `/adham build ...` (triggers spec-kit) |
| Quick component | `/component ...` |
| Quick API endpoint | `/api ...` |
| Code quality check | `/review ...` |
| Validate idea first | `/idea ...` |
| Prepare for launch | `/launch ...` |
