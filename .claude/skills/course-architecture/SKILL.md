---
name: course-architecture
description: Use for Phase 5 of course development - designing curriculum structure including modules, lessons, sequencing, and learning paths. Triggers on "/course-architecture", "design curriculum", or after completing Phase 4.
---

# Phase 5: Curriculum Architecture

## Overview

Design the complete learning structure: modules, lessons, sequencing, and learning paths. This phase transforms strategy into an actionable curriculum framework.

## When to Use

- After completing Phase 4 (Strategy)
- Need to structure curriculum
- Want to map outcomes to modules
- Resuming Phase 5 of an existing project

## Prerequisites

- Phase 4 complete (strategy defined)
- `specs/outcomes.yaml` exists
- `specs/format.yaml` exists
- `specs/scope.yaml` exists

## Process

### Step 1: Review Strategy Inputs

```bash
# Load previous phase outputs
cat specs/outcomes.yaml
cat specs/format.yaml
cat specs/scope.yaml
cat .course-os/research/knowledge-map.yaml
```

### Step 2: Define Module Structure

Ask (one at a time):

1. **Module Count:**
   > Based on the scope, how many major sections/modules should this course have?
   > (Consider: logical groupings, outcome mapping, learner pacing)

2. **Module Themes:**
   > What is each module's main theme or focus?
   > (List the high-level topics for each module)

3. **Module Dependencies:**
   > Are there modules that must come before others?
   > (Prerequisites and dependencies)

### Step 3: Build Module Specifications

For each module, create detailed spec:

```yaml
# specs/modules/module-01.yaml
module:
  id: module-01
  number: 1
  title: ""
  slug: ""

  overview:
    description: ""
    duration: ""
    lessons_count: <n>

  outcomes:
    # Map from specs/outcomes.yaml
    primary:
      - outcome_id: outcome-01
        addressed_in: [lesson-01, lesson-02]
    supporting:
      - outcome_id: outcome-02
        addressed_in: [lesson-03]

  prerequisites:
    modules: []  # Previous modules required
    knowledge: []  # External prerequisites
    skills: []

  lessons:
    - id: lesson-01
      title: ""
      duration: ""
      type: video|text|interactive|exercise
      outcome_focus: []

    - id: lesson-02
      title: ""
      # ...

  assessments:
    - type: quiz|project|reflection
      placement: end|during
      outcomes_assessed: []

  resources:
    required: []
    supplementary: []

  milestones:
    - name: ""
      after_lesson: ""
      celebration: ""
```

### Step 4: Apply Pedagogical Principles

**Scaffolding Strategy:**
```yaml
# specs/curriculum.yaml > scaffolding
scaffolding:
  approach: ""  # How complexity builds

  progression:
    early_modules:
      complexity: low
      support: high
      concepts: foundational

    middle_modules:
      complexity: medium
      support: medium
      concepts: application

    late_modules:
      complexity: high
      support: low
      concepts: integration

  skill_building:
    - skill: ""
      introduced: module-01
      practiced: [module-02, module-03]
      mastered: module-04
```

**Spaced Repetition:**
```yaml
# specs/curriculum.yaml > repetition
repetition:
  key_concepts:
    - concept: ""
      introduced: module-01, lesson-01
      reinforced: [module-02-lesson-03, module-04-lesson-01]
      applied: module-05-project

  review_points:
    - after: module-02
      reviews: [module-01-concepts]
    - after: module-04
      reviews: [module-01-concepts, module-03-concepts]
```

**Active Learning Integration:**
```yaml
# specs/curriculum.yaml > active_learning
active_learning:
  ratio:
    content: 60%  # Instruction
    practice: 30%  # Exercises
    reflection: 10%  # Metacognition

  per_module:
    - module: module-01
      activities:
        - type: exercise
          after_lesson: lesson-02
          duration: 15min
        - type: reflection
          after_lesson: lesson-04
          duration: 10min
```

### Step 5: Design Learning Paths

