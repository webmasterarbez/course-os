---
name: course-architecture
description: Use for Phase 5 of Course OS - designing complete curriculum structure including modules, lessons, sequencing, learning paths, and outcome mapping. Triggers on "/course-architecture", "design curriculum", "structure modules", "lesson sequencing", or after completing Phase 4.
---

# Phase 5: Curriculum Architecture

Design the complete learning structure: modules, lessons, sequencing, and paths.

## Prerequisites

- Phase 4 complete
- `specs/outcomes.yaml` exists
- `specs/format.yaml` exists

## Process

### Step 1: Review Strategy Inputs

```bash
cat specs/outcomes.yaml
cat specs/format.yaml
cat specs/scope.yaml
```

### Step 2: Design Module Structure

Create high-level module breakdown:

```yaml
# specs/curriculum.yaml
modules:
  - id: module-01
    title: ""
    description: ""
    outcomes: []  # From specs/outcomes.yaml
    duration: ""
    lessons: []
```

### Step 3: Design Lessons

For each module, create lesson specs:

```yaml
# specs/modules/module-01.yaml
lessons:
  - id: lesson-01
    title: ""
    type: instruction|demonstration|practice|assessment
    duration: ""
    objectives: []  # Specific to this lesson
    gagne_events: []  # Which of the 9 events
```

See `./gagne-events.md` for lesson structure guidance.

### Step 4: Map Outcomes to Modules

In `specs/curriculum.yaml`:
```yaml
outcome_mapping:
  outcome-01: [module-01, module-03]
  outcome-02: [module-02]
```

### Step 5: Define Learning Paths

If multiple paths exist:
```yaml
learning_paths:
  - id: path-01
    name: "Fast Track"
    modules: [module-01, module-03, module-05]
  - id: path-02
    name: "Deep Dive"
    modules: [module-01, module-02, module-03, module-04, module-05]
```

### Step 6: Sequence Validation

Verify:
- Prerequisites respected
- Cognitive load balanced
- Practice follows instruction
- Assessments placed appropriately

## Outputs

- `specs/curriculum.yaml` - Master curriculum structure
- `specs/modules/*.yaml` - Per-module lesson specs

## Quality Checklist

- [ ] All outcomes mapped to modules
- [ ] Logical progression maintained
- [ ] Prerequisites respected
- [ ] Gagné's events considered per lesson
- [ ] Duration estimates realistic

## Git Commit

```bash
git add specs/curriculum.yaml specs/modules/ specs/progress.yaml
git commit -m "Phase 5: Curriculum architecture complete"
git tag -a phase-5-architecture -m "Curriculum Architecture Complete"
```

## Next Phase

→ `/course-content` (Phase 6: Content Design)
