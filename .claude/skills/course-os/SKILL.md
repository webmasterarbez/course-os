---
name: course-os
description: Use when creating, developing, or resuming educational course development. This is the master orchestrator for Course OS - a 10-phase system based on ADDIE, Bloom's Taxonomy, Gagné's 9 Events, and Kirkpatrick evaluation. Triggers on "/course-os", "create a course", "develop a course", "build curriculum", "start course project", or "resume course development".
frameworks: [addie, blooms-taxonomy, gagne-events, kirkpatrick-metrics, merrills-principles]
---

# Course OS - Master Orchestrator

Orchestrate complete course development through 10 structured phases.

## Quick Start

1. Check if `specs/course.yaml` exists in current directory
2. If NO: Ask user for course name, then run `./templates/init-course.sh --here "<name>"`
3. If YES: Read `specs/progress.yaml` and resume from current phase

## Configuration

Read `config.yml` for profile settings:
- **default**: Full 10-phase development
- **mini**: 7 phases for quick courses
- **workshop**: 5 phases for live programs

## The 10 Phases

| Phase | Skill | Purpose | ADDIE Stage |
|-------|-------|---------|-------------|
| 1 | `/course-import` | Source Collection & Import | Analysis |
| 2 | `/course-research` | Deep Topic Research | Analysis |
| 3 | `/course-discovery` | Audience & Market Discovery | Analysis |
| 4 | `/course-strategy` | Course Strategy & Outcomes | Design |
| 5 | `/course-architecture` | Curriculum Architecture | Design |
| 6 | `/course-content` | Content Design | Development |
| 7 | `/course-scripts` | Script Development | Development |
| 8 | `/course-assessments` | Assessment Design | Development |
| 9 | `/course-media` | Media Production Planning | Implementation |
| 10 | `/course-production` | Production Package | Implementation |

## Execution Flow

### New Project

```
1. Ask: "What is the name of your course?"
2. Ask: "Which profile? (default/mini/workshop)"
3. Run: ./templates/init-course.sh --here "<course-name>"
4. Start: /course-import (Phase 1)
```

### Existing Project

```
1. Read: specs/progress.yaml
2. Read: config.yml for profile
3. Display: Current phase status
4. Resume: Invoke appropriate phase skill
```

## Phase Navigation

After each phase completes:
1. Update `specs/progress.yaml`
2. Update `production/handoff/phase-N-*.yaml` (incremental export)
3. Git commit with phase tag
4. Proceed to next phase skill

## Commands

| Command | Purpose |
|---------|---------|
| `/course-os` | Start or resume development |
| `/course status` | Show current progress |
| `/course validate` | Run quality checks |
| `/course export` | Generate platform exports |
| `/phase skip` | Skip current phase |
| `/phase redo N` | Redo completed phase |
| `/phase complete` | Force-complete current phase |

## Framework Integration

Course OS integrates five instructional design frameworks:

| Framework | Used In | Purpose |
|-----------|---------|---------|
| ADDIE | All phases | Process structure |
| Bloom's Taxonomy | Phase 4 | Learning outcomes |
| Gagné's 9 Events | Phase 5-6 | Lesson structure |
| Kirkpatrick | Phase 4, 8 | Evaluation metrics |
| Merrill's Principles | Phase 6 | Content design |

> Full references: `.claude/standards/`

## Quality Gates

Each phase has quality validation:
- **strict**: Block on critical + major issues
- **relaxed**: Block only on critical issues
- **none**: Report only

Run `/course validate` to check current status.

## Incremental Exports

Handoff artifacts built throughout development:
- Phase 1: `production/handoff/phase-1-sources.yaml`
- Phase 3: `production/handoff/phase-3-audience.yaml`
- Phase 4: `production/handoff/phase-4-strategy.yaml`
- Phase 5: `production/handoff/phase-5-curriculum.yaml`
- Phase 10: `production/handoff/master-handoff.yaml`

## Progress Tracking

Git tags mark phase completions:
```
phase-1-import
phase-2-research
...
phase-10-production
v1.0.0 (final)
```
