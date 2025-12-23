# Phase 8: Assessment Design

## Overview

Design comprehensive assessments aligned with Kirkpatrick's 4 levels: knowledge checks, projects, rubrics, and certification criteria. Assessments validate learning and provide feedback loops.

**Use this skill to:** Create quizzes, projects, rubrics, self-assessments, and certification requirements for your course.

## When to Use

- After completing Phase 7 (Scripts)
- Need to design assessments
- Want to create rubrics and grading criteria
- Resuming Phase 8 of an existing project

## Prerequisites

- Phase 7 complete (scripts written)
- `specs/outcomes.yaml` exists
- `specs/curriculum.yaml` has assessment mapping
- `content/lessons/*.yaml` define objectives

## Kirkpatrick Alignment

All assessments map to evaluation levels:

| Level | Focus | Assessment Types |
|-------|-------|-----------------|
| Level 1: Reaction | Satisfaction | Surveys, feedback forms |
| Level 2: Learning | Knowledge/skill gain | Quizzes, tests, demonstrations |
| Level 3: Behavior | Application | Projects, portfolios, observations |
| Level 4: Results | Outcomes | Follow-up surveys, metrics |

## Process

### Step 1: Review Assessment Requirements

```bash
# Load curriculum and outcomes
cat specs/outcomes.yaml
cat specs/curriculum.yaml
cat specs/success-metrics.yaml
```

### Step 2: Design Assessment Strategy

Ask (one at a time):

1. **Assessment Frequency:**
   > How often should learners be assessed?
   > - After each lesson
   > - After each module
   > - At key milestones only
   > - Mixed approach

2. **Assessment Weight:**
   > How should assessments contribute to completion?
   > - All required to pass
   > - Weighted average (specify weights)
   > - Portfolio-based (collection of work)
   > - Competency-based (must demonstrate each skill)

3. **Feedback Approach:**
   > What type of feedback should learners receive?
   > - Immediate automated
   > - Delayed with explanations
   > - Peer review
   > - Instructor review

### Step 3: Create Assessment Map

```yaml
# specs/assessments.yaml
assessment_strategy:
  approach: ""
  passing_threshold: ""
  completion_requirements: []

assessment_map:
  - outcome_id: outcome-01
    kirkpatrick_level: 2
    assessments:
      - id: quiz-m1-01
        type: quiz
        location: module-01-end
      - id: project-01
        type: project
        location: module-03

  - outcome_id: outcome-02
    kirkpatrick_level: 3
    assessments:
      - id: project-01
        type: project
        location: module-03

timing:
  formative:  # During learning
    - after: each-lesson
      type: self-check
    - after: each-module
      type: quiz

  summative:  # End of learning
    - type: final-project
      location: course-end
    - type: final-assessment
      location: course-end
```

### Step 4: Design Quizzes

```yaml
# content/assessments/quizzes/module-01-quiz.yaml
quiz:
  id: quiz-m1-01
  module: module-01
  title: "Module 1 Knowledge Check"

  metadata:
    duration: 15 minutes
    attempts_allowed: 3
    passing_score: 80%
    randomize_questions: true
    randomize_answers: true

  instructions: |
    This quiz covers the key concepts from Module 1.
    You have [duration] to complete [n] questions.
    You need [passing_score] to pass.

  questions:
    - id: q01
      type: multiple_choice
      bloom_level: remember
      outcome_id: outcome-01
      points: 1

      question: ""
      options:
        - id: a
          text: ""
          correct: false
          feedback: ""
        - id: b
          text: ""
          correct: true
          feedback: ""
        - id: c
          text: ""
          correct: false
          feedback: ""
        - id: d
          text: ""
          correct: false
          feedback: ""

      explanation: |
        The correct answer is [B] because...

    - id: q02
      type: true_false
      bloom_level: understand
      outcome_id: outcome-01
      points: 1

      question: ""
      correct_answer: true|false
      explanation: ""

    - id: q03
      type: multiple_select
      bloom_level: analyze
      outcome_id: outcome-02
      points: 2

      question: ""
      instruction: "Select all that apply"
      options:
        - id: a
          text: ""
          correct: true
        - id: b
          text: ""
          correct: false
        - id: c
          text: ""
          correct: true
        - id: d
          text: ""
          correct: false

      explanation: ""

    - id: q04
      type: short_answer
      bloom_level: apply
      outcome_id: outcome-02
      points: 3

      question: ""
      sample_answers:
        - ""
      grading_keywords:
        required: []
        bonus: []
      rubric: ""

    - id: q05
      type: scenario
      bloom_level: evaluate
      outcome_id: outcome-03
      points: 5

      scenario: |
        [Present a realistic situation]

      question: ""
      options:
        - id: a
          text: ""
          correct: false
          feedback: ""
        - id: b
          text: ""
          correct: true
          feedback: ""

  scoring:
    total_points: <sum>
    passing_points: <threshold>

    feedback_thresholds:
      - min: 90
        message: "Excellent! You've mastered this material."
      - min: 80
        message: "Great job! Review [topics] for even better understanding."
      - min: 70
        message: "Good effort. Consider reviewing [topics] before moving on."
      - min: 0
        message: "Please review Module 1 content and try again."
```

