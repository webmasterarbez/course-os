# Phase 8: Assessments - Quick Reference

## Kirkpatrick → Assessment Types
| Level | Types |
|-------|-------|
| L1 Reaction | Surveys, NPS |
| L2 Learning | Quizzes, tests |
| L3 Behavior | Projects, portfolios |
| L4 Results | Follow-up surveys |

## Question Types
`multiple_choice` | `multiple_select` | `true_false` | `short_answer` | `matching`

## Quiz Structure
```yaml
quiz:
  settings:
    time_limit: 10
    attempts: 3
    passing_score: 80
  questions:
    - type: multiple_choice
      question: ""
      options: []
      explanation: ""
      bloom_level: remember
```

## Rubric Types
- **Analytic**: Score per criterion
- **Holistic**: Single overall score
- **Single-Point**: Proficient only
- **Checklist**: Met/not met

## Outputs
- `specs/assessments.yaml`
- `content/assessments/quizzes/`
- `content/assessments/projects/`
- `content/assessments/rubrics/`
- `content/assessments/self/`
- `content/assessments/surveys/`

## Quality Gate
□ All outcomes assessed
□ All 4 Kirkpatrick levels
□ Bloom's alignment
□ Rubrics clear
□ Passing criteria defined

## Command
`/course-assessments`

## Next
→ Phase 9: `/course-media`
