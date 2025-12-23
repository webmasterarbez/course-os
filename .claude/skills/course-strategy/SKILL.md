---
name: course-strategy
description: Use for Phase 4 of Course OS - defining transformation promise, learning outcomes aligned with Bloom's Taxonomy, course format, and Kirkpatrick-aligned success metrics. Triggers on "/course-strategy", "define outcomes", "course format", "learning objectives", or after completing Phase 3.
prerequisites: [course-discovery]
outputs: [specs/strategy.yaml, specs/outcomes.yaml, specs/format.yaml, specs/success-metrics.yaml, specs/prerequisites.yaml, specs/scope.yaml]
exports: [phase-4-strategy.yaml, phase-4-decisions.md]
frameworks: [blooms-taxonomy, kirkpatrick-metrics]
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

Create `specs/strategy.yaml`:

```yaml
strategy:
  transformation:
    before: ""
    after: ""
    promise: ""
    unique_thesis: ""
```

### Step 2: Define Learning Outcomes

Create `specs/outcomes.yaml` using Bloom's Taxonomy:

```yaml
outcomes:
  primary:
    - id: outcome-01
      statement: "Learners will be able to..."
      bloom_level: create|evaluate|analyze|apply|understand|remember
      measurable: true
      assessment_method: ""

  secondary:
    - id: outcome-02
      statement: ""
      bloom_level: ""
      assessment_method: ""

  module_mapping: {}  # Filled in Phase 5
```

**Quick Reference - Bloom's Levels:**

| Level | Verbs | Example |
|-------|-------|---------|
| Create | design, build, develop | "Design a complete REST API" |
| Evaluate | assess, critique, justify | "Evaluate security tradeoffs" |
| Analyze | compare, organize, deconstruct | "Analyze performance bottlenecks" |
| Apply | implement, execute, use | "Implement OAuth authentication" |
| Understand | explain, summarize, classify | "Explain the OAuth flow" |
| Remember | list, recall, define | "List HTTP status codes" |

> Full reference: `.claude/standards/blooms-taxonomy.md`

### Step 3: Choose Course Format

Create `specs/format.yaml`:

```yaml
format:
  type: self-paced|cohort|live|hybrid
  delivery: video|text|audio|interactive
  structure:
    modules: 0
    lessons_per_module: 0
    total_duration: ""
  pacing:
    recommended_pace: ""
    access_period: ""
  support:
    model: ""  # community, office hours, 1:1, async
```

### Step 4: Establish Success Metrics

Create `specs/success-metrics.yaml` using Kirkpatrick's 4 Levels:

```yaml
metrics:
  level_1_reaction:
    - metric: "Course satisfaction"
      target: "≥4.5/5"
      measurement: "End-of-course survey"
    - metric: "NPS"
      target: "≥50"
      measurement: "NPS survey"

  level_2_learning:
    - metric: "Assessment pass rate"
      target: "≥85%"
      measurement: "Quiz scores"
    - metric: "Project completion"
      target: "≥70%"
      measurement: "Submissions"

  level_3_behavior:
    - metric: "Implementation rate"
      target: "≥60%"
      measurement: "30-day follow-up"

  level_4_results:
    - metric: "Outcome achievement"
      target: ""
      measurement: "90-day follow-up"

  operational:
    - metric: "Completion rate"
      target: "≥60%"
```

**Quick Reference - Kirkpatrick Levels:**

| Level | Measures | Timing |
|-------|----------|--------|
| 1. Reaction | Satisfaction | Immediately after |
| 2. Learning | Knowledge gain | During/after |
| 3. Behavior | Application | 30-90 days later |
| 4. Results | Business impact | 90+ days later |

> Full reference: `.claude/standards/kirkpatrick-metrics.md`

### Step 5: Define Prerequisites

Create `specs/prerequisites.yaml`:

```yaml
prerequisites:
  required:
    - knowledge: ""
      why: ""
    - skill: ""
      why: ""
    - tool: ""
      why: ""

  recommended:
    - ""

  diagnostic:
    assessment_available: true|false
    url: ""
```

### Step 6: Set Scope Boundaries

Create `specs/scope.yaml`:

```yaml
scope:
  included:
    - topic: ""
      depth: ""

  excluded:
    - topic: ""
      reason: ""
      alternative: ""  # Where to learn this

  depth_limits:
    - topic: ""
      limit: ""
      reason: ""
```

## Outputs

| File | Purpose |
|------|---------|
| `specs/strategy.yaml` | Vision and transformation |
| `specs/outcomes.yaml` | Learning outcomes (Bloom's) |
| `specs/format.yaml` | Course format |
| `specs/success-metrics.yaml` | Kirkpatrick metrics |
| `specs/prerequisites.yaml` | Entry requirements |
| `specs/scope.yaml` | Scope boundaries |

## Export Artifacts

After completing, add to `production/handoff/`:

```yaml
# production/handoff/phase-4-strategy.yaml
strategy:
  transformation_promise: ""
  outcomes_count: 8
  primary_bloom_levels: [apply, analyze, create]
  format: self-paced video
  duration: "6 hours"
  metrics:
    reaction: "NPS ≥50"
    learning: "85% pass rate"
    behavior: "60% implementation"
    results: "Career advancement"
```

```markdown
# production/handoff/phase-4-decisions.md
## Key Decisions

### Format Choice
- Decision: Self-paced video
- Rationale: Target audience has unpredictable schedules

### Scope Exclusions
- Excluded: Advanced topic X
- Rationale: Requires separate prerequisite course
```

## Quality Gate

- [ ] Transformation promise clear and compelling
- [ ] Learning outcomes SMART and Bloom's-aligned
- [ ] All outcomes use measurable verbs
- [ ] Course format matches audience needs
- [ ] All 4 Kirkpatrick levels have metrics
- [ ] Prerequisites specified
- [ ] Scope boundaries explicit
- [ ] Export artifacts created

## Git Commit

```bash
git add specs/strategy.yaml specs/outcomes.yaml specs/format.yaml \
        specs/success-metrics.yaml specs/prerequisites.yaml specs/scope.yaml \
        production/handoff/phase-4-* specs/progress.yaml
git commit -m "Phase 4: Course strategy complete"
git tag -a phase-4-strategy -m "Course Strategy Complete"
```

## Next Phase

→ `/course-architecture` (Phase 5: Curriculum Architecture)
