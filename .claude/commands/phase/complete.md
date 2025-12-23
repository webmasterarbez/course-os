# /phase complete

Force-complete the current phase.

## Usage

```
/phase complete
/phase complete --skip-validation
/phase complete --reason "Minimum viable content ready"
```

## Arguments

- `--skip-validation` - Skip quality gate checks
- `--reason` - Reason for force-completing

## When to Use

- Minimum viable content is sufficient
- Time constraints require moving forward
- Manual review confirmed quality
- Outputs created outside Course OS workflow

## Process

1. Run quality validation (unless `--skip-validation`)
2. Warn about any issues
3. Mark phase as complete
4. Create completion record
5. Advance to next phase
6. Create git commit and tag

## Output

### With Passing Validation

```
Completing Phase 4: Course Strategy

Running quality checks...
  ✓ Learning outcomes defined (8 outcomes)
  ✓ Bloom's levels specified
  ✓ Kirkpatrick metrics defined
  ✓ Format specified
  ✓ Prerequisites documented

Quality Score: 92/100 (PASS)

Completing phase...
  ✓ Updated specs/progress.yaml
  ✓ Git commit: "Phase 4: Course strategy complete"
  ✓ Git tag: phase-4-strategy

Phase 4 complete!
Next: /course-architecture (Phase 5)
```

### With Failing Validation

```
Completing Phase 4: Course Strategy

Running quality checks...
  ✓ Learning outcomes defined (5 outcomes)
  ✓ Bloom's levels specified
  ✗ Kirkpatrick L4 metrics missing
  ✓ Format specified
  ✗ Prerequisites not documented

Quality Score: 68/100 (FAIL)

Issues found:
  CRITICAL: Kirkpatrick L4 metrics missing
  MAJOR: Prerequisites not documented

Options:
  1. Fix issues and retry
  2. Force complete anyway (--skip-validation)
  3. Cancel

Note: Quality gate is set to 'strict' in config.yml
      Force-completing will create a warning in progress.yaml
```

### Force Complete

```
/phase complete --skip-validation --reason "MVP timeline"

⚠ Force-completing Phase 4 with validation failures

Reason: MVP timeline

Issues being bypassed:
  ✗ Kirkpatrick L4 metrics missing
  ✗ Prerequisites not documented

Recording in progress.yaml...

Completing phase...
  ✓ Updated specs/progress.yaml (with force_complete flag)
  ✓ Git commit: "Phase 4: Course strategy complete (forced)"
  ✓ Git tag: phase-4-strategy

⚠ Phase 4 force-completed with issues
  Review before Phase 10 export

Next: /course-architecture (Phase 5)
```

## Progress Record

```yaml
# In specs/progress.yaml
phases:
  strategy:
    status: completed
    started_at: 2024-01-15T09:00:00Z
    completed_at: 2024-01-15T14:30:00Z
    force_completed: true
    force_reason: "MVP timeline"
    quality_score: 68
    validation_issues:
      - type: critical
        issue: "Kirkpatrick L4 metrics missing"
      - type: major
        issue: "Prerequisites not documented"
```

## Quality Gate Modes

From `config.yml`:

| Mode | Behavior |
|------|----------|
| `strict` | Block on critical + major issues |
| `relaxed` | Block only on critical issues |
| `none` | Allow completion with any issues |

## Git Actions

On successful completion:
- Commit all phase outputs
- Create phase tag: `phase-N-name`
- Update progress.yaml

```bash
# Example commit
git commit -m "Phase 4: Course strategy complete"
git tag -a phase-4-strategy -m "Course Strategy Complete"
```

## Restrictions

- Cannot complete Phase 10 without all earlier phases complete/skipped
- Cannot complete if required outputs don't exist
- Force-complete recorded for audit trail

## See Also

- `/phase skip` - Skip current phase
- `/phase redo` - Redo completed phase
- `/course validate` - Run validation
- `config.yml` - Quality gate settings
