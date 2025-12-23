# Persona Schema

```yaml
# specs/personas.yaml
personas:
  - id: persona-01
    name: ""  # Memorable name like "Career-Changer Carlos"
    role: ""

    demographics:
      age_range: ""
      location: ""
      education: ""

    current_state:
      knowledge_level: beginner|intermediate|advanced
      existing_skills: []
      current_challenges: []
      failed_attempts: []

    goals:
      primary: ""
      secondary: []
      timeline: ""

    motivations:
      intrinsic: []  # Personal growth, curiosity
      extrinsic: []  # Career, money, recognition

    constraints:
      time_available: ""
      budget: ""
      learning_environment: ""
      obstacles: []

    preferences:
      content_format: []
      learning_style: ""
      pace: ""
      support_needs: ""

    objections:
      - objection: ""
        response: ""

    success_definition: ""

  - id: persona-02
    # Secondary persona...
```

## Persona Types

- **Primary**: Main target learner (60-70% of audience)
- **Secondary**: Additional valid targets (20-30%)
- **Edge Case**: Occasional learner (avoid designing for)
