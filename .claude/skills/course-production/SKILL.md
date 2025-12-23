---
name: course-production
description: Use for Phase 10 of Course OS - generating the complete production package including handoff documentation, platform-specific exports, quality audits, and launch checklists. Triggers on "/course-production", "generate package", "export course", "production handoff", or after completing Phase 9.
---

# Phase 10: Production Package

Compile the complete handoff package for implementation.

## Prerequisites

- All 9 previous phases complete
- All specs and content files exist
- Quality reviews passed

## Process

### Step 1: Final Quality Audit

Run comprehensive check - see `./quality-audit.md`:

```yaml
# production/quality-audit.yaml
audit:
  specs_complete: true
  content_complete: true
  media_specs_complete: true
  accessibility_planned: true
  all_outcomes_assessed: true
```

### Step 2: Master Documentation

Create `production/handoff/master-doc.md`:
- Course overview
- Complete structure
- Production requirements
- Platform specifications

### Step 3: Platform Exports

Generate platform-specific formats - see `./export-formats.md`:

- **Universal**: Markdown + YAML (default)
- **Teachable**: Teachable-compatible structure
- **Thinkific**: Thinkific import format
- **SCORM**: LMS-compatible package
- **xAPI**: Experience API format

### Step 4: Production Checklists

Create per-lesson checklists:

```yaml
# production/checklists/lesson-01.yaml
checklist:
  pre_production:
    - Script reviewed
    - Shot list approved
    - Assets prepared

  production:
    - Video recorded
    - Audio captured
    - B-roll gathered

  post_production:
    - Edited
    - Captions added
    - Graphics inserted
    - Quality reviewed
```

### Step 5: Launch Readiness

Final launch checklist:
- [ ] All content uploaded
- [ ] Assessments tested
- [ ] Links verified
- [ ] Accessibility validated
- [ ] Payment/access configured

## Outputs

- `production/handoff/` - Master documentation
- `production/exports/` - Platform-specific exports
- `production/checklists/` - Production checklists

## Quality Checklist

- [ ] Quality audit passed
- [ ] Handoff documentation complete
- [ ] Exports generated
- [ ] Checklists created
- [ ] Launch readiness confirmed

## Git Commit

```bash
git add production/ specs/progress.yaml
git commit -m "Phase 10: Production package complete"
git tag -a phase-10-production -m "Production Package Complete"
git tag -a v1.0.0 -m "Course Development Complete"
```

## Course Complete! 🎉

The course is now ready for production and launch.
