---
name: course-scripts
description: Use for Phase 7 of course development - writing production-ready scripts for videos, audio, presentations, and facilitation guides. Triggers on "/course-scripts", "write course scripts", or after completing Phase 6.
---

# Phase 7: Script Development

## Overview

Write production-ready scripts adapted to content type: video scripts, audio scripts, presentation notes, and facilitation guides. Scripts are the bridge between content design and production.

## When to Use

- After completing Phase 6 (Content Design)
- Need to write video/audio scripts
- Want presentation or facilitation guides
- Resuming Phase 7 of an existing project

## Prerequisites

- Phase 6 complete (content designed)
- `content/lessons/*.yaml` exist
- `content/examples/*.yaml` exist
- `specs/format.yaml` defines delivery type

## Adaptive Script Formats

Scripts adapt to content type:

| Content Type | Script Format |
|--------------|---------------|
| Video lesson | Full script + visual cues |
| Screencast | Voiceover script + action cues |
| Podcast/Audio | Conversational script |
| Slides/Presentation | Speaker notes per slide |
| Live session | Facilitation guide |
| Text lesson | Full written content |
| Interactive | Narration + interaction cues |

## Process

### Step 1: Load Content Design

```bash
# Review lesson blueprints
cat content/lessons/module-01/lesson-01.yaml
cat specs/format.yaml
```

### Step 2: Determine Script Format

Based on `specs/format.yaml`, select appropriate format for each lesson:

```yaml
# content/scripts/script-formats.yaml
formats:
  - lesson: module-01-lesson-01
    primary_format: video
    script_type: full_script_with_visuals

  - lesson: module-01-lesson-02
    primary_format: screencast
    script_type: voiceover_with_actions

  - lesson: module-02-lesson-01
    primary_format: slides
    script_type: speaker_notes
```

### Step 3: Write Scripts by Type

#### Video Script Format

```markdown
# content/scripts/module-01/lesson-01.md

# Module 1, Lesson 1: [Title]

## Metadata
- Duration: [estimated]
- Format: Video (talking head + graphics)
- Teleprompter: Yes

---

## INTRO (0:00 - 0:45)

### HOOK
[VISUAL: Opening graphic with lesson title]

[ON CAMERA]

"Have you ever [relatable problem]? You're not alone. Today, we're going to solve this once and for all."

[PAUSE - 2 beats]

### OBJECTIVES
[VISUAL: Bullet points appearing]

"By the end of this lesson, you'll be able to:
- [Objective 1]
- [Objective 2]
- [Objective 3]"

---

## SECTION 1: [Topic] (0:45 - 3:00)

### Recall Prior Knowledge
[ON CAMERA]

"Before we dive in, let's connect this to what you already know. Remember when we talked about [previous concept]? This builds directly on that foundation."

### Core Content
[VISUAL: Diagram showing concept]

"Let me explain how this works..."

[KEY POINT]
> "[Important statement to emphasize]"

[EXAMPLE]
"For example, imagine you're [scenario]..."

[VISUAL: Animation or B-roll of example]

### Guidance
[ON CAMERA - closer framing for emphasis]

"Now, here's where most people go wrong: [common mistake]. Instead, [correct approach]."

[TIP BOX GRAPHIC]
> Pro Tip: [Actionable advice]

---

## SECTION 2: [Topic] (3:00 - 5:30)

[Continue structure...]

---

## PRACTICE (5:30 - 7:00)

[ON CAMERA]

"Alright, it's your turn. Pause this video and [activity instructions]."

[VISUAL: Activity prompt on screen]

"I'll wait right here. Go ahead, pause now."

[PAUSE INDICATOR]

"Welcome back! Let's see how you did..."

---

## WRAP-UP (7:00 - 7:45)

### Summary
[VISUAL: Key points recap]

"Let's recap what we covered:
- [Key point 1]
- [Key point 2]
- [Key point 3]"

### Next Steps
[ON CAMERA]

"In the next lesson, we'll take this further by [preview]. See you there!"

[END CARD with CTA]

---

## PRODUCTION NOTES

### Visual Requirements
- [ ] Opening title graphic
- [ ] Objective bullet animation
- [ ] [Concept] diagram
- [ ] Example B-roll or animation
- [ ] Tip box graphic
- [ ] Activity prompt screen
- [ ] Recap bullet animation
- [ ] End card

### B-Roll Needed
- [ ] [Description of B-roll 1]
- [ ] [Description of B-roll 2]

### Graphics to Create
- [ ] [Graphic 1 description]
- [ ] [Graphic 2 description]

### Music/Sound
- [ ] Intro music
- [ ] Transition sounds
- [ ] Outro music
```

#### Screencast Script Format

