# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Course OS is a comprehensive course development system implemented as Claude Code skills. It guides course creators through a structured 10-phase workflow, producing professional specifications and content following instructional design best practices.

## Architecture

### Three-Layer Context System

Course OS uses a layered architecture inspired by Agent OS:

1. **Standards Layer** (`.claude/standards/`) - Universal instructional design frameworks
2. **Skills Layer** (`.claude/skills/`) - Self-contained phase execution skills
3. **Commands Layer** (`.claude/commands/`) - Course management operations

### Configuration System

Projects are configured via `config.yml` with profile templates:
- `config-default.yml` - Full 10-phase workflow
- `config-mini.yml` - Condensed 7-phase for quick courses
- `config-workshop.yml` - 5-phase for live workshops

### Directory Structure

```
course-os/
├── config.yml                    # Root configuration
├── templates/
│   ├── init-course.sh            # Project initialization
│   ├── config-default.yml        # Full workflow profile
│   ├── config-mini.yml           # Quick course profile
│   └── config-workshop.yml       # Workshop profile
├── .claude/
│   ├── standards/                # Instructional design frameworks
│   │   ├── addie-framework.md
│   │   ├── blooms-taxonomy.md
│   │   ├── gagne-events.md
│   │   ├── kirkpatrick-metrics.md
│   │   └── merrills-principles.md
│   ├── skills/                   # Self-contained phase skills
│   │   ├── course-os/            # Master orchestrator
│   │   ├── course-import/        # Phase 1
│   │   ├── course-research/      # Phase 2
│   │   ├── course-discovery/     # Phase 3
│   │   ├── course-strategy/      # Phase 4
│   │   ├── course-architecture/  # Phase 5
│   │   ├── course-content/       # Phase 6
│   │   ├── course-scripts/       # Phase 7
│   │   ├── course-assessments/   # Phase 8
│   │   ├── course-media/         # Phase 9
│   │   └── course-production/    # Phase 10
│   ├── commands/                 # Management commands
│   │   ├── course/               # init, status, validate, export
│   │   └── phase/                # skip, redo, complete
│   └── quickref/                 # Quick reference cards (phase-1..10)
└── schemas/                      # YAML validation schemas
```

### Skill Design

Each skill is self-contained with:
- Enhanced YAML frontmatter (prerequisites, outputs, exports, frameworks)
- Inline condensed references (no separate supporting files)
- Export artifacts section for incremental handoffs
- Links to full standards when needed

## The 10 Phases

| Phase | Skill | Output | ADDIE |
|-------|-------|--------|-------|
| 1 | `/course-import` | Source catalog, gap analysis | Analysis |
| 2 | `/course-research` | Knowledge map, synthesis | Analysis |
| 3 | `/course-discovery` | Personas, positioning | Analysis |
| 4 | `/course-strategy` | Outcomes, format, metrics | Design |
| 5 | `/course-architecture` | Curriculum, learning paths | Design |
| 6 | `/course-content` | Lesson blueprints, activities | Development |
| 7 | `/course-scripts` | Scripts by content type | Development |
| 8 | `/course-assessments` | Quizzes, projects, rubrics | Development |
| 9 | `/course-media` | Shot lists, asset specs | Implementation |
| 10 | `/course-production` | Handoff package, exports | Implementation |

## Instructional Design Frameworks

Standards layer provides full references:

### ADDIE (Process)
- **Analysis** → Phases 1-3
- **Design** → Phases 4-5
- **Development** → Phases 6-8
- **Implementation** → Phases 9-10
- **Evaluation** → Quality gates throughout

### Bloom's Taxonomy (Outcomes)
All learning outcomes specify cognitive level:
Remember → Understand → Apply → Analyze → Evaluate → Create

### Gagné's 9 Events (Lesson Structure)
Each lesson addresses all 9 instructional events.

### Kirkpatrick (Evaluation)
Assessments map to 4 levels:
- Level 1: Reaction
- Level 2: Learning
- Level 3: Behavior
- Level 4: Results

