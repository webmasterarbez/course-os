---
name: course-scripts
description: Use for Phase 7 of Course OS - writing production-ready scripts adapted to content type including video scripts, voiceovers, presentation notes, and facilitation guides. Triggers on "/course-scripts", "write scripts", "video script", "presentation notes", or after completing Phase 6.
---

# Phase 7: Script Development

Write production-ready scripts adapted to each content type.

## Prerequisites

- Phase 6 complete
- `content/lessons/*.yaml` exist
- `specs/format.yaml` defines delivery type

## Script Formats by Content Type

| Content Type | Script Format |
|--------------|---------------|
| Video lesson | Full script + visual cues |
| Screencast | Voiceover + action cues |
| Slides | Speaker notes |
| Live session | Facilitation guide |
| Audio/Podcast | Audio script |

See `./script-templates.md` for format-specific templates.

## Process

### Step 1: Determine Script Types

Review `specs/format.yaml` to identify content types.

### Step 2: Write Scripts

For each lesson, create appropriate script format.

**Video Script Structure:**
1. Hook (attention)
2. Objectives statement
3. Content sections with visual cues
4. Summary/call-to-action

**Key Elements:**
- [VISUAL: description] for visual cues
- [B-ROLL: description] for supplementary footage
- [GRAPHIC: description] for on-screen graphics
- [ACTION: description] for presenter actions

### Step 3: Apply Voice Guidelines

- Conversational, not academic
- Direct address ("you" not "learners")
- Short sentences
- Active voice
- Match persona from Phase 3

### Step 4: Review Timing

Estimate duration:
- Speaking pace: ~150 words/minute
- Add time for visuals, transitions
- Compare to lesson duration targets

## Outputs

- `content/scripts/*.md` - Production scripts

## Quality Checklist

- [ ] All lessons have scripts
- [ ] Format matches delivery type
- [ ] Voice is consistent
- [ ] Timing is realistic
- [ ] Visual cues included

## Git Commit

```bash
git add content/scripts specs/progress.yaml
git commit -m "Phase 7: Script development complete"
git tag -a phase-7-scripts -m "Script Development Complete"
```

## Next Phase

→ `/course-assessments` (Phase 8: Assessment Design)
