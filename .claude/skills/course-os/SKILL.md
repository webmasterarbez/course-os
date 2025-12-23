---
name: course-os
description: Use when creating, developing, or resuming educational course development. This is the master orchestrator for Course OS - a 10-phase system based on ADDIE, Bloom's Taxonomy, Gagné's 9 Events, and Kirkpatrick evaluation. Triggers on "/course-os", "create a course", "develop a course", "build curriculum", "start course project", or "resume course development".
---

# Course OS - Master Orchestrator

Orchestrate complete course development through 10 structured phases.

## Quick Start

1. Check if `specs/course.yaml` exists in current directory
2. If NO: Ask user for course name, then run `./templates/init-course.sh --here "<name>"`
3. If YES: Read `specs/progress.yaml` and resume from current phase

## The 10 Phases

| Phase | Skill | Purpose |
|-------|-------|---------|
| 1 | `/course-import` | Source Collection & Import |
| 2 | `/course-research` | Deep Topic Research |
| 3 | `/course-discovery` | Audience & Market Discovery |
| 4 | `/course-strategy` | Course Strategy & Outcomes |
| 5 | `/course-architecture` | Curriculum Architecture |
| 6 | `/course-content` | Content Design |
| 7 | `/course-scripts` | Script Development |
| 8 | `/course-assessments` | Assessment Design |
| 9 | `/course-media` | Media Production Planning |
| 10 | `/course-production` | Production Package |

## Execution Flow

### New Project
```
Ask: "What is the name of your course?"
Run: ./templates/init-course.sh --here "<course-name>"
Start: /course-import (Phase 1)
```

### Existing Project
```
Read: specs/progress.yaml
Display: Current phase status
Resume: Invoke appropriate phase skill
```

## Phase Navigation

After each phase completes:
1. Update `specs/progress.yaml`
2. Git commit with phase tag
3. Proceed to next phase skill

## Commands

- `/course-os` - Start or resume course development
- `/course-os status` - Show current progress
- `/course-os validate` - Run quality checks

See `./instructional-design-frameworks.md` for framework details.
See `./project-structure.md` for output structure.
