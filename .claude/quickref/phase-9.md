# Phase 9: Media - Quick Reference

## Shot Types
| Type | Key Notes |
|------|-----------|
| `talking_head` | Framing, lighting |
| `screencast` | App, resolution |
| `graphic` | Dimensions, animation |
| `b_roll` | Source, purpose |
| `demo` | Setup, angles |
| `interview` | Framing, audio |

## Shot List Structure
```yaml
shots:
  - id: shot-01
    timecode: "0:00-0:30"
    type: talking_head
    description: ""
    script_ref: ""
    notes: []
```

## WCAG 2.1 AA (Quick)
| Category | Requirement |
|----------|-------------|
| Captions | All video |
| Audio desc | Visual-only info |
| Contrast | 4.5:1 min |
| Keyboard | Fully navigable |
| Alt text | All images |

## Outputs
- `production/media-inventory.yaml`
- `production/shot-lists/`
- `production/graphics/`
- `production/audio/`
- `production/accessibility/`

## Quality Gate
□ All media from scripts extracted
□ Shot lists complete
□ Graphics specified
□ Audio documented
□ Accessibility WCAG AA

## Command
`/course-media`

## Next
→ Phase 10: `/course-production`
