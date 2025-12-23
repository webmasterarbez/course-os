---
name: course-content
description: Use for Phase 6 of course development - creating detailed lesson plans, examples, case studies, activities, and resources. Triggers on "/course-content", "design course content", or after completing Phase 5.
---

# Phase 6: Content Design

## Overview

Create detailed lesson plans, design examples and case studies, plan activities, and curate resources. This phase transforms the curriculum architecture into actionable content blueprints.

## When to Use

- After completing Phase 5 (Architecture)
- Need detailed lesson plans
- Want to design activities and examples
- Resuming Phase 6 of an existing project

## Prerequisites

- Phase 5 complete (architecture done)
- `specs/curriculum.yaml` exists
- `specs/modules/*.yaml` exist
- `specs/lesson-template.yaml` exists

## Process

### Step 1: Review Architecture Inputs

```bash
# Load curriculum structure
cat specs/curriculum.yaml
ls specs/modules/
cat specs/lesson-template.yaml
```

### Step 2: Content Design Approach

Ask (one at a time):

1. **Teaching Style:**
   > What teaching style should this course use?
   > - Instructor-led (expert teaching)
   > - Discovery-based (learner explores)
   > - Problem-based (solve real challenges)
   > - Project-based (build something)
   > - Mixed approach

2. **Example Strategy:**
   > What types of examples work best for this content?
   > - Industry case studies
   > - Fictional scenarios
   > - Personal stories
   > - Step-by-step walkthroughs
   > - Before/after comparisons

3. **Activity Preference:**
   > What types of activities should learners do?
   > - Hands-on exercises
   > - Reflection prompts
   > - Discussion questions
   > - Real-world application
   > - Peer collaboration

### Step 3: Create Lesson Blueprints

For each lesson, create detailed content plan:

```yaml
# content/lessons/module-01/lesson-01.yaml
lesson:
  id: lesson-01
  module: module-01
  title: ""
  slug: ""

  metadata:
    duration: ""
    type: video|text|interactive
    difficulty: beginner|intermediate|advanced

  objectives:
    primary: ""
    secondary: []
    bloom_level: ""

  gagne_events:
    attention:
      hook: ""
      relevance: ""

    objectives:
      stated: ""
      success_criteria: []

    recall:
      prior_knowledge: ""
      connection: ""

    content:
      key_concepts:
        - concept: ""
          explanation: ""
          importance: ""

      structure:
        - section: ""
          duration: ""
          content_points: []

    guidance:
      tips: []
      common_mistakes: []
      best_practices: []

    practice:
      activity_type: ""
      instructions: ""
      duration: ""

    feedback:
      self_check: []
      explanations: []

    assessment:
      type: ""
      criteria: []

    transfer:
      real_world: ""
      next_steps: ""

  examples:
    - id: example-01
      type: case_study|walkthrough|scenario|comparison
      title: ""
      context: ""
      content: ""
      key_takeaway: ""

  activities:
    - id: activity-01
      type: exercise|reflection|discussion|application
      title: ""
      instructions: ""
      duration: ""
      materials_needed: []
      expected_outcome: ""

  resources:
    required: []
    supplementary: []
    downloads: []

  transitions:
    from_previous: ""
    to_next: ""

  notes:
    instructor: []
    production: []
```

### Step 4: Design Examples & Case Studies

Apply Merrill's First Principles:

```yaml
# content/examples/module-01-examples.yaml
examples:
  module: module-01

  case_studies:
    - id: case-01
      title: ""
      lesson: lesson-02

      context:
        industry: ""
        situation: ""
        challenge: ""

      story:
        background: ""
        problem: ""
        approach: ""
        solution: ""
        results: ""

      learnings:
        key_takeaways: []
        applicable_principles: []
        discussion_questions: []

      merrill_alignment:
        problem_centered: true
        real_world: true
        demonstrates_skill: true

  walkthroughs:
    - id: walkthrough-01
      title: ""
      lesson: lesson-03

      overview: ""
      steps:
        - step: 1
          action: ""
          explanation: ""
          visual_needed: ""
        - step: 2
          action: ""
          explanation: ""

      common_variations: []
      troubleshooting: []

  scenarios:
    - id: scenario-01
      title: ""
      lesson: lesson-04

      setup: ""
      challenge: ""
      constraints: []
      possible_approaches: []
      debrief_points: []
```

### Step 5: Design Activities & Exercises

