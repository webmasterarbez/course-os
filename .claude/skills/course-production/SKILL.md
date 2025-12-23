---
name: course-production
description: Use for Phase 10 of course development - generating the complete production package including handoff documentation, platform exports, and launch checklists. Triggers on "/course-production", "generate course package", or after completing Phase 9.
---

# Phase 10: Production Package

## Overview

Compile the complete handoff package: master documentation, platform exports, production checklists, and launch readiness. This is the final deliverable of Course OS.

## When to Use

- After completing Phase 9 (Media Planning)
- Ready to hand off for production
- Need platform-specific exports
- Resuming Phase 10 of an existing project

## Prerequisites

- All previous 9 phases complete
- All specs and content files exist
- Quality reviews passed

## Process

### Step 1: Final Quality Audit

Run comprehensive quality check:

```yaml
# production/quality-audit.yaml
quality_audit:
  date: YYYY-MM-DD
  auditor: ""

  phase_completion:
    - phase: 1-import
      status: complete|incomplete
      issues: []
    - phase: 2-research
      status: ""
      issues: []
    # ... all phases

  content_quality:
    learning_outcomes:
      all_addressed: true|false
      gaps: []

    bloom_alignment:
      verified: true|false
      issues: []

    gagne_events:
      all_lessons_complete: true|false
      gaps: []

    assessments:
      outcomes_covered: true|false
      kirkpatrick_levels: [1, 2, 3, 4]
      gaps: []

  accessibility:
    wcag_compliant: true|false
    udl_addressed: true|false
    issues: []

  consistency:
    terminology: consistent|issues
    formatting: consistent|issues
    branding: consistent|issues
    issues: []

  overall:
    ready_for_production: true|false
    blockers: []
    recommendations: []
```

### Step 2: Compile Master Course Document

```yaml
# production/handoff/course-master.yaml
course_master:
  generated: YYYY-MM-DD
  version: ""

  summary:
    title: ""
    tagline: ""
    description: ""
    duration: ""
    format: ""

    modules:
      - number: 1
        title: ""
        lessons: <n>
        duration: ""
      # ...

    total_lessons: <n>
    total_assessments: <n>
    total_assets: <n>

  learning_outcomes:
    # Copied from specs/outcomes.yaml
    primary: []
    secondary: []

  target_audience:
    # Copied from specs/personas.yaml
    primary_persona: ""
    secondary_personas: []

  prerequisites:
    # Copied from specs/prerequisites.yaml
    required: []
    recommended: []

  curriculum_overview:
    # Summary of specs/curriculum.yaml
    modules: []
    learning_paths: []
    milestones: []

  assessment_strategy:
    # Summary of specs/assessments.yaml
    approach: ""
    types: []
    certification: ""

  production_requirements:
    # Summary of specs/media.yaml
    videos: <n>
    graphics: <n>
    interactive: <n>
    downloads: <n>

  files_included:
    specs: []
    content: []
    production: []
```

### Step 3: Generate Platform Exports

#### Universal Export (Markdown/YAML)

```bash
# production/exports/universal/
production/exports/universal/
├── course-overview.md
├── module-01/
│   ├── module-overview.md
│   ├── lesson-01.md
│   ├── lesson-02.md
│   └── assessments/
│       └── quiz.md
├── module-02/
│   └── ...
├── resources/
│   └── downloads.md
└── production-notes.md
```

#### Teachable Export

```yaml
# production/exports/teachable/teachable-import.yaml
teachable:
  course:
    name: ""
    description: ""
    image: ""

  sections:
    - name: "Module 1: [Title]"
      lectures:
        - name: "[Lesson Title]"
          type: video|text
          content: ""
          attachments: []

        - name: "[Quiz Title]"
          type: quiz
          questions: []

  pricing:
    price: ""
    payment_plan: ""

  settings:
    drip: true|false
    drip_schedule: []
```

#### Thinkific Export

```yaml
# production/exports/thinkific/thinkific-import.yaml
thinkific:
  course:
    name: ""
    description: ""
    instructor: ""

  chapters:
    - title: "Module 1: [Title]"
      lessons:
        - title: ""
          content_type: video|text|quiz|survey
          content: ""
```

#### SCORM Export (for LMS)

