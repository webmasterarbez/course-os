---
name: course-media
description: Use for Phase 9 of Course OS - planning media production including video shot lists, graphics specifications, audio requirements, and accessibility compliance. Triggers on "/course-media", "plan video production", "media specs", "shot list", or after completing Phase 8.
prerequisites: [course-assessments]
outputs: [production/media-inventory.yaml, production/shot-lists/, production/graphics/, production/audio/, production/accessibility/]
exports: []
frameworks: []
---

# Phase 9: Media Production Planning

Specify all media assets needed for production.

## Prerequisites

- Phase 8 complete
- `content/scripts/*.md` exist
- `specs/format.yaml` defines media types

## Process

### Step 1: Media Inventory

Extract all media requirements from scripts and create inventory:

```yaml
# production/media-inventory.yaml
inventory:
  videos:
    total: 24
    types:
      talking_head: 12
      screencast: 8
      demo: 4
    total_duration: "6 hours"

  graphics:
    total: 45
    types:
      diagrams: 15
      infographics: 8
      slides: 12
      thumbnails: 10

  audio:
    background_music: true
    sound_effects: false
    voiceover_only: 0

  downloads:
    total: 8
    types:
      templates: 4
      checklists: 2
      code_samples: 2

production_notes:
  style_guide: ""
  brand_colors: []
  fonts: []
```

### Step 2: Video Shot Lists

For each video lesson, create shot list in `production/shot-lists/`:

```yaml
# production/shot-lists/module-01-lesson-01.yaml
video:
  lesson: lesson-01
  title: "Introduction to OAuth"
  total_duration: "7:00"
  format: "1920x1080 @ 30fps"

shots:
  - id: shot-01
    timecode: "0:00-0:30"
    type: talking_head
    description: "Instructor introduces topic with hook"
    framing: "Medium shot, rule of thirds"
    script_ref: "HOOK section"
    notes:
      - "High energy"
      - "Direct to camera"
      - "Hand gestures for emphasis"
    location: "Studio A"
    equipment:
      - "Primary camera"
      - "Teleprompter"

  - id: shot-02
    timecode: "0:30-0:45"
    type: graphic
    description: "Animated title card with objectives"
    asset: "graphics/lesson-01-title.png"
    animation: "Fade in, 2s hold, slide out"
    text_content:
      - "By the end of this lesson..."
      - "Objective 1"
      - "Objective 2"

  - id: shot-03
    timecode: "0:45-3:00"
    type: screencast
    description: "Demo of OAuth flow in debugger"
    application: "Chrome DevTools + OAuth Playground"
    resolution: "1920x1080"
    recording_notes:
      - "Clean browser profile"
      - "Zoom on network tab"
      - "Highlight key requests"
    cursor: visible
    audio: voiceover

  - id: shot-04
    timecode: "3:00-3:30"
    type: b_roll
    description: "User clicking login buttons on various sites"
    source: "Stock footage or custom"
    purpose: "Illustrate OAuth ubiquity"
    suggested_clips:
      - "Clicking 'Login with Google'"
      - "Clicking 'Sign in with GitHub'"

transitions:
  - from: shot-01
    to: shot-02
    type: "Cut"
  - from: shot-02
    to: shot-03
    type: "Dissolve (0.5s)"
```

**Shot Types:**
| Type | Description | Key Notes |
|------|-------------|-----------|
| `talking_head` | Instructor on camera | Framing, lighting, background |
| `screencast` | Screen recording | App, resolution, cursor |
| `graphic` | Static/animated graphic | Dimensions, animation |
| `b_roll` | Supplementary footage | Source, purpose |
| `demo` | Physical demonstration | Setup, angles |
| `interview` | Guest speaker | Framing, audio |

### Step 3: Graphics Specifications

Create specs in `production/graphics/`:

