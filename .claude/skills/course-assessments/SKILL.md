---
name: course-assessments
description: Use for Phase 8 of Course OS - designing comprehensive assessments aligned with Kirkpatrick's 4 levels including quizzes, projects, rubrics, and certification criteria. Triggers on "/course-assessments", "create assessments", "design quizzes", "build rubrics", or after completing Phase 7.
prerequisites: [course-scripts]
outputs: [specs/assessments.yaml, content/assessments/quizzes/, content/assessments/projects/, content/assessments/rubrics/]
exports: []
frameworks: [kirkpatrick-metrics, blooms-taxonomy]
---

# Phase 8: Assessment Design

Design assessments to validate learning and provide feedback loops.

## Prerequisites

- Phase 7 complete
- `specs/outcomes.yaml` exists
- `specs/curriculum.yaml` has assessment mapping

## Assessment Types by Kirkpatrick Level

| Level | Focus | Assessment Types |
|-------|-------|-----------------|
| L1: Reaction | Satisfaction | Surveys, feedback forms, NPS |
| L2: Learning | Knowledge gain | Quizzes, tests, demonstrations |
| L3: Behavior | Application | Projects, portfolios, peer review |
| L4: Results | Outcomes | Follow-up surveys, metrics |

> Full reference: `.claude/standards/kirkpatrick-metrics.md`

## Process

### Step 1: Map Assessments to Outcomes

Create `specs/assessments.yaml`:

```yaml
assessment_map:
  outcome-01:
    type: quiz
    kirkpatrick_level: 2
    lesson: lesson-03
    passing_score: 80

  outcome-02:
    type: project
    kirkpatrick_level: 3
    module: module-02
    rubric: rubric-01

  outcome-03:
    type: demonstration
    kirkpatrick_level: 2
    lesson: lesson-05

overall:
  completion_criteria: ""
  certification_requirements: []
```

### Step 2: Design Quizzes

Create quizzes in `content/assessments/quizzes/`:

```yaml
# content/assessments/quizzes/module-01-quiz.yaml
quiz:
  id: quiz-01
  title: "Module 1 Knowledge Check"
  lesson: lesson-03
  outcomes: [outcome-01]

  settings:
    time_limit: 10  # minutes, 0 = unlimited
    attempts: 3
    passing_score: 80
    randomize: true
    show_answers: after_submission

  questions:
    # Multiple Choice
    - id: q1
      type: multiple_choice
      question: "Which of the following is NOT an OAuth actor?"
      options:
        - text: "Resource Owner"
          correct: false
        - text: "Client"
          correct: false
        - text: "Database Server"
          correct: true
        - text: "Authorization Server"
          correct: false
      explanation: "The four OAuth actors are: Resource Owner, Client, Authorization Server, and Resource Server."
      bloom_level: remember

    # Multiple Select
    - id: q2
      type: multiple_select
      question: "Select ALL valid OAuth grant types:"
      options:
        - text: "Authorization Code"
          correct: true
        - text: "Client Credentials"
          correct: true
        - text: "Password Transfer"
          correct: false
        - text: "Implicit"
          correct: true
      partial_credit: true
      bloom_level: remember

    # True/False
    - id: q3
      type: true_false
      question: "OAuth is an authentication protocol."
      correct: false
      explanation: "OAuth is an authorization protocol. Authentication verifies identity; authorization grants access."
      bloom_level: understand

    # Short Answer
    - id: q4
      type: short_answer
      question: "Explain why access tokens should be short-lived."
      sample_answer: "Short-lived tokens limit the damage if a token is stolen. An attacker can only use it briefly."
      key_points:
        - "Security benefit"
        - "Limits exposure window"
      bloom_level: understand
```

**Question Types:**
- `multiple_choice` - Single correct answer
- `multiple_select` - Multiple correct answers
- `true_false` - Boolean
- `short_answer` - Free text
- `matching` - Pair terms with definitions

### Step 3: Design Projects

Create projects in `content/assessments/projects/`:

```yaml
# content/assessments/projects/project-01.yaml
project:
  id: project-01
  title: "OAuth Implementation Project"
  module: module-02
  outcomes: [outcome-02, outcome-03]
  kirkpatrick_level: 3

  overview: |
    Build a complete OAuth implementation for a web application.
    This project demonstrates your ability to apply OAuth concepts
    in a real-world scenario.

  learning_goals:
    - "Implement OAuth 2.0 authorization code flow"
    - "Handle token refresh and expiration"
    - "Secure token storage"

  requirements:
    - "Functional 'Login with Google' button"
    - "Protected routes that require authentication"
    - "Token refresh without user intervention"
    - "Logout functionality"

  deliverables:
    - name: "GitHub Repository"
      format: "Link to public repo"
      description: "Complete source code with README"

    - name: "Demo Video"
      format: "2-3 minute Loom or similar"
      description: "Walkthrough of working implementation"

  timeline:
    estimated_hours: 4
    due: "End of Module 2"
    milestones:
      - checkpoint: "Basic OAuth working"
        when: "After lesson 5"

  resources:
    - name: "Starter Template"
      url: ""
    - name: "OAuth Documentation"
      url: ""

  rubric: rubric-01

  examples:
    - name: "Exemplary Submission"
      level: exemplary
      file: "examples/project-01-exemplary.md"
      notes: "Clean code, comprehensive error handling"

    - name: "Proficient Submission"
      level: proficient
      file: "examples/project-01-proficient.md"
```

