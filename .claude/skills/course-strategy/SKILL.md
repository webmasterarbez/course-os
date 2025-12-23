---
name: course-strategy
description: Use for Phase 4 of Course OS - defining transformation promise, learning outcomes aligned with Bloom's Taxonomy, course format, and Kirkpatrick-aligned success metrics. Triggers on "/course-strategy", "define outcomes", "course format", "learning objectives", or after completing Phase 3.
---

# Phase 4: Course Strategy

Define the course vision, learning outcomes, format, and success metrics.

## Prerequisites

- Phase 3 complete
- `specs/personas.yaml` exists
- `specs/positioning.yaml` exists

## Process

### Step 1: Define Transformation Promise

Ask ONE at a time:

1. **"Describe the learner's situation BEFORE this course."**
2. **"Describe their situation AFTER completing it."**
3. **"In one sentence, what transformation does this course deliver?"**
4. **"What is your unique thesis, framework, or approach?"**

### Step 2: Define Learning Outcomes

Using Bloom's Taxonomy, create outcomes in `specs/outcomes.yaml` - see `./blooms-taxonomy.md`

Each outcome needs:
- Statement ("Learners will be able to...")
- Bloom's level (Create/Evaluate/Analyze/Apply/Understand/Remember)
- Assessment method

### Step 3: Choose Course Format

Create `specs/format.yaml`:
- Type: self-paced | cohort | live | hybrid
- Primary delivery: video | text | audio | interactive
- Structure: modules, lessons per module, duration
- Pacing and support model

### Step 4: Establish Success Metrics

Using Kirkpatrick's 4 Levels, create `specs/success-metrics.yaml` - see `./kirkpatrick-metrics.md`

### Step 5: Define Prerequisites

Create `specs/prerequisites.yaml`:
- Required knowledge/skills/tools
- Recommended background
- Diagnostic assessment options

### Step 6: Set Scope Boundaries

Create `specs/scope.yaml`:
- What's included
- What's explicitly excluded (and why)
- Depth limits per topic

## Outputs

- `specs/strategy.yaml` - Vision and transformation promise
- `specs/outcomes.yaml` - Learning outcomes (Bloom's aligned)
- `specs/format.yaml` - Course format specs
- `specs/success-metrics.yaml` - Kirkpatrick metrics
- `specs/prerequisites.yaml` - Entry requirements
- `specs/scope.yaml` - Scope boundaries

## Quality Checklist

- [ ] Transformation promise clear
- [ ] Learning outcomes SMART and Bloom's-aligned
- [ ] Course format decided
- [ ] Success metrics defined (all 4 Kirkpatrick levels)
- [ ] Prerequisites specified
- [ ] Scope boundaries set

## Git Commit

```bash
git add specs/strategy.yaml specs/outcomes.yaml specs/format.yaml \
        specs/success-metrics.yaml specs/prerequisites.yaml specs/scope.yaml specs/progress.yaml
git commit -m "Phase 4: Course strategy complete"
git tag -a phase-4-strategy -m "Course Strategy Complete"
```

## Next Phase

→ `/course-architecture` (Phase 5: Curriculum Architecture)
