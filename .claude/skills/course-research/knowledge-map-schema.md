# Knowledge Map Schema

```yaml
# .course-os/research/knowledge-map.yaml
concepts:
  - id: concept-001
    name: ""
    description: ""
    prerequisites: []
    related_to: []
    complexity: beginner|intermediate|advanced
    sources: []

  - id: concept-002
    name: ""
    description: ""
    prerequisites: [concept-001]
    related_to: []
    complexity: intermediate
    sources: []

relationships:
  - from: concept-001
    to: concept-002
    type: prerequisite|related|builds_on|contrasts_with

sequences:
  suggested_order:
    - concept-001
    - concept-002
    - concept-003
```

## Relationship Types

- `prerequisite` - Must understand A before B
- `related` - Connected but independent
- `builds_on` - B extends or deepens A
- `contrasts_with` - A and B are opposing approaches

## Complexity Levels

- `beginner` - Foundational, no prior knowledge needed
- `intermediate` - Requires some foundation
- `advanced` - Requires solid intermediate understanding
