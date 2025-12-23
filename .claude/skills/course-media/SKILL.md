# Phase 9: Media Production Planning

## Overview

Specify all media assets needed: video shot lists, graphics, audio, interactive elements, and accessibility requirements. This phase creates the production blueprint.

**Use this skill to:** Plan video production, graphics, audio, and all media assets needed for your course.

## When to Use

- After completing Phase 8 (Assessments)
- Need to plan video/audio production
- Want to specify graphics and visuals
- Resuming Phase 9 of an existing project

## Prerequisites

- Phase 8 complete (assessments designed)
- `content/scripts/*.md` exist
- `specs/format.yaml` defines media types

## Process

### Step 1: Media Inventory

Extract media requirements from scripts:

```bash
# Scan scripts for media requirements
grep -r "VISUAL:" content/scripts/
grep -r "B-ROLL:" content/scripts/
grep -r "GRAPHIC:" content/scripts/
```

### Step 2: Video Production Planning

```yaml
# specs/media.yaml > video
video:
  format:
    resolution: 1920x1080|3840x2160
    frame_rate: 30|60
    aspect_ratio: 16:9
    codec: ""

  style:
    primary: talking_head|screencast|slides|mixed
    secondary: []
    branding:
      intro_template: ""
      outro_template: ""
      lower_thirds: true
      watermark: true|false

  equipment:
    camera: ""
    microphone: ""
    lighting: ""
    teleprompter: true|false

  location:
    primary: ""
    backup: ""
    requirements: []
```

### Step 3: Create Shot Lists

For each video lesson:

```yaml
# production/shot-lists/module-01-lesson-01.yaml
shot_list:
  lesson: module-01-lesson-01
  title: ""
  script_reference: "content/scripts/module-01/lesson-01.md"

  overview:
    total_duration: ""
    shoot_duration: ""  # Estimated recording time
    setup_requirements: []

  shots:
    - id: shot-001
      timestamp: "0:00-0:30"
      type: talking_head
      framing: medium
      description: "Introduction and hook"
      script_section: "INTRO > HOOK"
      notes: ""

    - id: shot-002
      timestamp: "0:30-0:45"
      type: talking_head
      framing: medium
      description: "State objectives"
      script_section: "INTRO > OBJECTIVES"
      overlay: "Bullet points appearing"

    - id: shot-003
      timestamp: "0:45-2:00"
      type: screencast
      application: ""
      description: "Demo of [feature]"
      script_section: "SECTION 1"
      zoom_points:
        - timestamp: "1:15"
          target: ""

    - id: shot-004
      timestamp: "2:00-2:30"
      type: b_roll
      description: ""
      source: stock|custom|animation
      notes: ""

  b_roll_list:
    - id: broll-001
      description: ""
      duration: "5 sec"
      source: stock|shoot|create
      usage: [shot-004, shot-008]

    - id: broll-002
      description: ""
      duration: "3 sec"
      source: ""

  graphics_list:
    - id: graphic-001
      type: lower_third|full_screen|overlay
      content: ""
      timestamp: ""
      duration: ""

    - id: graphic-002
      type: animation
      description: ""
      timestamp: ""

  teleprompter_segments:
    - start: "0:00"
      end: "0:45"
      speed: normal
    - start: "3:00"
      end: "3:30"
      speed: slow
```

### Step 4: Graphics Specifications

```yaml
# production/graphics/graphics-specs.yaml
graphics:
  brand_assets:
    logo:
      file: ""
      formats: [svg, png]
      usage: "Intro, outro, watermark"
    colors:
      primary: "#"
      secondary: "#"
      accent: "#"
      text: "#"
      background: "#"
    fonts:
      headings: ""
      body: ""
      code: ""

  templates:
    - id: template-title
      name: "Title Card"
      dimensions: "1920x1080"
      usage: "Lesson openings"
      elements:
        - type: text
          content: "[Lesson Title]"
          position: center
        - type: text
          content: "[Module Name]"
          position: below_title
        - type: graphic
          content: logo
          position: bottom_right

    - id: template-lower-third
      name: "Lower Third"
      dimensions: "800x200"
      usage: "Speaker name, key points"
      animation: slide_in_left

    - id: template-bullet
      name: "Bullet Points"
      dimensions: "1920x1080"
      usage: "Lists and key points"
      animation: appear_sequentially

  custom_graphics:
    - id: graphic-concept-diagram
      lesson: module-01-lesson-02
      type: diagram
      description: ""
      elements: []
      notes: ""
      delivery_format: [png, svg]

    - id: graphic-process-flow
      lesson: module-02-lesson-01
      type: flowchart
      description: ""
      steps: []

    - id: graphic-comparison
      lesson: module-02-lesson-03
      type: comparison_table
      columns: []
      rows: []

  animations:
    - id: anim-concept-explainer
      lesson: module-01-lesson-03
      duration: "30 sec"
      description: ""
      style: "2D motion graphics"
      storyboard: []

  icons:
    - id: icon-set-01
      usage: "Feature highlights"
      count: 10
      style: "Line icons, consistent stroke"
      list: []
```

### Step 5: Audio Specifications