```yaml
# content/activities/module-01-activities.yaml
activities:
  module: module-01

  exercises:
    - id: exercise-01
      lesson: lesson-02
      title: ""
      type: practice|application|analysis

      learning_objective: ""
      duration: ""

      instructions:
        overview: ""
        steps:
          - ""
        deliverable: ""

      materials:
        provided: []
        learner_needs: []

      success_criteria:
        - ""

      hints:
        - level: 1
          hint: ""
        - level: 2
          hint: ""

      solution:
        approach: ""
        example_output: ""

  reflections:
    - id: reflection-01
      lesson: lesson-03
      title: ""

      prompts:
        - question: ""
          purpose: ""
        - question: ""
          purpose: ""

      journaling_guide: ""
      share_option: true|false

  discussions:
    - id: discussion-01
      lesson: lesson-04
      title: ""

      prompt: ""
      context: ""
      expected_perspectives: []
      facilitation_notes: ""

  applications:
    - id: application-01
      lesson: lesson-05
      title: ""

      real_world_task: ""
      instructions: ""
      adaptation_guide: ""
      sharing_opportunity: ""
```

### Step 6: Curate Resources

```yaml
# content/resources/module-01-resources.yaml
resources:
  module: module-01

  downloads:
    - id: download-01
      title: ""
      type: template|checklist|worksheet|guide
      lesson: lesson-02
      description: ""
      file_format: pdf|docx|xlsx|zip
      creation_notes: ""

  references:
    - id: ref-01
      title: ""
      type: article|book|video|tool
      url: ""
      relevance: ""
      when_to_use: ""

  tools:
    - id: tool-01
      name: ""
      url: ""
      purpose: ""
      lessons_using: []
      alternatives: []

  further_learning:
    - id: further-01
      title: ""
      type: course|book|certification
      url: ""
      description: ""
      when_ready: ""
```

### Step 7: Content Accessibility Check

```yaml
# content/accessibility/module-01-accessibility.yaml
accessibility:
  module: module-01

  text_content:
    reading_level: ""
    jargon_glossary: []
    alt_explanations: []

  visual_content:
    alt_text_needed: []
    diagram_descriptions: []
    color_considerations: []

  audio_content:
    transcript_planned: true
    caption_planned: true

  cognitive_load:
    chunk_sizes: appropriate|needs_review
    complexity_progression: gradual|steep
    support_provided: adequate|needs_more

  udl_check:
    multiple_engagement: []
    multiple_representation: []
    multiple_expression: []
```

## Outputs

### content/lessons/
Detailed lesson blueprints:
```
content/lessons/
├── module-01/
│   ├── lesson-01.yaml
│   ├── lesson-02.yaml
│   └── lesson-03.yaml
├── module-02/
│   └── ...
```

### content/examples/
Example and case study library:
```
content/examples/
├── module-01-examples.yaml
├── module-02-examples.yaml
```

### content/activities/
Activity and exercise designs:
```
content/activities/
├── module-01-activities.yaml
├── module-02-activities.yaml
```

### content/resources/
Resource curation:
```
content/resources/
├── module-01-resources.yaml
├── module-02-resources.yaml
```

### specs/content.yaml
```yaml
content:
  completed: YYYY-MM-DD

  summary:
    lessons_designed: <n>
    examples_created: <n>
    activities_designed: <n>
    resources_curated: <n>

  teaching_approach: ""
  example_strategy: ""
  activity_types: []

  downloads_needed:
    - title: ""
      type: ""
      status: to_create

  quality_notes:
    - ""
```

### progress.yaml (updated)
```yaml
phases:
  content:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    lessons_designed: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 6:

- [ ] All lessons have detailed blueprints
- [ ] Gagné's 9 events addressed per lesson
- [ ] Examples designed (case studies, walkthroughs)
- [ ] Activities created (exercises, reflections)
- [ ] Resources curated
- [ ] Accessibility considered
- [ ] Merrill's principles applied
- [ ] Ready for script development

## Git Commit

```bash
git add content/lessons content/examples content/activities \
        content/resources specs/content.yaml progress.yaml
git commit -m "Phase 6: Content design complete

- Designed [n] lesson blueprints
- Created [n] examples and case studies
- Designed [n] activities
- Curated resources for all modules"
git tag -a phase-6-content -m "Content Design Complete"
```

## Next Phase

After completing Phase 6, proceed to:
→ `/course-scripts` (Phase 7: Script Development)

The scripts phase will:
- Write full video/audio scripts
- Create presentation notes
- Develop talking points
- Prepare facilitation guides
