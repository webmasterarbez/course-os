---
name: course-media
description: Use for Phase 9 of Course OS - planning media production including video shot lists, graphics specifications, audio requirements, and accessibility compliance. Triggers on "/course-media", "plan video production", "media specs", "shot list", or after completing Phase 8.
---

# Phase 9: Media Production Planning

Specify all media assets needed for production.

## Prerequisites

- Phase 8 complete
- `content/scripts/*.md` exist
- `specs/format.yaml` defines media types

## Process

### Step 1: Media Inventory

Extract media requirements from scripts:

```bash
grep -r "VISUAL:\|GRAPHIC:\|B-ROLL:" content/scripts/
```

Create comprehensive inventory in `production/media-inventory.yaml`

### Step 2: Video Shot Lists

For each video lesson - see `./shot-list-template.md`:

```yaml
# production/shot-lists/lesson-01.yaml
shots:
  - id: shot-01
    type: talking_head|screencast|b-roll|graphic
    description: ""
    duration: "0:30"
    script_ref: "Section 1"
    notes: ""
```

### Step 3: Graphics Specifications

For each graphic/visual:

```yaml
# production/graphics/graphic-specs.yaml
graphics:
  - id: graphic-01
    type: diagram|infographic|slide|thumbnail
    description: ""
    dimensions: "1920x1080"
    lesson: lesson-01
    text_content: []
    style_notes: ""
```

### Step 4: Audio Requirements

Specify audio needs:
- Background music
- Sound effects
- Voiceover specs
- Audio quality standards

### Step 5: Accessibility Specs

Ensure compliance - see `./accessibility-checklist.md`:
- Captions/subtitles
- Audio descriptions
- Alt text for images
- Transcript requirements

## Outputs

- `production/media-inventory.yaml` - Complete inventory
- `production/shot-lists/` - Video shot lists
- `production/graphics/` - Graphic specifications
- `production/audio/` - Audio requirements
- `production/accessibility/` - Accessibility specs

## Quality Checklist

- [ ] All media extracted from scripts
- [ ] Shot lists complete
- [ ] Graphics specified
- [ ] Accessibility planned
- [ ] Production-ready specs

## Git Commit

```bash
git add production/ specs/progress.yaml
git commit -m "Phase 9: Media production planning complete"
git tag -a phase-9-media -m "Media Production Planning Complete"
```

## Next Phase

→ `/course-production` (Phase 10: Production Package)