```yaml
# production/audio/audio-specs.yaml
audio:
  recording:
    format: wav|mp3
    sample_rate: 48000
    bit_depth: 24
    channels: mono|stereo

  voice:
    primary_speaker: ""
    backup_speaker: ""
    style: "Conversational, warm, professional"
    pace: "Moderate, clear enunciation"

  music:
    intro:
      duration: "5-10 sec"
      style: ""
      source: licensed|royalty_free|custom
      track: ""

    outro:
      duration: "10-15 sec"
      style: ""
      source: ""
      track: ""

    background:
      usage: intros_outros_only|throughout
      volume: "-20dB under voice"
      style: ""

    transitions:
      style: "Subtle whoosh"
      source: ""

  sound_effects:
    - id: sfx-notification
      usage: "Key point emphasis"
      source: ""

    - id: sfx-transition
      usage: "Section changes"
      source: ""

  podcast_specific:  # If applicable
    intro_music: ""
    outro_music: ""
    ad_breaks: []
    episode_format: ""
```

### Step 6: Interactive Elements

```yaml
# production/interactive/interactive-specs.yaml
interactive:
  types_used:
    - in_video_quizzes
    - clickable_hotspots
    - branching_scenarios
    - simulations
    - interactive_exercises

  in_video:
    - id: iv-quiz-01
      lesson: module-01-lesson-02
      timestamp: "3:45"
      type: quiz
      question: ""
      options: []
      correct_path: continue
      incorrect_path: explanation

  hotspots:
    - id: hotspot-01
      lesson: module-02-lesson-01
      image: ""
      spots:
        - x: 0
          y: 0
          label: ""
          content: ""

  branching:
    - id: branch-01
      lesson: module-03-lesson-02
      scenario: ""
      decision_points:
        - prompt: ""
          options:
            - choice: ""
              leads_to: scene-a
            - choice: ""
              leads_to: scene-b

  simulations:
    - id: sim-01
      lesson: module-04-lesson-01
      type: software_simulation
      application: ""
      tasks:
        - ""
      success_criteria: []
```

### Step 7: Accessibility Requirements

```yaml
# production/accessibility/accessibility-specs.yaml
accessibility:
  wcag_level: AA

  captions:
    required: true
    type: closed_captions
    format: SRT|VTT
    accuracy: 99%
    speaker_identification: true
    sound_descriptions: true
    timing: synchronized

  transcripts:
    required: true
    format: markdown|pdf
    includes:
      - spoken_content
      - visual_descriptions
      - links_to_resources

  audio_descriptions:
    required: true|false
    for_content:
      - complex_visuals
      - demonstrations
      - graphics_with_data
    format: extended|inline

  visual_accessibility:
    color_contrast:
      minimum: "4.5:1"
      large_text: "3:1"
    font_size:
      minimum: "16px"
      headings: "scalable"
    motion:
      reduce_motion_option: true
      auto_play: false

  keyboard_navigation:
    all_interactive: true
    focus_indicators: visible
    skip_links: true

  screen_reader:
    aria_labels: true
    heading_structure: logical
    image_alt_text: descriptive

  cognitive:
    reading_level: ""
    chunk_size: "manageable"
    consistent_navigation: true
    clear_instructions: true

  checklist_per_lesson:
    - "Captions added and reviewed"
    - "Transcript created"
    - "Color contrast verified"
    - "Alt text for all images"
    - "Keyboard navigable"
    - "Audio descriptions (if needed)"
```

### Step 8: Asset Inventory

Create master list of all assets:

```yaml
# production/asset-inventory.yaml
assets:
  summary:
    total_videos: <n>
    total_graphics: <n>
    total_audio: <n>
    total_downloads: <n>

  videos:
    - id: vid-m01-l01
      lesson: module-01-lesson-01
      duration: ""
      status: not_started|in_production|complete
      files:
        raw: ""
        edited: ""
        final: ""

  graphics:
    - id: gfx-001
      type: ""
      lesson: ""
      status: not_started|in_production|complete
      files:
        source: ""
        export: ""

  audio:
    - id: aud-001
      type: music|voice|sfx
      usage: ""
      status: ""
      file: ""
      license: ""

  downloads:
    - id: dl-001
      title: ""
      type: template|worksheet|guide
      lesson: ""
      status: ""
      file: ""

  stock_media:
    - id: stock-001
      type: video|image|audio
      source: ""
      license: ""
      usage: []
```

## Outputs

### specs/media.yaml
Master media specifications

### production/
```
production/
├── shot-lists/
│   ├── module-01-lesson-01.yaml
│   └── ...
├── graphics/
│   └── graphics-specs.yaml
├── audio/
│   └── audio-specs.yaml
├── interactive/
│   └── interactive-specs.yaml
├── accessibility/
│   └── accessibility-specs.yaml
└── asset-inventory.yaml
```

### progress.yaml (updated)
```yaml
phases:
  media:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    assets_planned:
      videos: <n>
      graphics: <n>
      audio: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 9:

- [ ] All lessons have shot lists
- [ ] Graphics specs complete
- [ ] Audio requirements defined
- [ ] Interactive elements specified
- [ ] Accessibility requirements documented
- [ ] Asset inventory created
- [ ] Brand consistency verified
- [ ] Ready for production package

## Git Commit

```bash
git add specs/media.yaml production/ progress.yaml
git commit -m "Phase 9: Media production planning complete

- Created shot lists for [n] videos
- Specified [n] graphics
- Planned audio requirements
- Documented accessibility needs"
git tag -a phase-9-media -m "Media Production Planning Complete"
```

## Next Phase

After completing Phase 9, proceed to:
→ `/course-production` (Phase 10: Production Package)

The production phase will:
- Compile complete handoff documentation
- Generate platform exports
- Create production checklists
- Finalize course specifications
