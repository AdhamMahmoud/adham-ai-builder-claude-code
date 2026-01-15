# 04 Spec-Driven Development

Spec-Kit agents for structured, specification-first development. This workflow saves tokens and prevents rework by front-loading decisions.

## The Spec-Kit Flow

```
Constitution → Specify → Clarify → Plan → Tasks → Implement
     │            │          │        │       │         │
     ▼            ▼          ▼        ▼       ▼         ▼
 Principles   spec.md    Q&A     plan.md  tasks.md   Code
```

## Agents

| Agent | Purpose | Output |
|-------|---------|--------|
| [speckit-constitution](./speckit-constitution.md) | Project principles & constraints | `.specify/memory/constitution.md` |
| [speckit-specify](./speckit-specify.md) | Feature specification from description | `.specify/specs/[feature]/spec.md` |
| [speckit-clarify](./speckit-clarify.md) | Resolve ambiguities (max 5 questions) | Updated spec with answers |
| [speckit-plan](./speckit-plan.md) | Technical implementation plan | `plan.md`, `data-model.md`, `contracts/` |
| [speckit-tasks](./speckit-tasks.md) | Dependency-ordered task breakdown | `tasks.md` with phases |
| [speckit-analyze](./speckit-analyze.md) | Consistency & gap analysis | Analysis report |
| [speckit-checklist](./speckit-checklist.md) | Domain-specific validation | `checklists/[domain].md` |
| [speckit-implement](./speckit-implement.md) | Execute implementation | Working code |

## When to Use

**Always use spec-kit for:**
- New features requiring multiple files
- Features touching database + API + frontend
- Complex business logic
- Features requiring external integrations

**Skip spec-kit for:**
- Single-file changes
- Bug fixes
- Simple UI tweaks
- Quick experiments

## Workflow Commands

```bash
# Full workflow
/adham build [feature description]

# Individual steps
speckit-constitution  # Once per project
speckit-specify       # For each feature
speckit-clarify       # If ambiguities exist
speckit-plan          # Technical planning
speckit-tasks         # Task breakdown
speckit-implement     # Execute tasks
```

## Benefits

- **Token efficiency**: Front-load decisions in spec phase
- **No scope creep**: Constitution defines boundaries
- **Quality**: Checklists validate requirements
- **Traceability**: Specs link to tasks to code
- **Parallelization**: Tasks marked with `[P]` can run in parallel