```yaml
# specs/learning-paths.yaml
paths:
  primary:
    name: "Complete Course Path"
    description: "Full curriculum in recommended order"
    modules: [module-01, module-02, module-03, module-04, module-05]
    duration: ""
    for_persona: all

  accelerated:
    name: "Fast Track"
    description: "Essential content only"
    modules: [module-01, module-03, module-05]
    skip_lessons: []
    duration: ""
    for_persona: "experienced learners"

  deep_dive:
    name: "Mastery Path"
    description: "Complete with all optional content"
    modules: [all + optional]
    additional: []
    duration: ""
    for_persona: "completionists"

  role_specific:
    - name: ""
      description: ""
      modules: []
      for_persona: ""
```

### Step 6: Create Lesson Flow Template

Using Gagné's 9 Events of Instruction:

```yaml
# specs/lesson-template.yaml
lesson_structure:
  event_1_attention:
    duration: "1-2 min"
    elements:
      - hook
      - relevance_statement
      - preview

  event_2_objectives:
    duration: "30 sec"
    elements:
      - learning_objectives
      - success_criteria

  event_3_recall:
    duration: "1-2 min"
    elements:
      - prior_knowledge_activation
      - connection_to_previous

  event_4_content:
    duration: "varies"
    elements:
      - core_instruction
      - examples
      - demonstrations

  event_5_guidance:
    duration: "varies"
    elements:
      - tips
      - common_mistakes
      - best_practices

  event_6_practice:
    duration: "varies"
    elements:
      - exercises
      - activities
      - application

  event_7_feedback:
    duration: "varies"
    elements:
      - answer_explanations
      - self_check
      - peer_review

  event_8_assessment:
    duration: "varies"
    elements:
      - quiz
      - project_component
      - demonstration

  event_9_transfer:
    duration: "1-2 min"
    elements:
      - real_world_application
      - next_steps
      - resources
```

### Step 7: Map Assessments to Outcomes

```yaml
# specs/curriculum.yaml > assessment_mapping
assessment_mapping:
  - outcome_id: outcome-01
    assessments:
      - type: quiz
        location: module-01-end
        questions: 5
      - type: project
        location: module-03-project
        rubric_criteria: []

  - outcome_id: outcome-02
    assessments:
      - type: practical
        location: module-02-lesson-04
        demonstration: ""
```

### Step 8: Define Milestones & Celebrations

```yaml
# specs/curriculum.yaml > milestones
milestones:
  - id: milestone-01
    name: "Foundation Complete"
    after: module-02
    celebration:
      type: certificate|badge|message
      content: ""
    unlock: []  # What this unlocks

  - id: milestone-02
    name: "Practitioner Level"
    after: module-04
    celebration:
      type: badge
      content: ""

  - id: milestone-final
    name: "Course Complete"
    after: module-05
    celebration:
      type: certificate
      content: ""
    credential: ""
```

## Outputs

### specs/curriculum.yaml
```yaml
curriculum:
  completed: YYYY-MM-DD

  structure:
    total_modules: <n>
    total_lessons: <n>
    total_duration: ""

  summary:
    - module: module-01
      title: ""
      lessons: <n>
      duration: ""

  scaffolding: {}
  repetition: {}
  active_learning: {}
  assessment_mapping: {}
  milestones: {}
```

### specs/modules/
Individual module specifications:
- `module-01.yaml`
- `module-02.yaml`
- etc.

### specs/learning-paths.yaml
All learning path definitions

### specs/lesson-template.yaml
Standard lesson structure template

### progress.yaml (updated)
```yaml
phases:
  architecture:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    modules_designed: <n>
    lessons_planned: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 5:

- [ ] All modules specified
- [ ] Lessons listed for each module
- [ ] Outcomes mapped to modules
- [ ] Prerequisites defined
- [ ] Learning paths created
- [ ] Gagné's events considered
- [ ] Milestones defined
- [ ] Scaffolding documented
- [ ] Ready for content design

## Git Commit

```bash
git add specs/curriculum.yaml specs/modules/ specs/learning-paths.yaml \
        specs/lesson-template.yaml progress.yaml
git commit -m "Phase 5: Curriculum architecture complete

- Designed [n] modules with [n] lessons
- Created [n] learning paths
- Mapped all outcomes to curriculum
- Defined milestone structure"
git tag -a phase-5-architecture -m "Curriculum Architecture Complete"
```

## Next Phase

After completing Phase 5, proceed to:
→ `/course-content` (Phase 6: Content Design)

The content phase will:
- Create detailed lesson plans
- Design examples and case studies
- Plan activities and exercises
- Curate resources
