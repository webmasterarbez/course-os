# /phase redo

Redo a previously completed or skipped phase.

## Usage

```
/phase redo 3
/phase redo discovery
/phase redo 3 --preserve
```

## Arguments

- `<phase>` - Phase number (1-10) or name (required)
- `--preserve` - Keep existing outputs, only add/update

## Phase Names

| Number | Name | Skill |
|--------|------|-------|
| 1 | import | `/course-import` |
| 2 | research | `/course-research` |
| 3 | discovery | `/course-discovery` |
| 4 | strategy | `/course-strategy` |
| 5 | architecture | `/course-architecture` |
| 6 | content | `/course-content` |
| 7 | scripts | `/course-scripts` |
| 8 | assessments | `/course-assessments` |
| 9 | media | `/course-media` |
| 10 | production | `/course-production` |

## When to Use

- New information requires updating earlier work
- Quality issues identified in later phases
- Scope changed requiring restructure
- Reviving a skipped phase
- Iterative improvement

## Process

1. Validate phase was completed or skipped
2. Archive current outputs (unless `--preserve`)
3. Reset phase status to `in_progress`
4. Reset dependent phases to `pending` (optional prompt)
5. Resume phase skill

## Cascade Options

When redoing a phase, later phases may be affected:

```
Redo Phase 3: Audience & Market Discovery

This may affect:
  • Phase 4: Strategy (outcomes may need updating)
  • Phase 5: Architecture (structure may change)
  • Phase 6+: Content based on earlier phases

Options:
  1. Redo Phase 3 only (may cause inconsistencies)
  2. Redo Phase 3 and reset 4-10 to pending
  3. Cancel

Choice: _
```

## Output

```
Redoing Phase 3: Audience & Market Discovery

Current status: Complete
Last completed: 2024-01-14

Action:
  ✓ Archived existing outputs to .course-os/archive/phase-3-v1/
  ✓ Reset phase 3 to in_progress
  ✓ Reset phases 4-10 to pending (per your choice)

Previous outputs preserved at:
  .course-os/archive/phase-3-v1/

Starting fresh Phase 3...

[Phase 3 skill begins]
```

## Archive Structure

Previous outputs archived to:

```
.course-os/archive/
└── phase-3-v1/
    ├── timestamp.txt           # When archived
    ├── specs/
    │   ├── personas.yaml
    │   ├── positioning.yaml
    │   └── learner-journey.yaml
    └── research/
        └── competitors.yaml
```

## Preserve Mode

With `--preserve`:
- Existing files kept
- New work merged/added
- Useful for incremental updates
- Must manually resolve conflicts

```
/phase redo 3 --preserve

Redo Phase 3 in PRESERVE mode

Existing outputs will be kept:
  • specs/personas.yaml (3 personas)
  • specs/positioning.yaml
  • .course-os/research/competitors.yaml (5 competitors)

You can:
  - Add new personas (will append)
  - Update positioning (will merge)
  - Add competitor analyses (will append)

Continue? [y/n]
```

## Restrictions

- Cannot redo Phase 10 if already exported (use `/course export` instead)
- Cannot redo while another phase is in progress
- Archive required before redo (auto-created)

## See Also

- `/phase skip` - Skip current phase
- `/phase complete` - Force-complete phase
- `/course status` - View phase history
- `.course-os/archive/` - Previous versions
