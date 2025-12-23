---
name: course-content
description: Use for Phase 6 of Course OS - designing detailed lesson content including examples, case studies, activities, and resources following Merrill's First Principles. Triggers on "/course-content", "design lessons", "create examples", "plan activities", or after completing Phase 5.
---

# Phase 6: Content Design

Create detailed lesson plans, examples, activities, and curated resources.

## Prerequisites

- Phase 5 complete
- `specs/curriculum.yaml` exists
- `specs/modules/*.yaml` exist

## Process

### Step 1: Review Architecture

```bash
cat specs/curriculum.yaml
ls specs/modules/
```

### Step 2: Design Lesson Blueprints

For each lesson, create detailed blueprint following Merrill's Principles - see `./merrills-principles.md`

```yaml
# content/lessons/module-01/lesson-01.yaml
lesson:
  id: lesson-01
  title: ""

  problem_context: ""  # Real-world problem this addresses

  activation:
    prior_knowledge: ""
    connection: ""

  demonstration:
    explanation: ""
    examples: []
    non_examples: []

  application:
    guided_practice: ""
    independent_practice: ""

  integration:
    reflection: ""
    real_world_transfer: ""
```

### Step 3: Create Examples

For each major concept:
- Real-world example
- Step-by-step walkthrough
- Common variations
- Edge cases

Save to `content/examples/`

### Step 4: Design Activities

Create practice activities:
- Exercises (skill-building)
- Projects (application)
- Discussions (reflection)

Save to `content/activities/`

### Step 5: Curate Resources

Gather supporting materials:
- Templates and downloads
- Tools and references
- Further reading

Save to `content/resources/`

## Outputs

- `content/lessons/` - Lesson blueprints
- `content/examples/` - Case studies and examples
- `content/activities/` - Exercises and projects
- `content/resources/` - Curated resources

## Quality Checklist

- [ ] All lessons have blueprints
- [ ] Merrill's principles applied
- [ ] Examples are realistic
- [ ] Activities are actionable
- [ ] Resources are curated (not dumped)

## Git Commit

```bash
git add content/lessons content/examples content/activities content/resources specs/progress.yaml
git commit -m "Phase 6: Content design complete"
git tag -a phase-6-content -m "Content Design Complete"
```

## Next Phase

→ `/course-scripts` (Phase 7: Script Development)
