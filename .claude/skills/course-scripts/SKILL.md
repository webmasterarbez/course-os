---
name: course-scripts
description: Use for Phase 7 of Course OS - writing production-ready scripts adapted to content type including video scripts, voiceovers, presentation notes, and facilitation guides. Triggers on "/course-scripts", "write scripts", "video script", "presentation notes", or after completing Phase 6.
prerequisites: [course-content]
outputs: [content/scripts/]
exports: []
frameworks: [gagne-events]
---

# Phase 7: Script Development

Write production-ready scripts adapted to each content type.

## Prerequisites

- Phase 6 complete
- `content/lessons/*.yaml` exist
- `specs/format.yaml` defines delivery type

## Script Formats by Content Type

| Content Type | Script Format | Key Elements |
|--------------|---------------|--------------|
| Video lesson | Full script + visual cues | [VISUAL], [B-ROLL], [GRAPHIC] |
| Screencast | Voiceover + action cues | [ACTION], [ZOOM], [HIGHLIGHT] |
| Slides | Speaker notes | SPEAK, TRANSITION, INTERACT |
| Live session | Facilitation guide | Timing, activities, debriefs |
| Audio/Podcast | Audio script | Natural pacing, no visuals |

## Process

### Step 1: Determine Script Types

Review `specs/format.yaml` to identify content types needed.

### Step 2: Write Scripts

For each lesson, create appropriate script in `content/scripts/`:

#### Video Lesson Script

```markdown
# content/scripts/module-01/lesson-01.md

# Lesson 1: Introduction to OAuth

Duration: 7:00

---

## HOOK (0:00-0:30)

[VISUAL: Split screen - frustrated user vs happy user]

Have you ever spent hours debugging a login system, only to realize
you've introduced a security vulnerability? Today, you'll learn how
OAuth lets you build secure authentication in minutes, not days.

## OBJECTIVES (0:30-0:45)

[GRAPHIC: Bullet points appearing]

By the end of this lesson, you'll be able to:
1. Explain the OAuth 2.0 authorization flow
2. Identify when to use OAuth vs other auth methods

## SECTION 1: What is OAuth? (0:45-3:00)

[VISUAL: Diagram of OAuth flow]

OAuth is an authorization protocol that lets users grant limited
access to their resources on one site to another site...

[B-ROLL: User clicking "Login with Google" button]

You've probably used OAuth dozens of times without knowing it.
Every time you click "Login with Google" or "Sign in with GitHub"...

[GRAPHIC: OAuth actors diagram]

There are four key players in every OAuth flow:
1. Resource Owner - that's the user
2. Client - your application
3. Authorization Server - Google, GitHub, etc.
4. Resource Server - where the user's data lives

## SECTION 2: The Authorization Flow (3:00-5:30)

[ACTION: Screencast of OAuth flow]

Let me walk you through a real OAuth flow...

## SUMMARY (5:30-6:30)

[VISUAL: Key takeaways graphic]

Today we covered:
- OAuth is an authorization protocol (not authentication)
- The four actors: Resource Owner, Client, Auth Server, Resource Server
- The basic authorization code flow

## CALL TO ACTION (6:30-7:00)

[VISUAL: Next lesson preview]

Your next step: In the practice exercise, you'll trace through
an OAuth flow using our debugging tool. See you there!
```

**Visual Cue Tags:**
- `[VISUAL: description]` - What appears on screen
- `[B-ROLL: description]` - Supplementary footage
- `[GRAPHIC: description]` - On-screen graphics/text
- `[ACTION: description]` - Presenter actions
- `[SCREENCAST: description]` - Screen recording

#### Screencast Script

```markdown
# content/scripts/module-01/lesson-03.md

# Lesson 3: Implementing OAuth (Screencast)

Duration: 10:00

---

## SETUP

Before recording:
- [ ] Clean desktop, close unnecessary apps
- [ ] Open VS Code with starter project
- [ ] Have documentation tabs ready
- [ ] Test that OAuth credentials work

---

## SCRIPT

[ACTION: Show VS Code with project open]

"Let's implement OAuth in a real application. I have a basic
Express app here that currently has no authentication."

[ACTION: Open browser, show app login page]

"Right now, if you try to access the dashboard, there's no way
to log in. Let's fix that."

[ZOOM: package.json dependencies section]

"First, we'll install the passport and passport-google-oauth20
packages..."

[ACTION: Type in terminal]
```bash
npm install passport passport-google-oauth20
```

"Passport is the de facto standard for authentication in Node.js..."

[ACTION: Create new file auth.js]

"Now let's set up our Passport configuration..."

[HIGHLIGHT: Client ID and Secret lines]

"These credentials come from the Google Cloud Console.
Never commit these to version control - use environment variables."

---

## COMMON MISTAKES

[ACTION: Intentionally show wrong redirect URL]

"A really common mistake is mismatching your redirect URL.
See how I get this error? That's because..."
```