### Merrill's Principles (Content)
Problem-centered, activation, demonstration, application, integration.

## Course Project Structure

```
<course-name>/
├── config.yml                    # Project configuration
├── specs/
│   ├── course.yaml               # Master specification
│   ├── progress.yaml             # Phase tracking
│   ├── outcomes.yaml             # Learning outcomes
│   ├── personas.yaml             # Learner personas
│   ├── curriculum.yaml           # Curriculum architecture
│   ├── assessments.yaml          # Assessment strategy
│   └── modules/                  # Per-module specs
├── content/
│   ├── scripts/                  # Production scripts
│   ├── lessons/                  # Lesson blueprints
│   ├── examples/                 # Case studies
│   ├── activities/               # Exercises
│   ├── assessments/              # Quiz/project content
│   └── resources/                # Curated resources
├── assets/                       # Media files
├── production/
│   ├── shot-lists/
│   ├── checklists/
│   │   └── phase-gates/          # Phase completion checklists
│   ├── handoff/                  # Incremental exports
│   │   ├── phase-1/
│   │   ├── phase-2/
│   │   └── ...
│   └── exports/                  # Platform exports
│       ├── universal/
│       ├── teachable/
│       ├── thinkific/
│       ├── scorm/
│       └── xapi/
└── .course-os/                   # Working files
    ├── imports/
    ├── research/
    └── reviews/
```

## Commands

### Initialize New Course
```bash
./templates/init-course.sh <course-name>                  # Default profile
./templates/init-course.sh <course-name> --profile mini   # Mini profile
./templates/init-course.sh --here <course-name>           # Current directory
```
Then run `/course-os` to begin development.

### Course Management
- `/course-os` - Start or resume development
- `/course-os status` - Check progress
- `/course-os validate` - Run quality checks
- `/course-os export <platform>` - Generate exports

### Phase Skills
- `/course-import` - Phase 1: Import existing materials
- `/course-research` - Phase 2: Deep topic research
- `/course-discovery` - Phase 3: Audience analysis
- `/course-strategy` - Phase 4: Define strategy
- `/course-architecture` - Phase 5: Design curriculum
- `/course-content` - Phase 6: Design content
- `/course-scripts` - Phase 7: Write scripts
- `/course-assessments` - Phase 8: Create assessments
- `/course-media` - Phase 9: Plan media
- `/course-production` - Phase 10: Generate package

### Phase Management
- `/phase skip` - Skip current phase with reason
- `/phase redo` - Redo completed phase
- `/phase complete` - Force-complete current phase

## Progress Tracking

Progress tracked in `specs/progress.yaml`:
- Phase status (pending/in_progress/completed/blocked)
- Timestamps
- Counts (lessons, scripts, etc.)
- Notes and blockers

Git tags mark phase completions:
```
phase-1-import
phase-2-research
...
phase-10-production
v1.0.0 (final)
```

## Quality Gates

Each phase includes quality validation:
- Completeness check
- Framework alignment
- Consistency with previous phases
- Quality score threshold

Phase gate checklists stored in `production/checklists/phase-gates/`.

## Incremental Exports

Each phase generates handoff artifacts in `production/handoff/phase-N/`:
- Enables stakeholder review after each phase
- Allows parallel work by different team members
- Provides checkpoints for project management

## Quick Reference Cards

`.claude/quickref/phase-N.md` provides:
- Key questions for the phase
- Output files and structure
- Quality gate checklist
- Command to run
- Next phase pointer

## Development Guidelines

When extending Course OS:

1. **Standards** go in `.claude/standards/`
2. **Skills** go in `.claude/skills/<skill-name>/SKILL.md` (self-contained)
3. **Commands** go in `.claude/commands/<category>/<command>.md`
4. **Quick refs** go in `.claude/quickref/`
5. **Templates** go in `templates/`
6. **Follow the YAML + Markdown pattern** for specs and content
7. **Maintain framework alignment** (ADDIE, Bloom's, etc.)
8. **Ask one question at a time** during phase execution