### Step 5: Design Projects

```yaml
# content/assessments/projects/project-01.yaml
project:
  id: project-01
  title: ""
  type: capstone|module|mini

  metadata:
    duration: ""
    due: ""
    points: <n>
    weight: <percentage of grade>

  overview:
    description: |
      [What learners will create]

    purpose: |
      [Why this project matters]

    outcomes_assessed:
      - outcome-01
      - outcome-02
      - outcome-03

  brief:
    context: |
      [Scenario or background]

    challenge: |
      [What they need to solve/create]

    deliverables:
      - name: ""
        format: ""
        description: ""

    requirements:
      must_have:
        - ""
      should_have:
        - ""
      could_have:
        - ""

    constraints:
      - ""

  resources:
    provided:
      - name: ""
        description: ""
        link: ""
    allowed:
      - ""
    not_allowed:
      - ""

  milestones:
    - name: "Draft/Outline"
      due: ""
      deliverable: ""
      feedback: peer|instructor|self

    - name: "First Submission"
      due: ""
      deliverable: ""
      feedback: instructor

    - name: "Final Submission"
      due: ""
      deliverable: ""
      feedback: instructor

  submission:
    format: ""
    platform: ""
    instructions: |
      [How to submit]

  support:
    office_hours: ""
    q_and_a: ""
    peer_collaboration: allowed|encouraged|required

  evaluation:
    rubric_id: rubric-project-01
    self_assessment: true
    peer_review: true|false
    instructor_review: true
```

### Step 6: Create Rubrics

```yaml
# content/assessments/rubrics/rubric-project-01.yaml
rubric:
  id: rubric-project-01
  project_id: project-01
  title: ""

  overview:
    total_points: 100
    passing_score: 70

  criteria:
    - id: criterion-01
      name: ""
      description: ""
      weight: 25
      outcome_id: outcome-01

      levels:
        - level: 4
          name: "Exemplary"
          points: 25
          description: |
            [What exemplary looks like]

        - level: 3
          name: "Proficient"
          points: 20
          description: |
            [What proficient looks like]

        - level: 2
          name: "Developing"
          points: 15
          description: |
            [What developing looks like]

        - level: 1
          name: "Beginning"
          points: 10
          description: |
            [What beginning looks like]

        - level: 0
          name: "Not Demonstrated"
          points: 0
          description: |
            [Missing or not attempted]

    - id: criterion-02
      name: ""
      weight: 25
      # [Same structure...]

    - id: criterion-03
      name: ""
      weight: 25

    - id: criterion-04
      name: ""
      weight: 25

  feedback_template: |
    ## Overall Assessment

    **Score:** [X]/100 ([Level])

    ## Strengths
    -

    ## Areas for Improvement
    -

    ## Specific Feedback

    ### [Criterion 1]
    [Feedback]

    ### [Criterion 2]
    [Feedback]

    ## Next Steps
    -
```

### Step 7: Design Self-Assessments

