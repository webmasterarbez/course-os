# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Course OS is a comprehensive course development system implemented as Claude Code skills. It guides course creators through a structured 10-phase workflow, producing professional specifications and content following instructional design best practices.

## Architecture

### Skill Structure
Course OS uses a hybrid skill architecture:
- **Master skill**: `/course-os` - Orchestrates full course development
- **Phase skills**: Independent skills for each of the 10 phases

### Skills Location
All skills are in `.claude/skills/`:
```
.claude/skills/
├── course-os/           # Master orchestrator
├── course-import/       # Phase 1: Source Collection
├── course-research/     # Phase 2: Deep Research
├── course-discovery/    # Phase 3: Audience & Market
├── course-strategy/     # Phase 4: Course Strategy
├── course-architecture/ # Phase 5: Curriculum Design
├── course-content/      # Phase 6: Content Design
├── course-scripts/      # Phase 7: Script Development
├── course-assessments/  # Phase 8: Assessment Design
├── course-media/        # Phase 9: Media Planning
└── course-production/   # Phase 10: Production Package
```

### Output Format
Course projects use hybrid YAML + Markdown:
- **specs/**: YAML specifications (machine-readable structure)
- **content/**: Markdown content (human-readable materials)
- **production/**: Production assets and checklists

## The 10 Phases

| Phase | Skill | Output |
|-------|-------|--------|
| 1 | `/course-import` | Source catalog, gap analysis |
| 2 | `/course-research` | Knowledge map, synthesis |
| 3 | `/course-discovery` | Personas, positioning |
| 4 | `/course-strategy` | Outcomes, format, metrics |
| 5 | `/course-architecture` | Curriculum, learning paths |
| 6 | `/course-content` | Lesson blueprints, activities |
| 7 | `/course-scripts` | Scripts by content type |
| 8 | `/course-assessments` | Quizzes, projects, rubrics |
| 9 | `/course-media` | Shot lists, asset specs |
| 10 | `/course-production` | Handoff package, exports |

## Instructional Design Frameworks

Course OS integrates these frameworks:

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
├── specs/
│   ├── course.yaml           # Master specification
│   ├── progress.yaml         # Phase tracking
│   ├── outcomes.yaml         # Learning outcomes
│   ├── personas.yaml         # Learner personas
│   ├── curriculum.yaml       # Curriculum architecture
│   ├── assessments.yaml      # Assessment strategy
│   └── modules/              # Per-module specs
├── content/
│   ├── scripts/              # Production scripts
│   ├── lessons/              # Lesson blueprints
│   ├── examples/             # Case studies
│   ├── activities/           # Exercises
│   ├── assessments/          # Quiz/project content
│   └── resources/            # Curated resources
├── assets/                   # Media files
├── production/               # Production materials
│   ├── shot-lists/
│   ├── checklists/
│   ├── handoff/
│   └── exports/              # Platform exports
└── .course-os/               # Working files
    ├── imports/
    ├── research/
    └── reviews/
```

## Key Features

### Deep Research (Phase 2)
Multi-pass research strategy:
1. Broad landscape scan
2. Deep dive per subtopic
3. Gap filling from Phase 1
4. Synthesis and knowledge mapping

### Smart Templates
No fixed templates - structure generated based on research findings and course requirements.

### Adaptive Scripts (Phase 7)
Script format adapts to content type:
- Video → Full script + visual cues
- Screencast → Voiceover + action cues
- Slides → Speaker notes
- Live → Facilitation guide

### Platform Exports (Phase 10)
Supports multiple output formats:
- Universal (Markdown/YAML)
- Teachable, Thinkific (platform-specific)
- SCORM, xAPI (LMS standards)
- Localization packages

### Accessibility
Built-in compliance:
- WCAG 2.1 AA
- Universal Design for Learning (UDL)

## Commands

### Start New Course
```bash
./templates/init-course.sh <course-name>
cd <course-name>
```
Then run `/course-os` to begin development.

### Resume Course Development
```bash
cd <course-name>
# Run /course-os to resume, or specific phase skill
```

### Phase Skills
- `/course-import` - Import existing materials
- `/course-research` - Deep topic research
- `/course-discovery` - Audience analysis
- `/course-strategy` - Define strategy
- `/course-architecture` - Design curriculum
- `/course-content` - Design content
- `/course-scripts` - Write scripts
- `/course-assessments` - Create assessments
- `/course-media` - Plan media
- `/course-production` - Generate package

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

## Development Guidelines

When extending Course OS:

1. **New skills** go in `.claude/skills/<skill-name>/SKILL.md`
2. **Templates** go in `templates/`
3. **Schemas** go in `schemas/`
4. **Follow the YAML + Markdown pattern** for specs and content
5. **Maintain framework alignment** (ADDIE, Bloom's, etc.)
6. **Ask one question at a time** during phase execution