```markdown
# content/scripts/module-01/lesson-02.md

# Module 1, Lesson 2: [Title]

## Metadata
- Duration: [estimated]
- Format: Screencast
- Software: [application name]
- Resolution: 1920x1080

---

## SETUP

### Before Recording
- [ ] Clean desktop
- [ ] [Software] open with [specific setup]
- [ ] Sample files ready: [list]
- [ ] Browser tabs: [list]

---

## SCRIPT

### INTRO (0:00 - 0:30)

[SCREEN: Desktop or title slide]
[VOICEOVER]

"In this lesson, I'm going to walk you through [task] step by step. By the end, you'll be able to [outcome] on your own."

---

### STEP 1: [Action] (0:30 - 1:30)

[SCREEN: Show application]
[MOUSE: Highlight relevant area]
[VOICEOVER]

"First, we need to [action]. Watch where I click..."

[ACTION: Click on X]
[ZOOM: Highlight dialog/result]

"Notice how [observation]. This is important because [reason]."

[CALLOUT: Arrow pointing to element]

---

### STEP 2: [Action] (1:30 - 3:00)

[SCREEN: Continue in application]
[VOICEOVER]

"Next, we'll [action]..."

[ACTION: Type or navigate]
[TYPING: Show keystrokes if relevant]

"A common mistake here is [mistake]. Instead, make sure you [correct action]."

[ANNOTATION: Text box with tip]

---

### COMMON ISSUES (3:00 - 4:00)

[SCREEN: Show error state]
[VOICEOVER]

"If you see this error, don't worry. Here's how to fix it..."

[ACTION: Demonstrate fix]

---

### WRAP-UP (4:00 - 4:30)

[SCREEN: Show final result]
[VOICEOVER]

"And there you have it! You've successfully [completed task]. Try this yourself with [practice suggestion]."

---

## POST-PRODUCTION NOTES

### Editing Markers
- [Timestamp]: Cut awkward pause
- [Timestamp]: Speed up repetitive clicking
- [Timestamp]: Add zoom effect

### Annotations to Add
- [Timestamp]: Callout box
- [Timestamp]: Arrow highlight
- [Timestamp]: Text label

### Captions
- Auto-generate, then review for technical terms
```

#### Speaker Notes Format (Slides)

```markdown
# content/scripts/module-01/lesson-03.md

# Module 1, Lesson 3: [Title]

## Metadata
- Duration: [estimated]
- Format: Slide presentation
- Slides: [n]

---

## SLIDE 1: Title

**Visual:** Lesson title, module number

**Notes:**
- Welcome learners
- State what we'll cover
- Set expectations for duration

**Transition:** "Let's start with why this matters..."

---

## SLIDE 2: The Problem

**Visual:** Problem statement, pain point illustration

**Notes:**
- Describe common frustration
- Share quick statistic or story
- Connect to learner's experience

**Key Point:** "[Quote or statement to emphasize]"

**Transition:** "So how do we solve this?"

---

## SLIDE 3: The Solution Overview

**Visual:** Framework diagram or process overview

**Notes:**
- Introduce the approach
- Preview the steps
- Set up the rest of the lesson

**Don't Forget:**
- Pause after revealing diagram
- Ask rhetorical question

**Transition:** "Let's break down each step..."

---

## SLIDE 4-7: [Step Details]

[Continue pattern for each slide...]

---

## SLIDE 8: Activity

**Visual:** Activity instructions

**Notes:**
- Explain the exercise
- Give time allocation
- Describe expected outcome

**Facilitation:**
- Allow 5 minutes
- Walk around (if live)
- Prepare to answer questions

---

## SLIDE 9: Key Takeaways

**Visual:** 3 bullet points

**Notes:**
- Summarize main points
- Reinforce the "so what"
- Preview next lesson

---

## SLIDE 10: Questions / Resources

**Visual:** Q&A prompt, resource links

**Notes:**
- Invite questions
- Point to additional resources
- Thank learners

---

## PRESENTER REMINDERS

### Energy Points
- Slide 2: Build tension around problem
- Slide 5: Most technical - slow down
- Slide 8: Upbeat for activity

### Common Questions
- Q: [Anticipated question]
  A: [Prepared response]

### Timing Checkpoints
- Slide 4: Should be ~5 min in
- Slide 7: Should be ~12 min in
```

#### Facilitation Guide (Live Sessions)

