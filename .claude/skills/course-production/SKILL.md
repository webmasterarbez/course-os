---
name: course-production
description: Use for Phase 10 of Course OS - generating the complete production package including handoff documentation, platform-specific exports, quality audits, and launch checklists. Triggers on "/course-production", "generate package", "export course", "production handoff", or after completing Phase 9.
prerequisites: [course-media]
outputs: [production/handoff/, production/exports/, production/checklists/]
exports: [master-handoff.yaml]
frameworks: []
---

# Phase 10: Production Package

Compile the complete handoff package for implementation.

## Prerequisites

- All 9 previous phases complete
- All specs and content files exist
- Quality reviews passed

## Process

### Step 1: Final Quality Audit

Run comprehensive check and create audit report:

```yaml
# production/quality-audit.yaml
audit:
  date: YYYY-MM-DD
  auditor: ""

  phase_completion:
    phase_1_import: pass|fail|partial
    phase_2_research: pass|fail|partial
    phase_3_discovery: pass|fail|partial
    phase_4_strategy: pass|fail|partial
    phase_5_architecture: pass|fail|partial
    phase_6_content: pass|fail|partial
    phase_7_scripts: pass|fail|partial
    phase_8_assessments: pass|fail|partial
    phase_9_media: pass|fail|partial

  quality_scores:
    instructional_design: 0-100
    content_quality: 0-100
    accessibility: 0-100
    consistency: 0-100

  framework_alignment:
    addie: pass|fail
    blooms_taxonomy: pass|fail
    gagne_events: pass|fail
    kirkpatrick: pass|fail
    merrills_principles: pass|fail

  issues:
    - phase: ""
      issue: ""
      severity: critical|major|minor
      resolution: ""
      status: open|resolved

  overall: pass|fail
  notes: ""
```

**Quality Checklist:**

