# /adham

Smart Router - Auto-detect intent and route to appropriate agent with spec-driven development

## Input
$ARGUMENTS

## Task

Analyze the user request and intelligently route to the best workflow.

### Spec-Driven Development Flow (Default for Features)

For ANY feature request, new project, or significant development task, use the spec-kit flow:

```
1. speckit-constitution → Set up project principles (if .specify/ doesn't exist)
2. speckit-specify → Create feature specification from description
3. speckit-clarify → Resolve ambiguities (max 5 questions)
4. speckit-plan → Create technical implementation plan
5. speckit-tasks → Generate task breakdown
6. speckit-analyze → Verify consistency (optional)
7. speckit-implement → Execute implementation
```

**Trigger spec-kit flow when request includes:**
- "build", "create", "implement", "add feature"
- "new project", "new app", "new service"
- "plan", "design", "architect"
- Multi-step development work
- Any feature that touches multiple files/layers

**Skip to direct agent when:**
- Single file changes
- Quick fixes or debugging
- Code review requests
- Simple queries or lookups
- Explicit agent request (e.g., "use react-developer")

### Routing Matrix

| Intent | Primary Flow | Fallback Agent |
|--------|--------------|----------------|
| New feature/project | **spec-kit flow** | fullstack-developer |
| Build/implement | **spec-kit flow** | fullstack-developer |
| Plan/design | **spec-kit flow** | project-planner |
| React UI (simple) | react-developer | - |
| API endpoint (simple) | api-architect | - |
| Database schema | database-architect | - |
| Testing | testing-engineer | - |
| Deployment | devops-engineer | - |
| AI features | **spec-kit flow** → ai-architect | ai-architect |
| RAG systems | **spec-kit flow** → rag-engineer | rag-engineer |
| Multi-agent | **spec-kit flow** → agent-builder | agent-builder |
| Chatbots | **spec-kit flow** → chatbot-builder | chatbot-builder |
| Prompts | prompt-engineer | - |
| Idea validation | idea-validator | - |
| Launch/GTM | gtm-strategist | - |
| Pricing | monetization-advisor | - |
| Code review | code-reviewer | - |
| Debugging | fullstack-developer | - |
| Documentation | project-planner | - |

### Execution Flow

**For spec-kit eligible requests:**

1. Check if `.specify/` directory exists
   - If NO: Run `speckit-constitution` first to set up project

2. Run `speckit-specify` with user's feature description
   - Creates `.specify/specs/[feature]/spec.md`

3. Run `speckit-clarify` if spec has [NEEDS CLARIFICATION] markers
   - Max 5 targeted questions
   - Updates spec with answers

4. Run `speckit-plan` to create implementation plan
   - Creates `plan.md`, `data-model.md`, `contracts/`

5. Run `speckit-tasks` to generate task breakdown
   - Creates `tasks.md` with dependency-ordered tasks

6. Run `speckit-implement` to execute
   - Phase-by-phase implementation
   - Tracks progress in tasks.md

**For direct agent requests:**

Route directly to the appropriate agent and execute their workflow.

### Token Optimization

The spec-kit flow saves tokens by:
- Front-loading decisions in specification phase
- Limiting clarifications to 5 questions max
- Structured outputs reduce interpretation overhead
- Constitution prevents scope creep
- Tasks enable parallel execution

### Examples

```bash
# Triggers spec-kit flow
/adham build user authentication with OAuth
/adham create a dashboard for analytics
/adham implement subscription billing
/adham new AI chatbot for support

# Direct agent routing
/adham fix the bug in login form
/adham review this PR
/adham optimize this database query
/adham what does this code do
```

Execute the appropriate workflow based on the analysis above.
