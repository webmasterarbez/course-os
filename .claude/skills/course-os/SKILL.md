# course-os

Use this skill when the user wants to create, develop, or resume work on an educational course. Triggers on: "/course-os", "create a course", "start course development", "course creation", "build a course", "develop curriculum".

## Overview

Course OS is a comprehensive course development system that guides you through 10 structured phases to create professional educational content. It enforces instructional design best practices (ADDIE, Bloom's Taxonomy, Gagné's 9 Events, Kirkpatrick, Merrill's Principles) while supporting any course type and format.

## Execution Instructions

**IMPORTANT: Follow these steps exactly when this skill is invoked.**

### Step 1: Check for Existing Course Project

First, check if `specs/course.yaml` exists in the current working directory.

**If `specs/course.yaml` EXISTS:**
- This is an existing course project
- Read `specs/progress.yaml` to determine current phase
- Resume from the current phase (skip to Step 3)

**If `specs/course.yaml` does NOT exist:**
- This is a fresh Course OS clone - need to initialize
- Proceed to Step 2

### Step 2: Initialize New Course Project

Ask the user: **"What is the name of your course?"**

Wait for their response, then run the initialization **in the current directory**:

```bash
./templates/init-course.sh --here "<course-name>"
```

This initializes the course project in the current directory (adds specs/, content/, assets/, etc.).

After it completes, **immediately proceed to Step 3** to start Phase 1.

### Step 3: Resume/Start Course Development

Once in an initialized course project (specs/course.yaml exists):

1. Read `specs/progress.yaml` to check current phase status
2. Display current progress summary
3. Continue with the appropriate phase skill:
   - Phase 1: `/course-import`
   - Phase 2: `/course-research`
   - Phase 3: `/course-discovery`
   - Phase 4: `/course-strategy`
   - Phase 5: `/course-architecture`
   - Phase 6: `/course-content`
   - Phase 7: `/course-scripts`
   - Phase 8: `/course-assessments`
   - Phase 9: `/course-media`
   - Phase 10: `/course-production`

## The 10 Phases

| Phase | Skill | Purpose |
|-------|-------|---------|
| 1 | `/course-import` | Source Collection & Import |
| 2 | `/course-research` | Deep Topic Research |
| 3 | `/course-discovery` | Audience & Market Discovery |
| 4 | `/course-strategy` | Course Strategy |
| 5 | `/course-architecture` | Curriculum Architecture |
| 6 | `/course-content` | Content Design |
| 7 | `/course-scripts` | Script Development |
| 8 | `/course-assessments` | Assessment Design |
| 9 | `/course-media` | Media Production Planning |
| 10 | `/course-production` | Production Package |

## Output Structure

```
<course-name>/
├── specs/
│   ├── course.yaml           # Master course specification
│   ├── progress.yaml         # Progress tracking
│   ├── outcomes.yaml         # Learning outcomes
│   ├── personas.yaml         # Learner personas
│   ├── curriculum.yaml       # Curriculum architecture
│   ├── assessments.yaml      # Assessment specifications
│   └── modules/              # Per-module specs
├── content/
│   ├── scripts/              # Production scripts
│   ├── lessons/              # Lesson blueprints
│   ├── assessments/          # Quizzes, projects, rubrics
│   ├── examples/             # Case studies
│   ├── activities/           # Exercises
│   └── resources/            # Curated resources
├── assets/
│   ├── images/
│   ├── videos/
│   ├── audio/
│   └── downloads/
├── production/
│   ├── shot-lists/
│   ├── checklists/
│   ├── handoff/
│   └── exports/
└── .course-os/
    ├── imports/              # Imported source materials
    ├── research/             # Research outputs
    └── reviews/              # Quality reviews
```

## Instructional Design Frameworks

Course OS integrates these frameworks throughout:

### ADDIE (Process Structure)
- **Analysis** → Phases 1-3 (Import, Research, Discovery)
- **Design** → Phases 4-5 (Strategy, Architecture)
- **Development** → Phases 6-8 (Content, Scripts, Assessments)
- **Implementation** → Phase 9-10 (Media, Production)
- **Evaluation** → Built into quality gates

### Bloom's Taxonomy (Learning Objectives)
All learning outcomes must specify cognitive level:
1. Remember - recall facts
2. Understand - explain concepts
3. Apply - use in new situations
4. Analyze - break down components
5. Evaluate - justify decisions
6. Create - produce new work

### Gagné's 9 Events (Lesson Structure)
Each lesson should address:
1. Gain attention
2. State objectives
3. Recall prior learning
4. Present content
5. Provide guidance
6. Elicit performance
7. Provide feedback
8. Assess performance
9. Enhance retention/transfer

### Kirkpatrick (Evaluation)
Assessments mapped to:
- Level 1: Reaction (satisfaction)
- Level 2: Learning (knowledge)
- Level 3: Behavior (application)
- Level 4: Results (outcomes)

### Merrill's Principles (Content Design)
- Problem-centered learning
- Activation of prior knowledge
- Demonstration of skills
- Application of skills
- Integration into real-world

## Quality Gates

Each phase must pass quality validation before proceeding:

1. **Completeness check** - All required outputs present
2. **Framework alignment** - Meets instructional design standards
3. **Consistency check** - Aligns with previous phases
4. **Quality score** - Minimum threshold met

## Accessibility Standards

All content must meet:
- **WCAG 2.1 AA** - Technical accessibility
- **UDL Principles** - Universal Design for Learning

## Version Control

- Commit after each phase completion
- Tag releases: `phase-1-import`, `phase-2-research`, etc.
- Final release: `v1.0.0`

## Commands

- `/course-os` - Start or resume full course development
- `/course-os status` - Show current progress
- `/course-os validate` - Run quality checks