```markdown
# content/scripts/module-01/live-session-01.md

# Live Session 1: [Title]

## Session Overview

**Duration:** 60 minutes
**Format:** Live workshop
**Participants:** [expected number]
**Platform:** [Zoom/Teams/etc.]

---

## PRE-SESSION CHECKLIST

### 30 Minutes Before
- [ ] Test audio/video
- [ ] Load slides/materials
- [ ] Open breakout room settings
- [ ] Prepare chat messages (copy/paste ready)
- [ ] Have backup plan ready

### 5 Minutes Before
- [ ] Start recording (if applicable)
- [ ] Welcome early arrivals
- [ ] Post agenda in chat

---

## SESSION FLOW

### Opening (0:00 - 5:00)

**Facilitator Actions:**
- Welcome and introductions
- Review session goals
- Set participation expectations

**Say:**
"Welcome everyone! Today we're going to [goal]. This is interactive, so [expectations]. Let's start by..."

**Engagement:**
- Poll: "[Quick poll question]"
- Chat: "Drop in the chat: [prompt]"

---

### Content Block 1 (5:00 - 20:00)

**Topic:** [Topic name]

**Teach:** (10 min)
- [Key point 1]
- [Key point 2]
- Demo: [what to show]

**Discuss:** (5 min)
- Prompt: "[Discussion question]"
- Call on 2-3 participants
- Summarize themes

**Transition:** "Now that we understand [topic], let's apply it..."

---

### Activity (20:00 - 40:00)

**Type:** Breakout groups
**Group Size:** 3-4 people
**Duration:** 15 minutes

**Instructions to Give:**
"In your groups, you'll [task]. You have 15 minutes. Choose someone to report back. Any questions before we start?"

**Breakout Prep:**
- Create rooms: [n] rooms of [n] people
- Auto-assign or manual

**While in Breakouts:**
- Visit each room briefly
- Answer questions
- Give 5-minute and 1-minute warnings

**Debrief:** (5 min)
- Each group shares 1 insight
- Facilitator synthesizes

---

### Content Block 2 (40:00 - 50:00)

[Similar structure...]

---

### Closing (50:00 - 60:00)

**Recap:** (3 min)
- Summarize key learnings
- Connect to course journey

**Q&A:** (5 min)
- Invite questions
- Answer or note for follow-up

**Next Steps:** (2 min)
- Homework/assignment
- Preview next session
- Thank participants

**Chat Message to Post:**
```
Thanks for joining today!

Key Resources:
- [Link 1]
- [Link 2]

Your homework: [Task]
Next session: [Date/Time]

Questions? [Contact method]
```

---

## CONTINGENCY PLANS

### If Technology Fails
- Backup: [Plan B]
- Communication: [How to reach participants]

### If Low Engagement
- Switch to: [Alternative activity]
- Direct questions: [Name specific participants]

### If Running Behind
- Cut: [Section that can be skipped]
- Shorten: [Activity that can be reduced]

---

## POST-SESSION

- [ ] Stop recording
- [ ] Save chat log
- [ ] Note follow-up items
- [ ] Send follow-up email within 24 hours
```

### Step 4: Script Quality Review

For each script, verify:

```yaml
# content/scripts/quality-check.yaml
quality_checks:
  - script: module-01-lesson-01
    status: reviewed

    content_check:
      objectives_addressed: true
      key_concepts_covered: true
      examples_included: true
      activities_clear: true

    delivery_check:
      conversational_tone: true
      appropriate_length: true
      transitions_smooth: true
      pacing_natural: true

    production_check:
      visual_cues_complete: true
      timing_realistic: true
      technical_accurate: true

    accessibility_check:
      language_clear: true
      jargon_explained: true
      captions_planned: true

    revision_notes:
      - ""
```

## Outputs

### content/scripts/
Complete scripts organized by module:
```
content/scripts/
├── script-formats.yaml
├── module-01/
│   ├── lesson-01.md (video script)
│   ├── lesson-02.md (screencast)
│   └── lesson-03.md (slides)
├── module-02/
│   └── ...
└── live-sessions/
    └── session-01.md
```

### content/scripts/quality-check.yaml
Quality review status for all scripts

### specs/scripts.yaml
```yaml
scripts:
  completed: YYYY-MM-DD

  summary:
    total_scripts: <n>
    video_scripts: <n>
    screencast_scripts: <n>
    slide_notes: <n>
    facilitation_guides: <n>

  total_word_count: <n>
  estimated_runtime: ""

  production_requirements:
    graphics_needed: <n>
    b_roll_needed: <n>
    demos_to_record: <n>
```

### progress.yaml (updated)
```yaml
phases:
  scripts:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    scripts_written: <n>
    notes:
      - ""
```

## Quality Checklist

Before completing Phase 7:

- [ ] All lessons have scripts in appropriate format
- [ ] Scripts match content design blueprints
- [ ] Conversational, natural tone
- [ ] Visual/action cues included
- [ ] Timing estimates realistic
- [ ] Production notes complete
- [ ] Quality review done
- [ ] Ready for assessment design

## Git Commit

```bash
git add content/scripts specs/scripts.yaml progress.yaml
git commit -m "Phase 7: Script development complete

- Wrote [n] scripts ([breakdown by type])
- Total runtime: [duration]
- Production requirements documented"
git tag -a phase-7-scripts -m "Script Development Complete"
```

## Next Phase

After completing Phase 7, proceed to:
→ `/course-assessments` (Phase 8: Assessment Design)

The assessments phase will:
- Design quizzes and knowledge checks
- Create project briefs
- Develop rubrics
- Plan certification criteria
