---
name: course-discovery
description: Use for Phase 3 of Course OS - understanding target audience through learner personas, analyzing competitor courses, and defining unique market positioning. Triggers on "/course-discovery", "analyze audience", "competitor analysis", "learner personas", or after completing Phase 2.
prerequisites: [course-research]
outputs: [specs/personas.yaml, specs/positioning.yaml, specs/learner-journey.yaml, specs/accessibility.yaml, .course-os/research/competitors.yaml]
exports: [phase-3-audience.yaml]
frameworks: []
---

# Phase 3: Audience & Market Discovery

Understand who you're teaching and what already exists in the market.

## Prerequisites

- Phase 2 complete
- `specs/research.yaml` exists
- `.course-os/research/` populated

## Process

### Step 1: Learner Analysis

Ask ONE at a time:

1. **"Who is the primary target learner?"** (Role, background, experience)
2. **"What do they know/do BEFORE this course?"**
3. **"What should they know/do AFTER completing it?"**
4. **"Why would someone take this course?"** (Goals, motivations)
5. **"What constraints do learners face?"** (Time, budget, environment)
6. **"How does this audience prefer to learn?"** (Video, reading, hands-on)

### Step 2: Build Personas

Create 2-3 detailed personas in `specs/personas.yaml`:

```yaml
personas:
  - id: persona-01
    name: "Career-Changer Carlos"  # Memorable name
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
```

**Persona Types:**
- **Primary**: Main target (60-70%)
- **Secondary**: Additional valid targets (20-30%)
- **Edge Case**: Avoid designing for

### Step 3: Competitor Analysis

Research existing courses in `.course-os/research/competitors.yaml`:

```yaml
competitors:
  - id: comp-01
    name: ""
    platform: ""
    url: ""
    price: ""
    format: ""
    structure:
      modules: 0
      lessons: 0
      duration: ""
    content_analysis:
      topics_covered: []
      topics_missing: []
      depth_level: ""
    strengths: []
    weaknesses: []
    reviews_summary:
      positive_themes: []
      negative_themes: []
    differentiation_opportunity: ""

market_summary:
  total_competitors_analyzed: 0
  price_range: ""
  common_gaps: []
  underserved_segments: []
```

### Step 4: Market Positioning

Create `specs/positioning.yaml`:

```yaml
positioning:
  unique_angle: ""
  key_differentiators: []
  competitive_advantages: []
  value_proposition: ""
  tagline: ""
```

### Step 5: Learner Journey Map

Create `specs/learner-journey.yaml`:

```yaml
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
    after:
      identity: ""
      capabilities: []
```

### Step 6: Accessibility Planning

Create `specs/accessibility.yaml` for UDL and WCAG compliance.

## Outputs

| File | Purpose |
|------|---------|
| `specs/personas.yaml` | Learner personas (2-3) |
| `specs/positioning.yaml` | Market positioning |
| `specs/learner-journey.yaml` | Journey map |
| `specs/accessibility.yaml` | Accessibility planning |
| `.course-os/research/competitors.yaml` | Competitor analysis |

## Export Artifacts

After completing, add to `production/handoff/`:

```yaml
# production/handoff/phase-3-audience.yaml
audience:
  primary_persona: "Career-Changer Carlos"
  personas_count: 3
  key_characteristics:
    - "Time-constrained professionals"
    - "Intermediate skill level"
positioning:
  unique_angle: ""
  tagline: ""
competitors_analyzed: 5
```

## Quality Gate

- [ ] 2-3 detailed personas created
- [ ] Personas have all required fields
- [ ] Competitor analysis complete (3-5 competitors)
- [ ] Unique positioning defined
- [ ] Learner journey mapped
- [ ] Accessibility considered
- [ ] Export artifact created

## Git Commit

```bash
git add specs/personas.yaml specs/positioning.yaml specs/learner-journey.yaml \
        specs/accessibility.yaml .course-os/research/competitors.yaml \
        production/handoff/phase-3-* specs/progress.yaml
git commit -m "Phase 3: Audience & market discovery complete"
git tag -a phase-3-discovery -m "Audience & Market Discovery Complete"
```

## Next Phase

→ `/course-strategy` (Phase 4: Course Strategy)
