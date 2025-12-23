# Shot List Template

## Video Shot List

```yaml
# production/shot-lists/lesson-01.yaml
video:
  lesson: lesson-01
  title: ""
  total_duration: "7:00"

shots:
  - id: shot-01
    timecode: "0:00-0:30"
    type: talking_head
    description: "Instructor introduces topic"
    framing: "Medium shot, rule of thirds"
    script_ref: "HOOK section"
    notes: "High energy, direct to camera"

  - id: shot-02
    timecode: "0:30-1:00"
    type: graphic
    description: "Animated title card"
    asset: graphics/lesson-01-title.png
    animation: "Fade in, 2s hold, fade out"

  - id: shot-03
    timecode: "1:00-3:00"
    type: screencast
    description: "Demo of [feature]"
    application: ""
    resolution: "1920x1080"
    highlights: "Zoom on key elements"

  - id: shot-04
    timecode: "3:00-3:30"
    type: b-roll
    description: "Supplementary footage"
    source: "Stock or custom"
    purpose: "Illustrate concept"
```

## Shot Types

| Type | Description | Notes |
|------|-------------|-------|
| `talking_head` | Instructor on camera | Framing, lighting, background |
| `screencast` | Screen recording | App, resolution, cursor visibility |
| `graphic` | Static or animated graphic | Dimensions, animation |
| `b-roll` | Supplementary footage | Source, purpose |
| `demo` | Physical demonstration | Setup, angles |
| `interview` | Guest speaker | Framing, audio |

## Production Notes

Include for each shot:
- **Framing**: Camera positioning
- **Lighting**: Requirements
- **Audio**: Mic setup
- **Props**: Items needed
- **Graphics**: On-screen elements