```yaml
# production/exports/scorm/scorm-manifest.yaml
scorm:
  version: "1.2|2004"
  identifier: ""
  title: ""

  organization:
    - id: module-01
      title: ""
      items:
        - id: lesson-01
          title: ""
          resource: ""

  resources:
    - id: ""
      type: webcontent
      href: ""
      files: []

  sequencing:
    control_mode: ""
    prerequisites: []
```

#### xAPI Export

```yaml
# production/exports/xapi/xapi-config.yaml
xapi:
  endpoint: ""
  version: "1.0.3"

  activity_types:
    course: ""
    module: ""
    lesson: ""
    assessment: ""

  verbs:
    - launched
    - completed
    - passed
    - failed
    - answered

  statements:
    templates: []
```

### Step 4: Create Production Checklists

```yaml
# production/checklists/master-checklist.yaml
production_checklist:
  pre_production:
    - task: "Review all scripts for accuracy"
      owner: ""
      status: pending|complete
      due: ""

    - task: "Prepare recording equipment"
      owner: ""
      status: ""

    - task: "Set up recording environment"
      owner: ""
      status: ""

    - task: "Create all graphic templates"
      owner: ""
      status: ""

    - task: "Source stock media"
      owner: ""
      status: ""

    - task: "Prepare downloadable resources"
      owner: ""
      status: ""

  recording:
    - task: "Record Module 1 videos"
      lessons: [1, 2, 3]
      owner: ""
      status: ""

    - task: "Record Module 2 videos"
      lessons: [1, 2, 3, 4]
      owner: ""
      status: ""

    # ... all modules

  post_production:
    - task: "Edit Module 1 videos"
      owner: ""
      status: ""

    - task: "Add graphics and animations"
      owner: ""
      status: ""

    - task: "Create captions"
      owner: ""
      status: ""

    - task: "Create transcripts"
      owner: ""
      status: ""

    - task: "Quality review"
      owner: ""
      status: ""

  platform_setup:
    - task: "Create course in platform"
      platform: ""
      owner: ""
      status: ""

    - task: "Upload all videos"
      owner: ""
      status: ""

    - task: "Add quizzes and assessments"
      owner: ""
      status: ""

    - task: "Configure settings"
      owner: ""
      status: ""

    - task: "Set up pricing"
      owner: ""
      status: ""

  testing:
    - task: "Complete course as student"
      owner: ""
      status: ""

    - task: "Test all quizzes"
      owner: ""
      status: ""

    - task: "Verify certificate generation"
      owner: ""
      status: ""

    - task: "Test on mobile devices"
      owner: ""
      status: ""

    - task: "Accessibility audit"
      owner: ""
      status: ""

  launch:
    - task: "Beta tester feedback incorporated"
      owner: ""
      status: ""

    - task: "Sales page created"
      owner: ""
      status: ""

    - task: "Email sequences set up"
      owner: ""
      status: ""

    - task: "Launch announcement prepared"
      owner: ""
      status: ""

    - task: "Support documentation ready"
      owner: ""
      status: ""
```

### Step 5: Recording Schedule

```yaml
# production/checklists/recording-schedule.yaml
recording_schedule:
  overview:
    total_recording_days: <n>
    total_runtime: ""
    buffer: ""

  sessions:
    - date: YYYY-MM-DD
      time: ""
      duration: ""
      content:
        - module: 1
          lessons: [1, 2, 3]
          estimated_time: ""

      setup:
        location: ""
        equipment: []
        materials: []

      notes: ""

    - date: YYYY-MM-DD
      # ...

  contingency:
    backup_dates: []
    reshoot_buffer: ""
```

### Step 6: Asset Delivery Specs

```yaml
# production/handoff/asset-delivery.yaml
asset_delivery:
  video:
    format: mp4
    codec: H.264
    resolution: 1920x1080
    frame_rate: 30
    bitrate: ""
    naming: "M[XX]-L[XX]-[title].mp4"

  audio:
    format: mp3|wav
    bitrate: 320kbps
    sample_rate: 48000
    naming: ""

  graphics:
    formats:
      web: [png, jpg, webp]
      print: [pdf, eps]
      source: [psd, ai, figma]
    resolution:
      web: 72dpi
      print: 300dpi
    naming: ""

  documents:
    formats: [pdf, docx]
    naming: ""

  folder_structure: |
    final-assets/
    ├── videos/
    │   ├── module-01/
    │   └── module-02/
    ├── audio/
    ├── graphics/
    ├── documents/
    └── captions/
```

