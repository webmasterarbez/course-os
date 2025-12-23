# Kirkpatrick's 4 Levels of Evaluation

## Success Metrics Schema

```yaml
# specs/success-metrics.yaml
metrics:
  level_1_reaction:
    # Learner satisfaction
    - metric: "Course satisfaction score"
      target: ">= 4.5/5"
      measurement: "End-of-course survey"

    - metric: "Net Promoter Score"
      target: ">= 50"
      measurement: "NPS survey"

  level_2_learning:
    # Knowledge/skill acquisition
    - metric: "Assessment pass rate"
      target: ">= 85%"
      measurement: "Quiz/test scores"

    - metric: "Project completion rate"
      target: ">= 70%"
      measurement: "Project submissions"

  level_3_behavior:
    # Application of learning
    - metric: "Implementation rate"
      target: ""
      measurement: "Follow-up survey at 30 days"

    - metric: "Behavior change indicators"
      target: ""
      measurement: ""

  level_4_results:
    # Business/life outcomes
    - metric: "Outcome achievement"
      target: ""
      measurement: "Follow-up at 90 days"

    - metric: "ROI indicators"
      target: ""
      measurement: ""

  operational:
    - metric: "Completion rate"
      target: ">= 60%"

    - metric: "Module completion"
      target: ">= 80%"
```

## The 4 Levels Explained

| Level | Focus | Question | When to Measure |
|-------|-------|----------|-----------------|
| 1. Reaction | Satisfaction | Did they enjoy it? | Immediately after |
| 2. Learning | Knowledge gain | Did they learn it? | During & after |
| 3. Behavior | Application | Are they using it? | 30-90 days later |
| 4. Results | Outcomes | Did it work? | 90+ days later |