Phase Completion:
- [ ] Phase 1: Source catalog complete
- [ ] Phase 2: 4-pass research complete, knowledge map created
- [ ] Phase 3: 2-3 personas, positioning defined
- [ ] Phase 4: Outcomes defined (Bloom's), metrics set (Kirkpatrick)
- [ ] Phase 5: Curriculum structured, outcomes mapped
- [ ] Phase 6: Lesson blueprints complete, Merrill's applied
- [ ] Phase 7: All lessons scripted, visual cues included
- [ ] Phase 8: All outcomes assessed, rubrics created
- [ ] Phase 9: Shot lists complete, accessibility planned

Content Quality:
- [ ] Gagné's 9 events addressed per lesson
- [ ] Merrill's principles applied
- [ ] Bloom's levels appropriate
- [ ] Kirkpatrick levels covered

Consistency:
- [ ] Voice consistent across scripts
- [ ] Formatting consistent
- [ ] Terminology consistent
- [ ] Visual style defined

Accessibility:
- [ ] WCAG 2.1 AA planned
- [ ] UDL principles applied
- [ ] Captions specified
- [ ] Alt text planned

### Step 2: Master Handoff Documentation

Create `production/handoff/master-handoff.yaml`:

```yaml
# production/handoff/master-handoff.yaml
handoff:
  course:
    name: ""
    version: "1.0.0"
    created: YYYY-MM-DD
    profile: default|mini|workshop

  summary:
    modules: 5
    lessons: 24
    total_duration: "6 hours"
    assessments:
      quizzes: 5
      projects: 2

  deliverables:
    specs:
      - specs/course.yaml
      - specs/outcomes.yaml
      - specs/curriculum.yaml
      - specs/assessments.yaml
    content:
      - content/lessons/
      - content/scripts/
      - content/assessments/
    production:
      - production/shot-lists/
      - production/graphics/
      - production/accessibility/

  platform_requirements:
    hosting: ""
    lms_features: []
    integrations: []

  timeline:
    recording: ""
    editing: ""
    launch: ""

  contacts:
    course_creator: ""
    production_lead: ""
    platform_admin: ""
```

Also create `production/handoff/master-doc.md` with:
- Course overview
- Complete structure
- Production requirements
- Platform specifications
- Quick start guide

### Step 3: Platform Exports

Generate exports in `production/exports/`:

#### Universal Export (Default)

```
production/exports/universal/
├── course.yaml           # Course metadata
├── modules/
│   ├── module-01/
│   │   ├── module.yaml   # Module spec
│   │   ├── lesson-01.md  # Lesson content
│   │   ├── lesson-02.md
│   │   └── quiz-01.yaml  # Assessment
│   └── module-02/
├── assets/               # Media references
├── resources/            # Downloads
└── README.md             # Import guide
```

#### Teachable Export

```
production/exports/teachable/
├── course-info.csv       # Course metadata
├── curriculum.csv        # Structure import
├── sections/
│   ├── 01-module-name/
│   │   ├── 01-lesson.html
│   │   ├── 02-lesson.html
│   │   └── quiz.json
├── files/                # Uploadable assets
└── import-guide.md
```

#### SCORM Export

```
production/exports/scorm/
├── imsmanifest.xml       # SCORM manifest
├── content/
│   ├── index.html        # Entry point
│   ├── modules/
│   └── assessments/
├── scripts/
│   └── scorm-api.js      # SCORM wrapper
└── README.md
```

### Step 4: Production Checklists

Create per-lesson checklists in `production/checklists/`:

```yaml
# production/checklists/lesson-01.yaml
checklist:
  lesson: lesson-01
  title: "Introduction to OAuth"

  pre_production:
    - task: "Script reviewed and approved"
      status: pending|complete
    - task: "Shot list finalized"
      status: pending
    - task: "Graphics requested"
      status: pending
    - task: "Studio scheduled"
      status: pending

  production:
    - task: "Video recorded"
      status: pending
    - task: "Audio captured"
      status: pending
    - task: "Screencast recorded"
      status: pending
    - task: "B-roll gathered"
      status: pending

  post_production:
    - task: "Video edited"
      status: pending
    - task: "Graphics inserted"
      status: pending
    - task: "Captions added"
      status: pending
    - task: "Audio mixed"
      status: pending
    - task: "Quality reviewed"
      status: pending
    - task: "Accessibility verified"
      status: pending

  delivery:
    - task: "Uploaded to platform"
      status: pending
    - task: "Settings configured"
      status: pending
    - task: "Links verified"
      status: pending
```

### Step 5: Launch Readiness

Create final launch checklist:

```yaml
# production/checklists/launch-readiness.yaml
launch:
  content:
    - task: "All videos uploaded"
      owner: ""
      status: pending
    - task: "All quizzes configured"
      owner: ""
      status: pending
    - task: "All downloads attached"
      owner: ""
      status: pending

  platform:
    - task: "Course settings configured"
      status: pending
    - task: "Pricing set"
      status: pending
    - task: "Payment gateway tested"
      status: pending
    - task: "Email sequences configured"
      status: pending

  quality:
    - task: "Full course test (student view)"
      status: pending
    - task: "All links verified"
      status: pending
    - task: "Mobile experience tested"
      status: pending
    - task: "Accessibility validated"
      status: pending

  marketing:
    - task: "Sales page live"
      status: pending
    - task: "Preview available"
      status: pending
    - task: "Launch emails scheduled"
      status: pending

  go_live:
    - task: "Final review complete"
      status: pending
    - task: "Course published"
      status: pending
    - task: "Launch announced"
      status: pending
```

## Outputs

| Directory | Purpose |
|-----------|---------|
| `production/handoff/` | Master documentation |
| `production/exports/` | Platform-specific exports |
| `production/checklists/` | Production checklists |
| `production/quality-audit.yaml` | Final audit |

## Quality Gate

- [ ] Quality audit passed
- [ ] All phases complete or skipped (per profile)
- [ ] Handoff documentation complete
- [ ] At least one export generated
- [ ] Production checklists created
- [ ] Launch readiness confirmed

## Git Commit

```bash
git add production/ specs/progress.yaml
git commit -m "Phase 10: Production package complete"
git tag -a phase-10-production -m "Production Package Complete"
git tag -a v1.0.0 -m "Course Development Complete"
```

## Course Complete!

The course is now ready for production and launch.

**Next Steps:**
1. Review handoff documentation with production team
2. Execute production checklists
3. Complete launch readiness checks
4. Publish course!

**Commands for ongoing work:**
- `/course export <platform>` - Generate additional exports
- `/course validate` - Re-run quality checks
- `/phase redo N` - Revise completed phase