### Step 7: Localization Package

```yaml
# production/exports/localization/localization-kit.yaml
localization:
  source_language: en
  target_languages: []

  content_for_translation:
    scripts:
      - file: ""
        word_count: <n>
        priority: high|medium|low

    graphics:
      - file: ""
        text_elements: []
        priority: ""

    assessments:
      - file: ""
        items: <n>
        priority: ""

  cultural_adaptation:
    - language: ""
      considerations:
        examples: "Localize to regional context"
        currency: ""
        date_format: ""
        cultural_references: []

  delivery:
    format: ""
    folder_structure: ""
```

### Step 8: Launch Readiness Report

```yaml
# production/handoff/launch-readiness.yaml
launch_readiness:
  date: YYYY-MM-DD
  status: ready|blocked|pending

  content_status:
    modules_complete: [1, 2, 3, 4, 5]
    modules_pending: []
    blockers: []

  technical_status:
    platform_configured: true|false
    payment_processing: true|false
    email_integration: true|false
    analytics_setup: true|false
    issues: []

  quality_status:
    content_reviewed: true|false
    accessibility_verified: true|false
    testing_complete: true|false
    issues: []

  marketing_status:
    sales_page: ready|draft|not_started
    email_sequences: ready|draft|not_started
    social_assets: ready|draft|not_started
    issues: []

  support_status:
    faq_created: true|false
    support_process: documented|not_documented
    team_trained: true|false
    issues: []

  go_live_checklist:
    - item: "Final content review"
      status: ""
    - item: "Platform tested end-to-end"
      status: ""
    - item: "Payment processing verified"
      status: ""
    - item: "Welcome emails tested"
      status: ""
    - item: "Support team briefed"
      status: ""
    - item: "Launch announcement scheduled"
      status: ""

  recommendation: ""
  notes: []
```

## Outputs

### production/handoff/
Complete handoff package:
```
production/handoff/
├── course-master.yaml
├── asset-delivery.yaml
└── launch-readiness.yaml
```

### production/exports/
Platform-specific exports:
```
production/exports/
├── universal/
├── teachable/
├── thinkific/
├── scorm/
├── xapi/
└── localization/
```

### production/checklists/
Production tracking:
```
production/checklists/
├── master-checklist.yaml
├── recording-schedule.yaml
└── quality-audit.yaml
```

### specs/production.yaml
```yaml
production:
  completed: YYYY-MM-DD
  version: ""

  package_contents:
    specs: [list of files]
    content: [list of files]
    production: [list of files]
    exports: [list of platforms]

  handoff:
    recipient: ""
    date: ""
    format: ""

  next_steps:
    - ""
```

### progress.yaml (final update)
```yaml
phases:
  production:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    exports_generated: []
    notes:
      - ""

course_status: complete
completion_date: YYYY-MM-DD
version: "1.0.0"
```

## Final Deliverables

The complete Course OS production package includes:

1. **specs/** - All specifications (YAML)
2. **content/** - All content (Markdown + YAML)
3. **production/** - Production materials
4. **exports/** - Platform-specific exports
5. **assets/** - Asset inventory and specs

## Quality Checklist

Before completing Phase 10:

- [ ] Quality audit passed
- [ ] Master course document complete
- [ ] All exports generated
- [ ] Production checklists created
- [ ] Recording schedule defined
- [ ] Asset delivery specs documented
- [ ] Localization package (if needed)
- [ ] Launch readiness verified

## Git Commit

```bash
git add production/ specs/production.yaml progress.yaml
git commit -m "Phase 10: Production package complete

Course OS development complete!
- Generated [n] platform exports
- Created production checklists
- Documented launch readiness
- Version: 1.0.0"
git tag -a v1.0.0 -m "Course Complete - Production Package Ready"
git tag -a phase-10-production -m "Production Package Complete"
```

## Course Complete!

Congratulations! Your Course OS development is complete.

### What You Have:
- Complete course specifications
- All content designed and scripted
- Assessments with rubrics
- Media production plans
- Platform exports ready
- Production checklists

### Next Steps:
1. Review the production package with stakeholders
2. Begin media production using checklists
3. Upload to your chosen platform
4. Run beta test
5. Launch!

### Maintaining the Course:
- Use git branches for updates
- Follow the version lifecycle in specs
- Re-run relevant phases for major updates
- Track learner feedback for improvements
