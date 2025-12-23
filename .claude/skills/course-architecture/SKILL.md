---
name: course-architecture
description: Use for Phase 5 of Course OS - designing complete curriculum structure including modules, lessons, sequencing, learning paths, and outcome mapping. Triggers on "/course-architecture", "design curriculum", "structure modules", "lesson sequencing", or after completing Phase 4.
prerequisites: [course-strategy]
outputs: [specs/curriculum.yaml, specs/modules/]
exports: [phase-5-curriculum.yaml]
frameworks: [gagne-events]
---

# Phase 5: Curriculum Architecture

Design the complete learning structure: modules, lessons, sequencing, and paths.

## Prerequisites

- Phase 4 complete
- `specs/outcomes.yaml` exists
- `specs/format.yaml` exists

## Process

### Step 1: Review Strategy Inputs

Review outcomes and format from Phase 4.

### Step 2: Design Module Structure

Create `specs/curriculum.yaml`:

```yaml
curriculum:
  modules:
    - id: module-01
      title: ""
      description: ""
      outcomes: [outcome-01, outcome-02]
      duration: ""
      lessons: []
      prerequisites: []  # Other modules

    - id: module-02
      title: ""
      description: ""
      outcomes: [outcome-03]
      duration: ""
      lessons: []
      prerequisites: [module-01]

  outcome_mapping:
    outcome-01: [module-01, module-03]
    outcome-02: [module-02]

  learning_paths:
    - id: path-01
      name: "Complete Path"
      modules: [module-01, module-02, module-03]

    - id: path-02
      name: "Fast Track"
      modules: [module-01, module-03]
```

### Step 3: Design Lessons

For each module, create detailed lesson specs in `specs/modules/`:

```yaml
# specs/modules/module-01.yaml
module:
  id: module-01
  title: ""

lessons:
  - id: lesson-01
    title: ""
    type: instruction|demonstration|practice|assessment
    duration: ""
    objectives:  # Specific to this lesson
      - ""
    gagne_events:  # Which of the 9 events emphasized
      attention: ""
      objectives: ""
      recall: ""
      content: ""
      guidance: ""
      practice: ""
      feedback: ""
      assessment: ""
      retention: ""
```

**Quick Reference - Gagné's 9 Events:**

| # | Event | Purpose | Example |
|---|-------|---------|---------|
| 1 | Gain Attention | Focus learner | Hook, surprising fact |
| 2 | State Objectives | Set expectations | "You'll learn to..." |
| 3 | Recall Prior Learning | Activate knowledge | Review, connection |
| 4 | Present Content | Deliver information | Explanation, demo |
| 5 | Provide Guidance | Support learning | Tips, common mistakes |
| 6 | Elicit Performance | Practice | Exercises, activities |
| 7 | Provide Feedback | Correct/reinforce | Immediate feedback |
| 8 | Assess Performance | Verify learning | Quiz, demonstration |
| 9 | Enhance Retention | Transfer | Summary, real-world |

**Lesson Types & Event Emphasis:**
- **Instruction**: Events 1-5, 9 (heavy on presentation)
- **Demonstration**: Events 1-4, 6, 9 (show then do)
- **Practice**: Events 3, 6, 7, 9 (heavy on practice)
- **Assessment**: Events 3, 8, 9 (formal assessment)

> Full reference: `.claude/standards/gagne-events.md`

### Step 4: Map Outcomes to Modules

Verify every outcome from Phase 4 maps to at least one module:

```yaml
outcome_mapping:
  outcome-01: [module-01, module-03]  # Introduced and reinforced
  outcome-02: [module-02]             # Single module focus
  outcome-03: [module-02, module-04]  # Progressive development
```

### Step 5: Define Learning Paths

If multiple paths exist:

```yaml
learning_paths:
  - id: path-complete
    name: "Complete Course"
    modules: [module-01, module-02, module-03, module-04, module-05]
    duration: "6 hours"

  - id: path-fast
    name: "Fast Track"
    modules: [module-01, module-03, module-05]
    duration: "3 hours"
    description: "For learners with prior experience"
```

### Step 6: Sequence Validation

Verify:
- [ ] Prerequisites respected (no module requires future module)
- [ ] Cognitive load balanced (varied lesson types)
- [ ] Practice follows instruction
- [ ] Assessments placed appropriately
- [ ] Duration estimates realistic

## Outputs

| File | Purpose |
|------|---------|
| `specs/curriculum.yaml` | Master curriculum structure |
| `specs/modules/*.yaml` | Per-module lesson specs |

## Export Artifacts

After completing, add to `production/handoff/`:

```yaml
# production/handoff/phase-5-curriculum.yaml
curriculum:
  modules: 5
  lessons: 24
  total_duration: "6 hours"
  structure:
    - module: "Module 1: Foundations"
      lessons: 5
      duration: "1.5 hours"
    - module: "Module 2: Core Skills"
      lessons: 6
      duration: "1.5 hours"
  learning_paths: 2
  all_outcomes_mapped: true
```

## Quality Gate

- [ ] All outcomes mapped to modules
- [ ] Logical progression maintained
- [ ] Prerequisites respected
- [ ] Gagné's events considered per lesson
- [ ] Duration estimates realistic
- [ ] Learning paths defined (if applicable)
- [ ] Export artifact created

## Git Commit

```bash
git add specs/curriculum.yaml specs/modules/ production/handoff/phase-5-* specs/progress.yaml
git commit -m "Phase 5: Curriculum architecture complete"
git tag -a phase-5-architecture -m "Curriculum Architecture Complete"
```

## Next Phase

→ `/course-content` (Phase 6: Content Design)
