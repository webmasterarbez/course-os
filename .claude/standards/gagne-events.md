# Gagné's 9 Events of Instruction - Complete Reference

Gagné's Nine Events of Instruction provide a systematic framework for designing effective lessons. Each event corresponds to a cognitive process that supports learning.

## The 9 Events

### Event 1: Gain Attention

**Purpose:** Focus the learner's attention and create readiness to learn.

**Techniques:**
- Surprising fact or statistic
- Thought-provoking question
- Short story or anecdote
- Visual hook or demonstration
- Problem statement or challenge
- Humor (used appropriately)

**Examples:**
- "Did you know that 80% of startups fail in the first year?"
- "What if you could double your conversion rate with one change?"
- [Show a before/after comparison]

**Duration:** 30 seconds - 2 minutes

---

### Event 2: State Objectives

**Purpose:** Set clear expectations for what learners will achieve.

**Techniques:**
- "By the end of this lesson, you will be able to..."
- List 2-4 specific, measurable outcomes
- Use Bloom's action verbs
- Connect to real-world application

**Examples:**
- "By the end of this lesson, you'll be able to implement OAuth 2.0 authentication in your application."
- "After this module, you'll be able to analyze customer feedback and identify the top 3 improvement opportunities."

**Duration:** 30 seconds - 1 minute

---

### Event 3: Recall Prior Learning

**Purpose:** Activate existing knowledge that new learning will build upon.

**Techniques:**
- Brief review of previous lesson
- Question about related experience
- Analogy to familiar concept
- Pre-assessment or warm-up exercise

**Examples:**
- "Last time we covered the basics of API design. Today we'll build on that..."
- "Think about a time when you had to debug a complex issue. What was your approach?"
- "This is similar to how you learned to drive a car..."

**Duration:** 1-3 minutes

---

### Event 4: Present Content

**Purpose:** Deliver new information in an organized, digestible way.

**Techniques:**
- Chunked information (7±2 items max)
- Multiple representations (visual + verbal)
- Clear organization and structure
- Meaningful examples
- Varied media formats

**Best Practices:**
- Present the big picture first, then details
- Use visuals to support verbal explanations
- Highlight key points and terminology
- Pace appropriately for complexity

**Duration:** 5-15 minutes per chunk

---

### Event 5: Provide Guidance

**Purpose:** Help learners encode information into long-term memory.

**Techniques:**
- Tips and strategies
- Common mistakes to avoid
- Mnemonics and memory aids
- Step-by-step procedures
- Decision frameworks
- Worked examples with explanation

**Examples:**
- "A common mistake here is to... Instead, try..."
- "Here's a framework you can use: First... Then... Finally..."
- "Remember this with the acronym SMART..."

**Duration:** 2-5 minutes

---

### Event 6: Elicit Performance

**Purpose:** Give learners opportunity to practice and apply new knowledge.

**Techniques:**
- Guided practice with support
- Independent practice
- Problem-solving exercises
- Simulations
- Role-playing
- Hands-on activities

**Best Practices:**
- Start with easier tasks, increase difficulty
- Provide scaffolding that fades over time
- Allow for mistakes in safe environment
- Encourage active participation

**Duration:** 5-20 minutes (varies by content)

---

### Event 7: Provide Feedback

**Purpose:** Reinforce correct understanding and correct misconceptions.

**Techniques:**
- Immediate feedback on practice
- Specific, actionable corrections
- Positive reinforcement for correct responses
- Explanation of why answers are right/wrong
- Peer feedback opportunities

**Types of Feedback:**
- **Confirmatory:** "Yes, that's correct because..."
- **Corrective:** "Not quite. Consider this instead..."
- **Elaborative:** "Good, and you could also..."

**Duration:** Integrated throughout practice

---

### Event 8: Assess Performance

**Purpose:** Verify that learning has occurred.

**Techniques:**
- Formal quizzes or tests
- Practical demonstrations
- Project submissions
- Portfolio reviews
- Certification exams

**Best Practices:**
- Align assessment with stated objectives
- Use varied question types
- Assess at appropriate Bloom's level
- Provide meaningful feedback on results

**Duration:** 5-30 minutes (varies by assessment)

---

### Event 9: Enhance Retention and Transfer

**Purpose:** Help learners remember and apply learning in real life.

**Techniques:**
- Summary of key points
- Real-world application examples
- Action planning exercises
- Spaced repetition prompts
- Connection to next lesson
- Resources for continued learning

**Examples:**
- "To summarize, the three key takeaways are..."
- "This week, try applying this to your own project by..."
- "Here's a checklist you can use when..."

**Duration:** 2-5 minutes

---

## Lesson Types and Event Emphasis

### Instruction-Heavy Lesson

Focus: Events 1-5, 9

| Event | Time |
|-------|------|
| 1. Gain Attention | 1 min |
| 2. State Objectives | 1 min |
| 3. Recall Prior Learning | 2 min |
| 4. Present Content | 15 min |
| 5. Provide Guidance | 5 min |
| 9. Enhance Retention | 3 min |

### Practice-Heavy Lesson

Focus: Events 1, 3, 6, 7, 9

| Event | Time |
|-------|------|
| 1. Gain Attention | 1 min |
| 3. Recall Prior Learning | 3 min |
| 6. Elicit Performance | 20 min |
| 7. Provide Feedback | (integrated) |
| 9. Enhance Retention | 3 min |

### Assessment Lesson

Focus: Events 1, 3, 8, 9

| Event | Time |
|-------|------|
| 1. Gain Attention | 1 min |
| 3. Recall Prior Learning | 5 min |
| 8. Assess Performance | 20 min |
| 9. Enhance Retention | 5 min |

---

## Lesson Blueprint Template

```yaml
lesson:
  title: ""
  duration: ""

  gagne_events:
    attention:
      technique: ""
      content: ""
      duration: ""

    objectives:
      items:
        - ""
      duration: ""

    recall:
      connection: ""
      technique: ""
      duration: ""

    content:
      chunks:
        - topic: ""
          key_points: []
          visuals: []
      duration: ""

    guidance:
      tips: []
      common_mistakes: []
      frameworks: []
      duration: ""

    practice:
      type: guided|independent
      activity: ""
      scaffolding: ""
      duration: ""

    feedback:
      method: ""
      timing: immediate|delayed

    assessment:
      type: ""
      criteria: []
      duration: ""

    retention:
      summary: []
      application: ""
      next_steps: ""
      duration: ""
```

---

## Quick Reference

| Event | Purpose | Key Question |
|-------|---------|--------------|
| 1. Attention | Focus | "Why should I care?" |
| 2. Objectives | Expectation | "What will I learn?" |
| 3. Recall | Connection | "What do I already know?" |
| 4. Content | Information | "What is it?" |
| 5. Guidance | Strategy | "How do I do it?" |
| 6. Practice | Application | "Can I do it?" |
| 7. Feedback | Correction | "Am I doing it right?" |
| 8. Assessment | Verification | "Did I learn it?" |
| 9. Retention | Transfer | "How do I use it?" |
