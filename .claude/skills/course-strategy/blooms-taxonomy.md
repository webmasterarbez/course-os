# Bloom's Taxonomy for Learning Outcomes

## Cognitive Levels (Highest to Lowest)

| Level | Description | Action Verbs | Example |
|-------|-------------|--------------|---------|
| **Create** | Produce new work | Design, construct, develop, formulate, build | "Design a complete marketing funnel" |
| **Evaluate** | Justify decisions | Judge, critique, assess, defend, recommend | "Evaluate strategy effectiveness" |
| **Analyze** | Break down components | Compare, contrast, examine, differentiate | "Analyze user behavior patterns" |
| **Apply** | Use in new situations | Implement, execute, use, demonstrate | "Apply the framework to real projects" |
| **Understand** | Explain concepts | Explain, describe, summarize, interpret | "Explain how the algorithm works" |
| **Remember** | Recall facts | Recall, list, define, identify, name | "Identify the key components" |

## Outcomes Schema

```yaml
# specs/outcomes.yaml
outcomes:
  primary:
    - id: outcome-01
      statement: "Learners will be able to..."
      bloom_level: create|evaluate|analyze|apply|understand|remember
      measurable: true
      assessment_method: ""

  secondary:
    - id: outcome-02
      statement: ""
      bloom_level: ""
      measurable: true
      assessment_method: ""

  # Filled in Phase 5
  module_mapping: {}
```

## Writing Good Outcomes

- Start with "Learners will be able to..."
- Use ONE measurable verb
- Be specific about the context
- Ensure it's assessable

**Good**: "Learners will be able to design a 3-email welcome sequence that achieves >40% open rates."

**Bad**: "Learners will understand email marketing."
