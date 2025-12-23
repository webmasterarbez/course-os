# Phase 5: Architecture - Quick Reference

## Gagné's 9 Events (Quick)
| # | Event | Purpose |
|---|-------|---------|
| 1 | Attention | Hook |
| 2 | Objectives | "You'll learn..." |
| 3 | Recall | Connect prior |
| 4 | Content | New info |
| 5 | Guidance | Tips, mistakes |
| 6 | Practice | Exercises |
| 7 | Feedback | Correction |
| 8 | Assessment | Verify |
| 9 | Retention | Transfer |

## Lesson Types
| Type | Emphasis |
|------|----------|
| Instruction | 1-5, 9 |
| Demonstration | 1-4, 6, 9 |
| Practice | 3, 6, 7, 9 |
| Assessment | 3, 8, 9 |

## Curriculum Structure
```yaml
modules:
  - id: module-01
    title: ""
    outcomes: []
    lessons: []
    prerequisites: []
```

## Outputs
- `specs/curriculum.yaml`
- `specs/modules/*.yaml`

## Quality Gate
□ All outcomes mapped
□ Logical progression
□ Prerequisites respected
□ Gagné's events per lesson
□ Duration realistic
□ Learning paths defined

## Command
`/course-architecture`

## Next
→ Phase 6: `/course-content`