**Project Types:**
- **Capstone**: Comprehensive, multi-module synthesis
- **Mini-Project**: Single module, focused skill
- **Peer-Reviewed**: Submit → Review others → Revise

### Step 4: Create Rubrics

Create rubrics in `content/assessments/rubrics/`:

```yaml
# content/assessments/rubrics/rubric-01.yaml
rubric:
  id: rubric-01
  title: "OAuth Implementation Rubric"
  type: analytic  # analytic | holistic | single_point | checklist
  scale: [4, 3, 2, 1]  # Exemplary, Proficient, Developing, Beginning

  criteria:
    - name: "Functionality"
      weight: 40
      levels:
        4: "All requirements met, handles edge cases gracefully"
        3: "All requirements met, basic error handling"
        2: "Most requirements met, some issues"
        1: "Core functionality incomplete"

    - name: "Code Quality"
      weight: 30
      levels:
        4: "Clean, well-organized, follows best practices"
        3: "Readable, mostly organized"
        2: "Functional but messy"
        1: "Difficult to read or maintain"

    - name: "Security"
      weight: 30
      levels:
        4: "Secure token storage, no vulnerabilities"
        3: "Mostly secure, minor issues"
        2: "Security gaps present"
        1: "Major security vulnerabilities"

  passing:
    minimum_total: 70
    required_criteria:
      - name: "Functionality"
        minimum: 2
      - name: "Security"
        minimum: 2
```

**Rubric Types:**
- **Analytic**: Separate score per criterion
- **Holistic**: Single overall score
- **Single-Point**: Describes proficient only
- **Checklist**: Binary met/not met

### Step 5: Design Self-Assessments

Create reflection tools in `content/assessments/self/`:

```yaml
# content/assessments/self/module-01-reflection.yaml
self_assessment:
  id: self-01
  module: module-01

  confidence_check:
    - skill: "Explain OAuth flow"
      scale: [1, 2, 3, 4, 5]
      prompt: "How confident are you in explaining OAuth to a colleague?"

    - skill: "Implement OAuth"
      scale: [1, 2, 3, 4, 5]
      prompt: "How confident are you in implementing OAuth from scratch?"

  reflection_prompts:
    - "What was the most challenging concept in this module?"
    - "How will you apply this in your current project?"
    - "What questions do you still have?"

  action_planning:
    - "One thing I'll do differently after this module:"
    - "One resource I'll explore further:"
```

### Step 6: Design Feedback Surveys (L1)

Create surveys in `content/assessments/surveys/`:

```yaml
# content/assessments/surveys/end-of-course.yaml
survey:
  id: survey-eoc
  type: reaction  # Kirkpatrick L1
  timing: end_of_course

  questions:
    - id: s1
      type: rating
      question: "Overall, how satisfied were you with this course?"
      scale: [1, 2, 3, 4, 5]
      labels: ["Very Dissatisfied", "Dissatisfied", "Neutral", "Satisfied", "Very Satisfied"]

    - id: s2
      type: nps
      question: "How likely are you to recommend this course to a colleague?"
      scale: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    - id: s3
      type: open
      question: "What was the most valuable part of this course?"

    - id: s4
      type: open
      question: "What could be improved?"
```

## Outputs

| Directory | Purpose |
|-----------|---------|
| `specs/assessments.yaml` | Assessment mapping |
| `content/assessments/quizzes/` | Quiz content |
| `content/assessments/projects/` | Project specs |
| `content/assessments/rubrics/` | Grading rubrics |
| `content/assessments/self/` | Self-assessments |
| `content/assessments/surveys/` | Feedback surveys |

## Quality Gate

- [ ] All outcomes have assessments
- [ ] All 4 Kirkpatrick levels represented
- [ ] Quizzes align with Bloom's levels
- [ ] Rubrics are clear and objective
- [ ] Passing criteria defined
- [ ] Feedback mechanisms included

## Git Commit

```bash
git add specs/assessments.yaml content/assessments specs/progress.yaml
git commit -m "Phase 8: Assessment design complete"
git tag -a phase-8-assessments -m "Assessment Design Complete"
```

## Next Phase

→ `/course-media` (Phase 9: Media Production Planning)