#### Presentation Speaker Notes

```markdown
# content/scripts/module-02/lesson-01-slides.md

# Slide 1: Title

**SPEAK:** Welcome to Module 2, where we'll dive into advanced
OAuth patterns. By now you've implemented basic OAuth - today
we'll handle the tricky edge cases.

**TRANSITION:** "Let's start with the most common issue..."

---

# Slide 2: Token Refresh

**KEY POINTS:**
- Access tokens expire (usually 1 hour)
- Refresh tokens let you get new access tokens
- Not all providers support refresh tokens

**SPEAK:** Access tokens are intentionally short-lived for security.
Imagine if someone stole your token - you'd want it to expire quickly.

**INTERACT:** "Who's had a user complain about being logged out
unexpectedly? [Pause for hands] That's usually a refresh token issue."

**DEMO:** Show token expiration in DevTools

---

# Slide 3: Silent Refresh

**SPEAK:** The user should never see this happening. It's called
"silent refresh" because we do it in the background...
```

#### Facilitation Guide

```markdown
# content/scripts/workshop/session-02.md

# Session 2: OAuth Implementation Workshop

Duration: 90 minutes
Participants: Up to 20

---

## PRE-SESSION (15 min before)

- [ ] Test all participant can access starter repo
- [ ] Verify OAuth sandbox credentials work
- [ ] Open debugging tool in browser
- [ ] Set up breakout rooms (if virtual)

---

## OPENING (5 min)

**Welcome & Housekeeping:**
- Cameras on/off: Your choice
- Questions: Raise hand or chat
- Breaks: We'll have one at 45 min

**Warm-up Question:**
"In the chat, share: What's the worst authentication bug you've
encountered?" [Allow 2 minutes for responses, acknowledge a few]

---

## CONTENT BLOCK 1: OAuth Flow Trace (25 min)

**TEACH:** (10 min)
Walk through OAuth flow diagram. Emphasize the "authorization code"
exchange - this is where most bugs happen.

**ACTIVITY:** OAuth Flow Tracing (15 min)
1. Pairs or small groups
2. Use the debugging tool to trace a real flow
3. Identify each of the 4 actors at each step
4. Note: What data is exchanged at each step?

**DEBRIEF:** (5 min)
- "What surprised you about the flow?"
- "Where do you think bugs are most likely to occur?"

---

## BREAK (10 min)

---

## CONTENT BLOCK 2: Implementation (40 min)

**ACTIVITY:** Implement OAuth (30 min)
- Individual or pairs
- Use provided starter code
- Goal: Working "Login with Google" button
- Stretch: Add token refresh

**CIRCULATE:** Watch for common issues:
- Wrong redirect URL
- Missing scopes
- Token storage problems

**DEBRIEF:** (10 min)
- Live debug a participant's issue (ask for volunteer)
- Review solution

---

## CLOSING (10 min)

**Recap:**
- OAuth = Authorization (not authentication)
- 4 actors, 1 flow
- The code exchange is where magic happens

**Q&A:** Open floor for questions

**Next Steps:**
- Complete the take-home exercise
- Join the Slack channel for questions
- Session 3 is Tuesday at 2pm
```

### Step 3: Apply Voice Guidelines

For all scripts:
- Conversational, not academic
- Direct address ("you" not "learners")
- Short sentences
- Active voice
- Match persona from Phase 3

### Step 4: Review Timing

Estimate duration:
- Speaking pace: ~150 words/minute
- Add time for visuals, demos, transitions
- Compare to lesson duration targets

## Outputs

| Directory | Purpose |
|-----------|---------|
| `content/scripts/` | Production-ready scripts |

## Quality Gate

- [ ] All lessons have scripts
- [ ] Format matches delivery type
- [ ] Voice is consistent
- [ ] Timing is realistic
- [ ] Visual cues included (for video)
- [ ] Action cues included (for screencast)

## Git Commit

```bash
git add content/scripts specs/progress.yaml
git commit -m "Phase 7: Script development complete"
git tag -a phase-7-scripts -m "Script Development Complete"
```

## Next Phase

→ `/course-assessments` (Phase 8: Assessment Design)
