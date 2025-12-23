# Merrill's First Principles of Instruction - Complete Reference

Merrill's First Principles describe the conditions under which learning is most effective. They are derived from research on instructional design theories and provide a framework for creating engaging, effective learning experiences.

## The 5 Principles

### Principle 1: Problem-Centered

**Core Idea:** Learning is promoted when learners are engaged in solving real-world problems.

**Why It Works:**
- Provides context and relevance
- Increases motivation
- Shows the "why" before the "how"
- Creates authentic learning experiences
- Prepares for real application

**Implementation:**
- Start each lesson with a real problem
- Use authentic scenarios from the field
- Show consequences of not knowing
- Make problems progressively complex
- Connect to learner's actual work

**Examples:**
- "Your client's website is losing 40% of visitors at checkout. How would you fix it?"
- "You've inherited a codebase with no tests. Where do you start?"
- "Your team is missing deadlines. What process changes would help?"

**Template:**
```yaml
problem_context:
  scenario: "Real-world situation learners face"
  stakes: "What happens if not solved"
  relevance: "Why this matters to the learner"
  complexity: beginner|intermediate|advanced
```

---

### Principle 2: Activation

**Core Idea:** Learning is promoted when existing knowledge is activated as a foundation for new knowledge.

**Why It Works:**
- Connects new to known
- Creates mental scaffolding
- Increases retention
- Surfaces misconceptions early
- Respects prior experience

**Implementation:**
- Reference what learners already know
- Use analogies and metaphors
- Ask about prior experience
- Review prerequisite concepts
- Acknowledge expertise they bring

**Techniques:**
- "This is like... but different because..."
- "You may have experience with X, which relates to..."
- "Think of a time when you..."
- "If you've used Y, this will feel familiar..."
- Pre-assessment to identify prior knowledge

**Template:**
```yaml
activation:
  prior_knowledge: "What learners already know"
  connection: "How new content relates"
  analogy: "Familiar concept this resembles"
  experience_prompt: "Question to surface experience"
```

---

### Principle 3: Demonstration

**Core Idea:** Learning is promoted when new knowledge is demonstrated to the learner.

**Why It Works:**
- Shows rather than tells
- Provides mental models
- Clarifies what "good" looks like
- Reduces cognitive load
- Creates reference examples

**Implementation:**
- Show worked examples step-by-step
- Include multiple representations
- Demonstrate both what TO do and NOT to do
- Use varied examples (simple to complex)
- Highlight key decision points

**Types of Demonstration:**
- **Examples:** Concrete instances of concepts
- **Non-examples:** What it ISN'T (clarifies boundaries)
- **Worked examples:** Step-by-step solutions
- **Demonstrations:** Live or recorded walkthroughs
- **Case studies:** Real-world applications

**Template:**
```yaml
demonstration:
  key_concepts:
    - concept: ""
      explanation: ""
      example: ""
      non_example: ""

  worked_examples:
    - scenario: ""
      context: ""
      steps:
        - step: 1
          action: ""
          explanation: ""
      outcome: ""

  demonstrations:
    - type: video|screencast|live
      description: ""
      key_moments: []
```

---

### Principle 4: Application

**Core Idea:** Learning is promoted when learners apply new knowledge through practice.

**Why It Works:**
- Learning by doing
- Builds procedural knowledge
- Reveals gaps in understanding
- Increases confidence
- Prepares for real use

**Implementation:**
- Start with guided practice (high support)
- Progress to independent practice
- Provide immediate, specific feedback
- Use scaffolding that fades over time
- Create safe space for mistakes

**Practice Progression:**
1. **Scaffolded practice:** Walk through with heavy guidance
2. **Guided practice:** Practice with hints/help available
3. **Independent practice:** Practice without support
4. **Transfer practice:** Apply to new contexts

**Scaffolding Types:**
- Worked examples with blanks
- Checklists and frameworks
- Hints on demand
- Partial solutions to complete
- Templates to follow

