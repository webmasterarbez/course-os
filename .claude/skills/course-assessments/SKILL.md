---
name: course-assessments
description: Use for Phase 8 of Course OS - designing comprehensive assessments aligned with Kirkpatrick's 4 levels including quizzes, projects, rubrics, and certification criteria. Triggers on "/course-assessments", "create assessments", "design quizzes", "build rubrics", or after completing Phase 7.
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
| Level 1: Reaction | Satisfaction | Surveys, feedback forms |
| Level 2: Learning | Knowledge gain | Quizzes, tests, demonstrations |
| Level 3: Behavior | Application | Projects, portfolios, peer review |
| Level 4: Results | Outcomes | Follow-up surveys, metrics |

## Process

### Step 1: Map Assessments to Outcomes

For each learning outcome, identify assessment method:

```yaml
# specs/assessments.yaml
assessment_map:
  outcome-01:
    type: quiz
    kirkpatrick_level: 2
    lesson: lesson-03

  outcome-02:
    type: project
    kirkpatrick_level: 3
    module: module-02
```

### Step 2: Design Quizzes

For each quiz - see `./quiz-design.md`:
- Question types (multiple choice, short answer, etc.)
- Correct answers and explanations
- Passing threshold

Save to `content/assessments/quizzes/`

### Step 3: Design Projects

For each project - see `./project-design.md`:
- Clear requirements
- Deliverables
- Rubric with criteria
- Example submissions

Save to `content/assessments/projects/`

### Step 4: Create Rubrics

See `./rubric-templates.md` for rubric structures.

### Step 5: Design Self-Assessments

Create reflection prompts and self-check tools.

## Outputs

- `specs/assessments.yaml` - Assessment mapping
- `content/assessments/quizzes/` - Quiz content
- `content/assessments/projects/` - Project specs
- `content/assessments/rubrics/` - Grading rubrics

## Quality Checklist

- [ ] All outcomes have assessments
- [ ] Kirkpatrick levels covered (1-4)
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