```yaml
# content/assessments/self/self-assessment-m1.yaml
self_assessment:
  id: self-m1
  module: module-01
  title: "Module 1 Self-Reflection"

  purpose: |
    Reflect on your learning and identify areas for growth.

  instructions: |
    Answer honestly - this is for your benefit, not graded.

  sections:
    - section: "Knowledge Check"
      items:
        - statement: "I can explain [concept 1]"
          scale: [1, 2, 3, 4, 5]
          labels:
            1: "Not at all"
            5: "With confidence"

        - statement: "I understand [concept 2]"
          scale: [1, 2, 3, 4, 5]

    - section: "Skill Application"
      items:
        - statement: "I can apply [skill] in practice"
          scale: [1, 2, 3, 4, 5]

        - statement: "I've successfully [action]"
          scale: [1, 2, 3, 4, 5]

    - section: "Reflection"
      items:
        - prompt: "What was the most valuable thing you learned?"
          type: open_text

        - prompt: "What questions do you still have?"
          type: open_text

        - prompt: "How will you apply this learning?"
          type: open_text

  follow_up:
    low_scores:
      threshold: 3
      action: "Review these resources: [links]"
    high_scores:
      threshold: 4
      action: "Ready to move on! Consider these advanced resources: [links]"
```

### Step 8: Design Reaction Surveys (Kirkpatrick Level 1)

```yaml
# content/assessments/surveys/module-01-feedback.yaml
survey:
  id: survey-m1
  module: module-01
  title: "Module 1 Feedback"
  kirkpatrick_level: 1

  questions:
    - id: s01
      type: rating
      question: "How would you rate this module overall?"
      scale: [1, 2, 3, 4, 5]
      labels:
        1: "Poor"
        5: "Excellent"

    - id: s02
      type: rating
      question: "How relevant was the content to your goals?"
      scale: [1, 2, 3, 4, 5]

    - id: s03
      type: rating
      question: "How clear was the instruction?"
      scale: [1, 2, 3, 4, 5]

    - id: s04
      type: nps
      question: "How likely are you to recommend this course?"
      scale: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    - id: s05
      type: open
      question: "What did you like most about this module?"

    - id: s06
      type: open
      question: "What could be improved?"

    - id: s07
      type: multiple_choice
      question: "The pace of this module was:"
      options:
        - "Too slow"
        - "Just right"
        - "Too fast"
```

### Step 9: Define Certification Criteria

```yaml
# specs/certification.yaml
certification:
  name: ""
  description: ""

  requirements:
    completion:
      modules_required: all|[list]
      lessons_required: all|[percentage]

    assessments:
      quizzes:
        required: true
        minimum_score: 80%
      projects:
        required: true
        minimum_score: 70%
      final:
        required: true|false
        minimum_score: ""

    engagement:
      activities_completed: [percentage]
      discussions_participated: [n]

  credential:
    type: certificate|badge|both
    validity: lifetime|[duration]
    verification: url|code|both

    certificate:
      title: ""
      description: ""
      skills_listed: []
      template: ""

    badge:
      name: ""
      image: ""
      criteria_url: ""
      skills: []

  renewal:
    required: true|false
    period: ""
    requirements: []
```

## Outputs

### content/assessments/
```
content/assessments/
├── quizzes/
│   ├── module-01-quiz.yaml
│   └── module-02-quiz.yaml
├── projects/
│   ├── project-01.yaml
│   └── project-02.yaml
├── rubrics/
│   ├── rubric-project-01.yaml
│   └── rubric-project-02.yaml
├── self/
│   ├── self-assessment-m1.yaml
│   └── self-assessment-m2.yaml
└── surveys/
    ├── module-01-feedback.yaml
    └── course-feedback.yaml
```

### specs/assessments.yaml
Complete assessment strategy and mapping

### specs/certification.yaml
Certification requirements and credentials

### progress.yaml (updated)
```yaml
phases:
  assessments:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    quizzes_created: <n>
    projects_created: <n>
    rubrics_created: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 8:

- [ ] All outcomes have assessments
- [ ] Quizzes align with Bloom's levels
- [ ] Projects have clear rubrics
- [ ] Kirkpatrick levels covered
- [ ] Self-assessments included
- [ ] Feedback surveys designed
- [ ] Certification criteria defined
- [ ] Ready for media planning

## Git Commit

```bash
git add content/assessments specs/assessments.yaml \
        specs/certification.yaml progress.yaml
git commit -m "Phase 8: Assessment design complete

- Created [n] quizzes with [n] questions
- Designed [n] projects with rubrics
- Defined certification requirements
- All Kirkpatrick levels covered"
git tag -a phase-8-assessments -m "Assessment Design Complete"
```

## Next Phase

After completing Phase 8, proceed to:
→ `/course-media` (Phase 9: Media Production Planning)

The media phase will:
- Create video shot lists
- Plan graphics and animations
- Specify audio requirements
- Document accessibility needs
