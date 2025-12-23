---
name: course-discovery
description: Use for Phase 3 of Course OS - understanding target audience through learner personas, analyzing competitor courses, and defining unique market positioning. Triggers on "/course-discovery", "analyze audience", "competitor analysis", "learner personas", or after completing Phase 2.
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

Create 2-3 detailed personas in `specs/personas.yaml` - see `./persona-schema.md`

### Step 3: Competitor Analysis

Research existing courses and create `.course-os/research/competitors.yaml` - see `./competitor-schema.md`

### Step 4: Market Positioning

Define differentiation in `specs/positioning.yaml`:
- Unique angle
- Key differentiators
- Competitive advantages
- Value proposition

### Step 5: Learner Journey Map

Create `specs/learner-journey.yaml` - see `./learner-journey-schema.md`

### Step 6: Accessibility Planning

Create `specs/accessibility.yaml` for UDL and WCAG compliance.

## Outputs

- `specs/personas.yaml` - Learner personas (2-3)
- `specs/positioning.yaml` - Market positioning
- `specs/learner-journey.yaml` - Journey map
- `specs/accessibility.yaml` - Accessibility planning
- `.course-os/research/competitors.yaml` - Competitor analysis

## Quality Checklist

- [ ] 2-3 detailed personas created
- [ ] Competitor analysis complete
- [ ] Unique positioning defined
- [ ] Learner journey mapped
- [ ] Accessibility considered

## Git Commit

```bash
git add specs/personas.yaml specs/positioning.yaml specs/learner-journey.yaml \
        specs/accessibility.yaml .course-os/research/competitors.yaml specs/progress.yaml
git commit -m "Phase 3: Audience & market discovery complete"
git tag -a phase-3-discovery -m "Audience & Market Discovery Complete"
```

## Next Phase

→ `/course-strategy` (Phase 4: Course Strategy)
