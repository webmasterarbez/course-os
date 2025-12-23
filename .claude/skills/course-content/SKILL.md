---
name: course-content
description: Use for Phase 6 of Course OS - designing detailed lesson content including examples, case studies, activities, and resources following Merrill's First Principles. Triggers on "/course-content", "design lessons", "create examples", "plan activities", or after completing Phase 5.
prerequisites: [course-architecture]
outputs: [content/lessons/, content/examples/, content/activities/, content/resources/]
exports: []
frameworks: [merrills-principles, gagne-events]
---

# Phase 6: Content Design

Create detailed lesson plans, examples, activities, and curated resources.

## Prerequisites

- Phase 5 complete
- `specs/curriculum.yaml` exists
- `specs/modules/*.yaml` exist

## Process

### Step 1: Review Architecture

Review curriculum structure and lesson specs from Phase 5.

### Step 2: Design Lesson Blueprints

For each lesson, create detailed blueprint following Merrill's Principles:

```yaml
# content/lessons/module-01/lesson-01.yaml
lesson:
  id: lesson-01
  title: ""
  module: module-01
  duration: ""
  bloom_level: ""

  # PROBLEM-CENTERED
  problem_context:
    scenario: "Real-world problem this addresses"
    stakes: "What happens if not solved"
    relevance: "Why learner should care"

  # ACTIVATION
  activation:
    prior_knowledge: "What they already know"
    connection: "How this builds on existing knowledge"
    analogy: "Familiar concept this resembles"

  # DEMONSTRATION
  demonstration:
    key_concepts:
      - concept: ""
        explanation: ""
        example: ""
        non_example: ""  # What it's NOT

    worked_examples:
      - scenario: ""
        steps: []
        outcome: ""

  # APPLICATION
  application:
    guided_practice:
      - activity: ""
        scaffolding: ""
        feedback_method: ""

    independent_practice:
      - activity: ""
        success_criteria: []

  # INTEGRATION
  integration:
    reflection: "Questions to ponder"
    transfer: "How to apply in real world"
    share: "How to teach others"
```

**Quick Reference - Merrill's 5 Principles:**

| Principle | Core Idea | Key Question |
|-----------|-----------|--------------|
| Problem | Learning in context of real problems | "Why does this matter?" |
| Activation | Connect to existing knowledge | "What do I already know?" |
| Demonstration | Show, don't just tell | "What does it look like?" |
| Application | Practice with feedback | "Can I do it?" |
| Integration | Transfer to real life | "How do I use it?" |

> Full reference: `.claude/standards/merrills-principles.md`

### Step 3: Create Examples

For each major concept, save to `content/examples/`:

```markdown
# content/examples/module-01/authentication-flow.md

## Example: OAuth 2.0 Authentication Flow

### Context
A SaaS application needs to allow users to log in with Google.

### Step-by-Step Walkthrough
1. User clicks "Login with Google"
2. App redirects to Google's authorization endpoint
3. User approves access
4. Google redirects back with authorization code
5. App exchanges code for access token
6. App uses token to fetch user info

### Common Variations
- Different OAuth providers (GitHub, Microsoft)
- Refresh token flow for long sessions

### Edge Cases
- What if user denies access?
- What if token expires mid-session?
```

Include:
- Real-world context
- Step-by-step walkthrough
- Common variations
- Edge cases
- Non-examples (what NOT to do)

### Step 4: Design Activities

Create practice activities in `content/activities/`:

```yaml
# content/activities/module-01/implement-oauth.yaml
activity:
  id: activity-01
  title: "Implement OAuth Login"
  lesson: lesson-03
  type: exercise|project|discussion

  overview: "Hands-on implementation of OAuth"

  instructions:
    - step: 1
      action: "Set up OAuth credentials"
      hints: []
    - step: 2
      action: "Implement authorization redirect"
      hints: []

  scaffolding:
    - level: high
      support: "Use provided starter code"
    - level: low
      support: "Implement from scratch"

  success_criteria:
    - "User can click 'Login with Google'"
    - "App receives and stores access token"
    - "User info is displayed after login"

  common_mistakes:
    - mistake: "Storing tokens in localStorage"
      why_wrong: "Security vulnerability"
      correction: "Use httpOnly cookies"

  duration: "30 minutes"
```

**Activity Types:**
- **Exercise**: Skill-building, focused practice
- **Project**: Application, synthesis of multiple skills
- **Discussion**: Reflection, peer learning

### Step 5: Curate Resources

Gather supporting materials in `content/resources/`:

```yaml
# content/resources/module-01.yaml
resources:
  templates:
    - name: "OAuth Implementation Checklist"
      file: "oauth-checklist.pdf"
      lesson: lesson-03

  tools:
    - name: "OAuth Debugger"
      url: "https://example.com/oauth-debug"
      purpose: "Test OAuth flows"

  references:
    - name: "OAuth 2.0 RFC"
      url: "https://tools.ietf.org/html/rfc6749"
      type: official_docs

  further_reading:
    - name: "OAuth Security Best Practices"
      url: ""
      why: "Deep dive on security"
```

## Outputs

| Directory | Purpose |
|-----------|---------|
| `content/lessons/` | Lesson blueprints |
| `content/examples/` | Case studies and examples |
| `content/activities/` | Exercises and projects |
| `content/resources/` | Curated resources |

## Quality Gate

- [ ] All lessons have blueprints
- [ ] Merrill's 5 principles applied to each lesson
- [ ] Examples are realistic and relevant
- [ ] Activities have clear success criteria
- [ ] Resources are curated (not dumped)
- [ ] Scaffolding provided for activities

## Git Commit

```bash
git add content/lessons content/examples content/activities content/resources specs/progress.yaml
git commit -m "Phase 6: Content design complete"
git tag -a phase-6-content -m "Content Design Complete"
```

## Next Phase

→ `/course-scripts` (Phase 7: Script Development)