**Template:**
```yaml
application:
  guided_practice:
    - activity: ""
      scaffolding: ""
      feedback_method: ""

  independent_practice:
    - activity: ""
      success_criteria: []
      common_errors: []

  scaffolding_plan:
    - stage: 1
      support_level: high
      scaffolds: []
    - stage: 2
      support_level: medium
      scaffolds: []
    - stage: 3
      support_level: low
      scaffolds: []
```

---

### Principle 5: Integration

**Core Idea:** Learning is promoted when new knowledge is integrated into the learner's world.

**Why It Works:**
- Bridges learning to life
- Increases long-term retention
- Creates ownership
- Builds confidence
- Ensures transfer

**Implementation:**
- Reflection on what was learned
- Planning for real-world application
- Teaching/explaining to others
- Creating something personally meaningful
- Connecting to goals and work

**Techniques:**
- "How will you use this tomorrow?"
- "Explain this concept to a colleague"
- "What obstacles might prevent application?"
- "Create a personal action plan"
- "Share what you created"

**Template:**
```yaml
integration:
  reflection:
    prompts:
      - "What was most valuable?"
      - "What surprised you?"
      - "What questions remain?"

  transfer:
    application_plan: "How to use this in real work"
    first_step: "Specific action to take this week"
    obstacles: "What might prevent application"
    support_needed: "Resources or help required"

  share:
    method: "How to demonstrate/teach others"
    audience: "Who would benefit from this"

  create:
    meaningful_artifact: "Something personally relevant"
```

---

## Complete Lesson Blueprint

```yaml
lesson:
  title: ""
  duration: ""
  bloom_level: ""

  # PROBLEM-CENTERED
  problem_context:
    scenario: |
      [Real-world problem description]
    stakes: "[What happens if not solved]"
    relevance: "[Why learner should care]"

  # ACTIVATION
  activation:
    prior_knowledge: "[What they already know]"
    connection: "[How this builds on existing knowledge]"
    analogy: "[Familiar concept this resembles]"
    experience_prompt: "[Question to surface their experience]"

  # DEMONSTRATION
  demonstration:
    key_concepts:
      - concept: "[Concept name]"
        explanation: "[Clear explanation]"
        example: "[Concrete example]"
        non_example: "[What it's not]"

    worked_examples:
      - scenario: "[Context]"
        steps:
          - step: 1
            action: "[What to do]"
            explanation: "[Why]"
        outcome: "[Result]"

  # APPLICATION
  application:
    guided:
      - activity: "[Practice activity]"
        scaffolding: "[Support provided]"
        feedback: "[How feedback is given]"

    independent:
      - activity: "[Independent practice]"
        success_criteria:
          - "[Criterion 1]"
          - "[Criterion 2]"

  # INTEGRATION
  integration:
    reflection: "[Questions to ponder]"
    transfer: "[How to apply tomorrow]"
    share: "[How to teach/demonstrate to others]"
    create: "[Meaningful personal artifact]"
```

---

## Quick Reference

| Principle | Core Question | Key Technique |
|-----------|---------------|---------------|
| Problem | "Why does this matter?" | Start with real problem |
| Activation | "What do I already know?" | Connect to prior knowledge |
| Demonstration | "What does it look like?" | Show, don't just tell |
| Application | "Can I do it?" | Practice with feedback |
| Integration | "How do I use it?" | Transfer to real world |

---

## Checklist for Lesson Design

- [ ] **Problem-Centered**
  - [ ] Lesson starts with real-world problem
  - [ ] Relevance to learner is clear
  - [ ] Stakes are established

- [ ] **Activation**
  - [ ] Prior knowledge is referenced
  - [ ] Connection to existing skills made
  - [ ] Analogies used appropriately

- [ ] **Demonstration**
  - [ ] Examples provided
  - [ ] Non-examples included
  - [ ] Step-by-step walkthrough available
  - [ ] Multiple representations used

- [ ] **Application**
  - [ ] Guided practice opportunity
  - [ ] Independent practice opportunity
  - [ ] Scaffolding provided
  - [ ] Feedback mechanism in place

- [ ] **Integration**
  - [ ] Reflection prompts included
  - [ ] Real-world transfer planned
  - [ ] Opportunity to share/teach
  - [ ] Personal artifact creation
