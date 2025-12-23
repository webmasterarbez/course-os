# /phase skip

Skip the current phase and proceed to the next.

## Usage

```
/phase skip
/phase skip --reason "Already have content from previous version"
```

## Arguments

- `--reason` - Reason for skipping (recommended)

## When to Use

- Phase content already exists from another source
- Profile doesn't require this phase
- Intentionally deferring phase for later
- Time constraints require fast-tracking

## Process

1. Read current phase from `specs/progress.yaml`
2. Validate skip is allowed (profile configuration)
3. Mark phase as `skipped` with reason
4. Update progress to next phase
5. Create skip record in `.course-os/reviews/`

## Profile Restrictions

Some profiles skip phases by default:

| Profile | Skipped Phases |
|---------|----------------|
| default | None |
| mini | 3 (Discovery), 8 (Assessments), 9 (Media) |
| workshop | 1-3 (Import, Research, Discovery), 7 (Scripts), 9 (Media) |

You can skip additional phases beyond profile defaults.

## Output

```
Skipping Phase 3: Audience & Market Discovery

Reason: Already have customer research from marketing team

Impact:
  ⚠ Phase 4 (Strategy) may need manual persona input
  ⚠ Competitor analysis will not be generated

Skipped phases can be revisited with /phase redo 3

Progress updated:
  Phase 2: Research     ✓ Complete
  Phase 3: Discovery    ⊘ Skipped
  Phase 4: Strategy     → Now current

Continue with /course-strategy
```

## Warnings

Skipping certain phases affects later work:

| Skipped Phase | Impact |
|---------------|--------|
| 1 (Import) | No source catalog; research starts from scratch |
| 2 (Research) | Limited topic knowledge; manual input needed |
| 3 (Discovery) | No personas; must define audience in Phase 4 |
| 4 (Strategy) | No formal outcomes; use defaults |
| 5 (Architecture) | No curriculum structure; flat lesson list |
| 8 (Assessments) | No quizzes/projects; pure content delivery |
| 9 (Media) | No production specs; ad-hoc media |

## Skip Record

Created in `.course-os/reviews/`:

```yaml
# .course-os/reviews/skip-phase-3.yaml
skip:
  phase: 3
  phase_name: "discovery"
  skipped_at: 2024-01-15T10:30:00Z
  reason: "Already have customer research from marketing team"
  profile: default
  manual_skip: true
  acknowledged_impacts:
    - "Phase 4 may need manual persona input"
    - "Competitor analysis not generated"
```

## Restrictions

Cannot skip:
- Phase 10 (Production) - required for export
- Already completed phases (use `/phase redo` instead)
- Phases with dependencies in progress

## See Also

- `/phase redo` - Redo a completed phase
- `/phase complete` - Force-complete current phase
- `/course status` - View progress
- `config.yml` - Profile skip settings
