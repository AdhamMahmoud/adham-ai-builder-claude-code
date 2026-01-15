# 06 Meta Orchestration

Agents for intelligent routing and multi-agent coordination.

## Agents

| Agent | Model | Description |
|-------|-------|-------------|
| [adham-router](./adham-router.md) | Sonnet | Smart intent routing to optimal agent/workflow |
| [workflow-orchestrator](./workflow-orchestrator.md) | Opus | Multi-agent workflow coordination |

## When to Use

- **General requests**: Use `adham-router` (via `/adham` command) for automatic routing
- **Complex workflows**: Use `workflow-orchestrator` for multi-agent coordination

## Routing Logic

The `adham-router` analyzes intent and routes:

| Intent Pattern | Route |
|----------------|-------|
| "build [feature]" | Spec-Kit flow |
| "create component" | react-developer |
| "add AI feature" | ai-architect |
| "validate idea" | idea-validator |
| "review code" | code-reviewer |
| "deploy" | devops-engineer |
| "test" | testing-engineer |

## Workflow Patterns

### Sequential
```
Agent A → Agent B → Agent C
```

### Parallel
```
     ┌─► Agent A ─┐
Task ├─► Agent B ─┼─► Result
     └─► Agent C ─┘
```

### Feature Development (Default)
```
speckit-specify → speckit-plan → speckit-tasks → speckit-implement
                                                        │
                                         testing-engineer → code-reviewer
```
