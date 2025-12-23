# Quiz Design Guide

## Question Types

### Multiple Choice
Best for: Knowledge recall, concept recognition

```yaml
- question: ""
  type: multiple_choice
  options:
    - text: ""
      correct: false
    - text: ""
      correct: true
  explanation: "Why this is correct..."
  bloom_level: remember|understand
```

### Multiple Select
Best for: Identifying multiple factors/components

```yaml
- question: "Select ALL that apply..."
  type: multiple_select
  options:
    - text: ""
      correct: true
    - text: ""
      correct: true
    - text: ""
      correct: false
  partial_credit: true
```

### True/False
Best for: Quick concept checks

```yaml
- question: ""
  type: true_false
  correct: true|false
  explanation: ""
```

### Short Answer
Best for: Application, explanation

```yaml
- question: ""
  type: short_answer
  sample_answer: ""
  key_points:
    - ""
  max_length: 500
```

### Matching
Best for: Relationships, definitions

```yaml
- question: "Match the terms with definitions"
  type: matching
  pairs:
    - left: "Term A"
      right: "Definition A"
    - left: "Term B"
      right: "Definition B"
```

## Quiz Structure

```yaml
# content/assessments/quizzes/module-01-quiz.yaml
quiz:
  id: quiz-01
  title: ""
  lesson: lesson-03
  outcomes: [outcome-01]

  settings:
    time_limit: 10  # minutes, 0 = unlimited
    attempts: 3
    passing_score: 80
    randomize: true
    show_answers: after_submission

  questions:
    - # question 1
    - # question 2
```

## Best Practices

- 5-10 questions per quiz
- Mix question types
- Include explanations for all answers
- Test what matters (outcomes)
- Avoid trick questions
