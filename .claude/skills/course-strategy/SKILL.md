---
name: course-strategy
description: Use for Phase 4 of course development - defining course vision, learning outcomes aligned with Bloom's Taxonomy, format, and success metrics. Triggers on "/course-strategy", "define course outcomes", or after completing Phase 3.
---

# Phase 4: Course Strategy

## Overview

Define the course vision, learning outcomes, format, and success metrics. This phase establishes the strategic foundation that guides all subsequent development.

## When to Use

- After completing Phase 3 (Discovery)
- Need to define course strategy
- Want to align outcomes with Bloom's
- Resuming Phase 4 of an existing project

## Prerequisites

- Phase 3 complete (discovery done)
- `specs/personas.yaml` exists
- `specs/positioning.yaml` exists
- `specs/learner-journey.yaml` exists

## Process

### Step 1: Define Transformation Promise

Ask (one at a time):

1. **Before State:**
   > Describe the learner's situation BEFORE taking this course.
   > (What they struggle with, don't know, can't do)

2. **After State:**
   > Describe the learner's situation AFTER completing this course.
   > (What they can now do, know, achieve)

3. **Core Promise:**
   > In one sentence, what transformation does this course deliver?
   > (The headline promise)

4. **Big Idea:**
   > What is the unique thesis, framework, or approach of this course?
   > (Your distinctive perspective)

### Step 2: Define Learning Outcomes

Using Bloom's Taxonomy, define outcomes at appropriate levels:

```yaml
# specs/outcomes.yaml
outcomes:
  primary:
    - id: outcome-01
      statement: ""  # "Learners will be able to..."
      bloom_level: create|evaluate|analyze|apply|understand|remember
      measurable: true
      assessment_method: ""

  secondary:
    - id: outcome-02
      statement: ""
      bloom_level: ""
      measurable: true
      assessment_method: ""

  # Map to modules (filled in Phase 5)
  module_mapping: {}
```

**Bloom's Taxonomy Levels (highest to lowest):**

| Level | Verbs | Example |
|-------|-------|---------|
| Create | Design, construct, develop, formulate, build | "Design a complete marketing funnel" |
| Evaluate | Judge, critique, justify, assess, defend | "Evaluate the effectiveness of different strategies" |
| Analyze | Compare, contrast, examine, differentiate | "Analyze user behavior patterns" |
| Apply | Implement, execute, use, demonstrate | "Apply the framework to real projects" |
| Understand | Explain, describe, summarize, interpret | "Explain how the algorithm works" |
| Remember | Recall, list, define, identify | "Identify the key components" |

### Step 3: Choose Course Format

```yaml
# specs/format.yaml
format:
  type: self-paced|cohort|live|hybrid

  delivery:
    primary: video|text|audio|interactive
    secondary: []

  structure:
    modules: <estimated>
    lessons_per_module: <estimated>
    total_duration: ""
    release: all-at-once|dripped|scheduled

  pacing:
    recommended_pace: ""
    minimum_pace: ""
    maximum_duration: ""

  cohort_details:  # If cohort/hybrid
    cohort_size: ""
    start_dates: ""
    live_sessions: ""
    community_access: ""

  support:
    type: self-serve|community|coaching|1-on-1
    response_time: ""
    channels: []
```

### Step 4: Establish Success Metrics

Using Kirkpatrick's 4 Levels:

