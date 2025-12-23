# /course status

Display current course development progress.

## Usage

```
/course status
/course status --detailed
/course status --phase 4
```

## Arguments

- `--detailed` - Show detailed phase information
- `--phase N` - Show details for specific phase

## Process

1. Read `specs/progress.yaml`
2. Read `specs/course.yaml`
3. Calculate completion metrics
4. Display formatted status

## Output

### Standard View

```
Course: Building SaaS Products
Profile: default
Status: in_development

Progress: ████████░░░░░░░░░░░░ 4/10 phases (40%)

Phases:
  ✓ 1. Import      - Complete (12 sources imported)
  ✓ 2. Research    - Complete (4 passes, 45 concepts mapped)
  ✓ 3. Discovery   - Complete (3 personas, 5 competitors)
  → 4. Strategy    - In Progress (started 2024-01-15)
  ○ 5. Architecture
  ○ 6. Content
  ○ 7. Scripts
  ○ 8. Assessments
  ○ 9. Media
  ○ 10. Production

Next: Complete Phase 4 (Strategy) → /course-strategy
```

### Detailed View (--detailed)

```
Course: Building SaaS Products
Profile: default
Created: 2024-01-10
Last Updated: 2024-01-15

PHASE DETAILS:

1. Import (Complete)
   Started: 2024-01-10
   Completed: 2024-01-10
   Sources: 12
   Files: .course-os/imports/catalog.yaml
   Gaps Identified: 3

2. Research (Complete)
   Started: 2024-01-11
   Completed: 2024-01-12
   Passes: 4
   Concepts Mapped: 45
   Misconceptions: 8
   Files: .course-os/research/

3. Discovery (Complete)
   Started: 2024-01-12
   Completed: 2024-01-14
   Personas: 3
   Competitors: 5
   Files: specs/personas.yaml, specs/positioning.yaml

4. Strategy (In Progress)
   Started: 2024-01-15
   Outcomes Defined: 5/8
   Notes: Working on success metrics

QUALITY SCORES:
  Phase 1: 92/100
  Phase 2: 88/100
  Phase 3: 95/100

BLOCKERS: None

NEXT STEPS:
  1. Complete remaining learning outcomes
  2. Define success metrics (Kirkpatrick L3-4)
  3. Run /course-strategy to continue
```

## Phase Status Icons

| Icon | Status |
|------|--------|
| ✓ | Completed |
| → | In Progress |
| ○ | Pending |
| ✗ | Blocked |
| ⊘ | Skipped (profile) |

## Example Commands

```bash
# Quick status
/course status

# Full details
/course status --detailed

# Specific phase
/course status --phase 3
```

## See Also

- `/course validate` - Run quality checks
- `/course-os` - Resume development
- `specs/progress.yaml` - Raw progress data
