# Phase 3: Audience & Market Discovery

## Overview

Understand who you're teaching and what already exists in the market. This phase creates learner personas, analyzes competitors, and identifies differentiation opportunities.

**Use this skill to:** Research your target audience, analyze competitor courses, and define your unique market position.

## When to Use

- After completing Phase 2 (Research)
- Need to understand target learners
- Want competitor analysis
- Resuming Phase 3 of an existing project

## Prerequisites

- Phase 2 complete (research done)
- `specs/research.yaml` exists
- `.course-os/research/` populated

## Process

### Step 1: Learner Analysis

Ask (one at a time):

1. **Primary Audience:**
   > Who is the primary target learner for this course?
   > (Job role, background, experience level)

2. **Current State:**
   > What does your typical learner know/do BEFORE taking this course?
   > (Existing skills, knowledge, situation)

3. **Desired State:**
   > What should they know/do AFTER completing the course?
   > (Skills gained, outcomes achieved)

4. **Motivations:**
   > Why would someone take this course?
   > (Career goals, problems to solve, aspirations)

5. **Constraints:**
   > What constraints do learners face?
   > (Time, budget, environment, prior failures)

6. **Learning Preferences:**
   > How does this audience prefer to learn?
   > (Video, reading, hands-on, cohort, self-paced)

### Step 2: Build Learner Personas

Create 2-3 detailed personas:

```yaml
# specs/personas.yaml
personas:
  - id: persona-01
    name: ""  # Memorable name
    role: ""
    demographics:
      age_range: ""
      location: ""
      education: ""

    current_state:
      knowledge_level: beginner|intermediate|advanced
      existing_skills: []
      current_challenges: []
      failed_attempts: []

    goals:
      primary: ""
      secondary: []
      timeline: ""

    motivations:
      intrinsic: []  # Personal growth, curiosity
      extrinsic: []  # Career, money, recognition

    constraints:
      time_available: ""
      budget: ""
      learning_environment: ""
      obstacles: []

    preferences:
      content_format: []
      learning_style: ""
      pace: ""
      support_needs: ""

    objections:
      - objection: ""
        response: ""

    success_definition: ""

  - id: persona-02
    # ...
```

### Step 3: Competitor Analysis

Research existing courses on the topic:

```yaml
# .course-os/research/competitors.yaml
competitors:
  - id: comp-01
    name: ""
    platform: ""  # Teachable, Udemy, etc.
    url: ""
    price: ""
    format: ""  # self-paced, cohort, etc.

    structure:
      modules: <n>
      lessons: <n>
      duration: ""

    content_analysis:
      topics_covered: []
      topics_missing: []
      depth_level: ""
      teaching_approach: ""

    strengths:
      - ""
    weaknesses:
      - ""
    reviews_summary:
      positive_themes: []
      negative_themes: []
      average_rating: ""

    differentiation_opportunity: ""

  - id: comp-02
    # ...

market_summary:
  total_competitors_analyzed: <n>
  price_range: ""
  common_gaps: []
  underserved_segments: []
  oversaturated_areas: []
```

### Step 4: Market Positioning

Define differentiation:

```yaml
# specs/positioning.yaml
positioning:
  unique_angle: ""
  key_differentiators:
    - ""

  competitive_advantages:
    vs_competitor_1:
      their_weakness: ""
      our_strength: ""
    vs_competitor_2:
      their_weakness: ""
      our_strength: ""

  not_for:
    - ""  # Who this course is NOT for

  value_proposition:
    headline: ""
    subhead: ""
    proof_points:
      - ""

  authority:
    credentials: []
    experience: []
    unique_perspective: ""

  messaging:
    primary_benefit: ""
    supporting_benefits: []
    emotional_hook: ""
    logical_argument: ""
```

### Step 5: Learner Journey Mapping

Map the transformation:

```yaml
# specs/learner-journey.yaml
journey:
  awareness:
    pain_points: []
    trigger_events: []
    questions_asking: []

  consideration:
    alternatives_considering: []
    decision_criteria: []
    objections: []

  enrollment:
    motivation_peak: ""
    concerns: []
    expectations: []

  learning:
    early_wins_needed: []
    struggle_points: []
    support_needs: []

  completion:
    success_indicators: []
    celebration_moments: []
    next_steps: []

  transformation:
    before:
      identity: ""
      capabilities: []
      beliefs: []
    after:
      identity: ""
      capabilities: []
      beliefs: []
```

### Step 6: Accessibility & Inclusion Analysis

Consider diverse learner needs:

```yaml
# specs/accessibility.yaml
accessibility:
  learner_diversity:
    experience_levels: []
    learning_differences: []
    language_considerations: []
    cultural_considerations: []
    physical_accessibility: []

  udl_planning:
    multiple_engagement:
      - ""  # How to engage different learners
    multiple_representation:
      - ""  # How to present info multiple ways
    multiple_expression:
      - ""  # How learners can demonstrate learning

  accommodation_needs:
    visual: []
    auditory: []
    cognitive: []
    motor: []

  inclusion_checklist:
    - representation_in_examples: false
    - diverse_perspectives: false
    - cultural_sensitivity: false
    - language_accessibility: false
```

## Outputs

### specs/personas.yaml
Detailed learner personas (2-3)

### specs/positioning.yaml
Market positioning and differentiation

### specs/learner-journey.yaml
Complete learner journey map

### specs/accessibility.yaml
Accessibility and inclusion planning

### .course-os/research/competitors.yaml
Detailed competitor analysis

### specs/discovery.yaml
```yaml
discovery:
  completed: YYYY-MM-DD

  audience:
    primary_persona: ""
    secondary_personas: []
    total_addressable: ""

  market:
    competitors_analyzed: <n>
    market_gap: ""
    positioning: ""

  differentiation:
    primary: ""
    supporting: []

  key_insights:
    - ""
```

### progress.yaml (updated)
```yaml
phases:
  discovery:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    personas_created: <n>
    competitors_analyzed: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 3:

- [ ] 2-3 detailed personas created
- [ ] Competitor analysis complete
- [ ] Unique positioning defined
- [ ] Learner journey mapped
- [ ] Accessibility considered
- [ ] Value proposition clear
- [ ] Ready for course strategy

## Git Commit

```bash
git add specs/personas.yaml specs/positioning.yaml specs/learner-journey.yaml \
        specs/accessibility.yaml specs/discovery.yaml \
        .course-os/research/competitors.yaml progress.yaml
git commit -m "Phase 3: Audience & market discovery complete

- Created [n] learner personas
- Analyzed [n] competitors
- Defined unique positioning
- Mapped learner journey"
git tag -a phase-3-discovery -m "Audience & Market Discovery Complete"
```

## Next Phase

After completing Phase 3, proceed to:
→ `/course-strategy` (Phase 4: Course Strategy)

The strategy phase will:
- Define transformation promise
- Set learning outcomes
- Choose course format
- Establish success metrics