```yaml
# specs/success-metrics.yaml
metrics:
  level_1_reaction:
    # Learner satisfaction
    - metric: "Course satisfaction score"
      target: ">= 4.5/5"
      measurement: "End-of-course survey"

    - metric: "Net Promoter Score"
      target: ">= 50"
      measurement: "NPS survey"

  level_2_learning:
    # Knowledge/skill acquisition
    - metric: "Assessment pass rate"
      target: ">= 85%"
      measurement: "Quiz/test scores"

    - metric: "Project completion rate"
      target: ">= 70%"
      measurement: "Project submissions"

  level_3_behavior:
    # Application of learning
    - metric: "Implementation rate"
      target: ""
      measurement: "Follow-up survey at 30 days"

    - metric: "Behavior change indicators"
      target: ""
      measurement: ""

  level_4_results:
    # Business/life outcomes
    - metric: "Outcome achievement"
      target: ""
      measurement: "Follow-up at 90 days"

    - metric: "ROI indicators"
      target: ""
      measurement: ""

  operational:
    - metric: "Completion rate"
      target: ">= 60%"

    - metric: "Module completion"
      target: ">= 80%"

    - metric: "Engagement score"
      target: ""
```

### Step 5: Define Prerequisites

```yaml
# specs/prerequisites.yaml
prerequisites:
  required:
    knowledge:
      - ""
    skills:
      - ""
    tools:
      - ""
    other:
      - ""

  recommended:
    knowledge:
      - ""
    skills:
      - ""

  not_required:
    - ""  # Common misconceptions about prerequisites

  diagnostic:
    offer_assessment: true|false
    assessment_type: ""
    remediation_path: ""
```

### Step 6: Set Scope Boundaries

```yaml
# specs/scope.yaml
scope:
  included:
    topics:
      - ""
    skills:
      - ""
    outcomes:
      - ""

  explicitly_excluded:
    - topic: ""
      reason: ""
      alternative: ""  # Where to learn this instead

  depth_limits:
    - topic: ""
      depth: overview|intermediate|deep
      reason: ""

  assumptions:
    - ""

  constraints:
    - ""
```

### Step 7: Pricing & Access Strategy

```yaml
# specs/pricing.yaml
pricing:
  model: one-time|subscription|tiered|free

  tiers:
    - name: ""
      price: ""
      includes: []
      excludes: []

  access:
    duration: lifetime|time-limited
    limit: ""
    updates: included|separate

  guarantees:
    refund_policy: ""
    success_guarantee: ""

  positioning:
    vs_market: premium|mid-range|budget|free
    justification: ""
```

## Outputs

### specs/strategy.yaml
```yaml
strategy:
  completed: YYYY-MM-DD

  vision:
    transformation: ""
    big_idea: ""
    one_liner: ""

  summary:
    format: ""
    duration: ""
    primary_outcome: ""
    target_persona: ""

  key_decisions:
    - decision: ""
      rationale: ""
```

### specs/outcomes.yaml
Complete learning outcomes with Bloom's levels

### specs/format.yaml
Course format and delivery specifications

### specs/success-metrics.yaml
Kirkpatrick-aligned success metrics

### specs/prerequisites.yaml
Entry requirements

### specs/scope.yaml
Scope boundaries

### specs/pricing.yaml
Pricing and access strategy

### progress.yaml (updated)
```yaml
phases:
  strategy:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    outcomes_defined: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 4:

- [ ] Transformation promise clear
- [ ] Learning outcomes SMART and Bloom's-aligned
- [ ] Course format decided
- [ ] Success metrics defined (all 4 Kirkpatrick levels)
- [ ] Prerequisites specified
- [ ] Scope boundaries set
- [ ] Pricing strategy defined
- [ ] Ready for curriculum architecture

## Git Commit

```bash
git add specs/strategy.yaml specs/outcomes.yaml specs/format.yaml \
        specs/success-metrics.yaml specs/prerequisites.yaml \
        specs/scope.yaml specs/pricing.yaml progress.yaml
git commit -m "Phase 4: Course strategy complete

- Defined transformation: [summary]
- Set [n] learning outcomes (Bloom's aligned)
- Format: [type], Duration: [duration]
- Success metrics established"
git tag -a phase-4-strategy -m "Course Strategy Complete"
```

## Next Phase

After completing Phase 4, proceed to:
→ `/course-architecture` (Phase 5: Curriculum Architecture)

The architecture phase will:
- Design module structure
- Sequence lessons logically
- Map outcomes to modules
- Create learning paths