```yaml
# production/graphics/graphic-specs.yaml
graphics:
  - id: graphic-01
    type: diagram
    title: "OAuth Flow Diagram"
    lesson: lesson-01
    description: "Shows 4 actors and authorization code flow"
    dimensions: "1920x1080"

    content:
      elements:
        - "Resource Owner (user icon)"
        - "Client (app icon)"
        - "Authorization Server (Google logo)"
        - "Resource Server (database icon)"
      arrows:
        - from: "User"
          to: "Client"
          label: "1. Clicks login"
      text_labels:
        - "Authorization Code Flow"

    style:
      colors:
        primary: "#4285F4"
        secondary: "#34A853"
        background: "#FFFFFF"
      font: "Inter"

    files:
      source: "graphics/src/oauth-flow.fig"
      export: "graphics/export/oauth-flow.png"

  - id: graphic-02
    type: thumbnail
    title: "Lesson 1 Thumbnail"
    lesson: lesson-01
    dimensions: "1280x720"
    content:
      headline: "OAuth Explained"
      subhead: "Secure Auth in 5 Minutes"
      image: "Lock icon with Google/GitHub logos"
```

**Graphic Types:**
- `diagram` - Technical/process diagrams
- `infographic` - Data visualization
- `slide` - Presentation slides
- `thumbnail` - Video thumbnails
- `social` - Social media assets

### Step 4: Audio Requirements

Create specs in `production/audio/`:

```yaml
# production/audio/audio-specs.yaml
audio:
  voiceover:
    quality: "48kHz, 24-bit"
    format: "WAV for editing, MP3 for delivery"
    style: "Conversational, energetic"
    pacing: "150 words/minute average"

  music:
    intro:
      duration: "5 seconds"
      style: "Upbeat, modern, tech feel"
      licensing: "Royalty-free required"
      source: "Epidemic Sound / Artlist"

    background:
      usage: "Under b-roll and transitions only"
      volume: "-20dB relative to voice"
      style: "Ambient, non-distracting"

    outro:
      duration: "10 seconds"
      style: "Matches intro"

  sound_effects:
    usage: "Minimal, UI sounds only"
    examples:
      - "Click sound for button demos"
      - "Success chime for quiz completion"

  specifications:
    normalization: "-16 LUFS"
    noise_floor: "Below -60dB"
    room_tone: "Record 30s per session"
```

### Step 5: Accessibility Specifications

Create specs in `production/accessibility/`:

```yaml
# production/accessibility/accessibility-specs.yaml
accessibility:
  wcag_level: "AA"

  video:
    captions:
      required: true
      format: "SRT and VTT"
      style:
        max_lines: 2
        max_chars_per_line: 42
        position: "bottom_center"
        reading_speed: "200 wpm max"
      content:
        speaker_identification: true
        sound_effects: true  # [music], [applause]
        accuracy: "verbatim"

    audio_descriptions:
      required_for:
        - lesson-01  # Complex visual demo
        - lesson-05  # Diagram explanation
      approach: "Extended where needed"
      voice: "Distinct from instructor"

    transcripts:
      required: true
      format: "Markdown with timestamps"
      include:
        - spoken_content: true
        - visual_descriptions: true
        - slide_content: true

  graphics:
    alt_text:
      required: true
      style: "Descriptive, not decorative"
      max_length: 125

    color:
      contrast_ratio: "4.5:1 minimum"
      not_sole_indicator: true

  interactive:
    keyboard_accessible: true
    focus_visible: true
    form_labels: true

  documents:
    heading_structure: true
    link_text_descriptive: true
    reading_order: true
```

**Quick Reference - WCAG 2.1 AA:**

| Category | Requirement |
|----------|-------------|
| Captions | All video content |
| Audio descriptions | Visual-only information |
| Color contrast | 4.5:1 for text |
| Keyboard | Fully navigable |
| Alt text | All meaningful images |

## Outputs

| Directory | Purpose |
|-----------|---------|
| `production/media-inventory.yaml` | Complete inventory |
| `production/shot-lists/` | Video shot lists |
| `production/graphics/` | Graphic specifications |
| `production/audio/` | Audio requirements |
| `production/accessibility/` | Accessibility specs |

## Quality Gate

- [ ] All media extracted from scripts
- [ ] Shot lists complete for all videos
- [ ] Graphics specified with dimensions
- [ ] Audio requirements documented
- [ ] Accessibility specs complete (WCAG AA)
- [ ] Production notes included

## Git Commit

```bash
git add production/ specs/progress.yaml
git commit -m "Phase 9: Media production planning complete"
git tag -a phase-9-media -m "Media Production Planning Complete"
```

## Next Phase

→ `/course-production` (Phase 10: Production Package)
