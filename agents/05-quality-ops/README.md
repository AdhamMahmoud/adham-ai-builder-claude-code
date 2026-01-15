# 05 Quality & Operations

Agents for ensuring code quality, testing, and deployment.

## Agents

| Agent | Model | Description |
|-------|-------|-------------|
| [code-reviewer](./code-reviewer.md) | Opus | Security, performance, and best practices review |
| [testing-engineer](./testing-engineer.md) | Sonnet | Vitest, React Testing Library, Playwright E2E |
| [devops-engineer](./devops-engineer.md) | Sonnet | CI/CD, Vercel, Docker, monitoring |

## When to Use

- **Before merge**: Use `code-reviewer` for security and quality audit
- **Test coverage**: Use `testing-engineer` for unit, integration, E2E tests
- **Deployment**: Use `devops-engineer` for CI/CD and infrastructure

## Quality Checklist

### Code Review Focus
- [ ] Security vulnerabilities (OWASP Top 10)
- [ ] Performance bottlenecks
- [ ] Error handling coverage
- [ ] Type safety
- [ ] Code duplication
- [ ] Dependency concerns

### Testing Strategy
- [ ] Unit tests for utilities
- [ ] Integration tests for APIs
- [ ] Component tests for UI
- [ ] E2E tests for critical flows

### Deployment Checklist
- [ ] Environment variables configured
- [ ] Build succeeds
- [ ] Tests pass in CI
- [ ] Database migrations ready
- [ ] Rollback plan documented

## Integration with Spec-Kit

After `speckit-implement` completes:
```
speckit-implement → testing-engineer → code-reviewer → devops-engineer
```
