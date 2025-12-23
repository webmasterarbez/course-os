# Rubric Templates

## Analytic Rubric

Scores each criterion separately.

```yaml
# content/assessments/rubrics/rubric-01.yaml
rubric:
  id: rubric-01
  type: analytic
  scale: [4, 3, 2, 1]  # Exemplary, Proficient, Developing, Beginning

  criteria:
    - name: "Criterion 1"
      weight: 25  # Percentage
      levels:
        4: "Description of exemplary performance"
        3: "Description of proficient performance"
        2: "Description of developing performance"
        1: "Description of beginning performance"

    - name: "Criterion 2"
      weight: 25
      levels:
        4: ""
        3: ""
        2: ""
        1: ""

  passing:
    minimum_total: 70
    required_criteria:
      - name: "Criterion 1"
        minimum: 2
```

## Holistic Rubric

Single overall score.

```yaml
rubric:
  id: rubric-02
  type: holistic
  scale: [4, 3, 2, 1]

  levels:
    4: |
      Exemplary: Complete description of what
      constitutes top-level work...

    3: |
      Proficient: Description of solid,
      competent work...

    2: |
      Developing: Description of work that
      shows understanding but needs improvement...

    1: |
      Beginning: Description of work that
      does not yet meet expectations...

  passing: 2
```

## Single-Point Rubric

Describes proficient, with space for feedback.

```yaml
rubric:
  id: rubric-03
  type: single_point

  criteria:
    - name: "Criterion 1"
      proficient: "Description of proficient performance"
      feedback_areas:
        - "Areas for growth"
        - "Areas of strength"
```

## Checklist Rubric

Binary criteria (met/not met).

```yaml
rubric:
  id: rubric-04
  type: checklist

  required:  # Must have all
    - "Criterion that must be met"
    - "Another required criterion"

  optional:  # Bonus points
    - "Nice to have criterion"

  passing: "All required criteria met"
```
