# ADDIE Framework - Complete Reference

ADDIE is the foundational instructional design model. It provides a systematic approach to creating effective learning experiences through five phases: Analysis, Design, Development, Implementation, and Evaluation.

## The 5 Phases

### Phase 1: Analysis

**Purpose:** Understand the learning need and context before designing anything.

**Key Questions:**
- Who are the learners?
- What do they need to learn?
- What do they already know?
- What are the constraints?
- What does success look like?

**Activities:**
- Learner analysis (demographics, prior knowledge, preferences)
- Needs assessment (gap between current and desired state)
- Task analysis (what skills/knowledge are required)
- Context analysis (where/how learning will occur)
- Goal definition (what success looks like)

**Outputs:**
- Learner personas
- Learning needs statement
- Performance objectives
- Constraints and requirements
- Success criteria

**Course OS Mapping:** Phases 1-3
- `/course-import` - Source collection
- `/course-research` - Deep topic research
- `/course-discovery` - Audience and market analysis

---

### Phase 2: Design

**Purpose:** Create the blueprint for the learning experience.

**Key Questions:**
- What are the specific learning objectives?
- How will content be organized?
- What instructional strategies will be used?
- How will learning be assessed?
- What is the delivery format?

**Activities:**
- Write learning objectives (Bloom's aligned)
- Sequence content logically
- Select instructional strategies
- Design assessments (Kirkpatrick aligned)
- Create course structure
- Plan for accessibility

**Outputs:**
- Learning objectives document
- Course outline/structure
- Assessment strategy
- Content sequencing
- Instructional strategy plan
- Prototype/storyboard

**Course OS Mapping:** Phases 4-5
- `/course-strategy` - Outcomes, format, metrics
- `/course-architecture` - Curriculum structure

---

### Phase 3: Development

**Purpose:** Create the actual learning materials.

**Key Questions:**
- What content needs to be created?
- What media will be used?
- How will interactions work?
- What resources are needed?
- How will quality be ensured?

**Activities:**
- Content development
- Media production
- Interactive element creation
- Resource curation
- Prototype testing
- Quality review

**Outputs:**
- Lesson content
- Scripts
- Media assets
- Assessments
- Supplementary materials
- Facilitator guides

**Course OS Mapping:** Phases 6-8
- `/course-content` - Lesson design
- `/course-scripts` - Script development
- `/course-assessments` - Assessment creation

---

### Phase 4: Implementation

**Purpose:** Prepare for and execute the learning delivery.

**Key Questions:**
- How will the course be delivered?
- What technology is needed?
- How will learners access content?
- What support is required?
- How will facilitators be prepared?

**Activities:**
- Platform setup
- Facilitator training
- Pilot testing
- Launch planning
- Learner onboarding
- Technical support setup

**Outputs:**
- Deployed course
- Facilitator training materials
- Learner access instructions
- Support documentation
- Launch communications

**Course OS Mapping:** Phases 9-10
- `/course-media` - Media production planning
- `/course-production` - Production package

---

### Phase 5: Evaluation

**Purpose:** Assess effectiveness and identify improvements.

**Key Questions:**
- Did learners achieve the objectives?
- Was the learning experience effective?
- What should be improved?
- What was the business impact?
- Should the course continue?

**Activities:**
- Formative evaluation (during development)
- Summative evaluation (after delivery)
- Learner feedback analysis
- Performance data review
- ROI calculation
- Improvement planning

**Outputs:**
- Evaluation reports
- Learner feedback summary
- Performance metrics
- Improvement recommendations
- Version update plan

**Course OS Mapping:** Built into all phases via quality gates

---

## ADDIE as Iterative Process

ADDIE is not strictly linear. Modern practice treats it as iterative:

```
     ┌─────────────────────────────────────────┐
     │                                         │
     ▼                                         │
┌─────────┐    ┌─────────┐    ┌─────────────┐ │
│ Analysis │───▶│ Design  │───▶│ Development │─┤
└─────────┘    └─────────┘    └─────────────┘ │
     ▲              │               │          │
     │              │               │          │
     │              ▼               ▼          │
     │         ┌─────────────────────────┐    │
     │         │      Evaluation         │    │
     │         └─────────────────────────┘    │
     │              │               │          │
     │              ▼               ▼          │
     │         ┌─────────────────────────┐    │
     └─────────│    Implementation       │────┘
               └─────────────────────────┘
```

**Iterative Approaches:**
- Rapid prototyping within phases
- Frequent stakeholder feedback
- Agile/sprint-based development
- Continuous improvement cycles

---

## Course OS 10-Phase Alignment

| ADDIE Phase | Course OS Phases | Purpose |
|-------------|------------------|---------|
| **Analysis** | 1-3 | Understanding |
| | 1. Import | Gather existing sources |
| | 2. Research | Deep topic investigation |
| | 3. Discovery | Audience and market analysis |
| **Design** | 4-5 | Planning |
| | 4. Strategy | Outcomes and metrics |
| | 5. Architecture | Structure and sequencing |
| **Development** | 6-8 | Creation |
| | 6. Content | Lesson design |
| | 7. Scripts | Production scripts |
| | 8. Assessments | Quizzes, projects, rubrics |
| **Implementation** | 9-10 | Preparation |
| | 9. Media | Production planning |
| | 10. Production | Handoff package |
| **Evaluation** | All phases | Quality gates |

---

## Quality Gates by ADDIE Phase

### Analysis Quality Gate

Before proceeding to Design:
- [ ] Learner personas defined
- [ ] Learning needs identified
- [ ] Topic thoroughly researched
- [ ] Market positioning clear
- [ ] Constraints documented

### Design Quality Gate

Before proceeding to Development:
- [ ] Learning objectives SMART and Bloom's-aligned
- [ ] Course structure logical
- [ ] Assessment strategy defined (Kirkpatrick)
- [ ] Instructional strategies chosen
- [ ] Prerequisites specified

### Development Quality Gate

Before proceeding to Implementation:
- [ ] All content created
- [ ] Scripts production-ready
- [ ] Assessments designed
- [ ] Materials reviewed
- [ ] Accessibility checked

### Implementation Quality Gate

Before launch:
- [ ] Media specs complete
- [ ] Platform ready
- [ ] Handoff package complete
- [ ] Quality audit passed
- [ ] Launch checklist complete

### Evaluation (Ongoing)

Throughout and after:
- [ ] Learner feedback collected
- [ ] Assessment data analyzed
- [ ] Business impact measured
- [ ] Improvements identified
- [ ] Next iteration planned

---

## ADDIE vs. Agile ISD

| Aspect | Traditional ADDIE | Agile ADDIE |
|--------|------------------|-------------|
| Phases | Sequential | Iterative/overlapping |
| Feedback | End of each phase | Continuous |
| Changes | Formal change control | Embraced |
| Delivery | Complete product | Incremental modules |
| Timeline | Fixed, longer | Flexible, shorter |

**Course OS Approach:** Flexible ADDIE
- Phases are sequential but can overlap
- Quality gates allow iteration
- Git versioning enables incremental delivery
- Profile system (default/mini/workshop) adjusts depth

---

## Templates

### Analysis Phase Template

```yaml
analysis:
  learners:
    personas: []  # Created in Phase 3
    prior_knowledge: ""
    constraints: []
    preferences: []

  needs:
    current_state: ""
    desired_state: ""
    gap: ""
    priority: high|medium|low

  context:
    delivery_environment: ""
    technology_available: ""
    time_constraints: ""
    budget: ""

  goals:
    business_goal: ""
    learning_goal: ""
    success_criteria: []
```

### Design Phase Template

```yaml
design:
  objectives:
    primary: []    # Bloom's aligned
    secondary: []

  structure:
    modules: []
    sequencing: ""
    duration: ""

  strategies:
    instructional: []  # Gagné, Merrill
    engagement: []
    assessment: []     # Kirkpatrick

  format:
    delivery: self-paced|cohort|live|hybrid
    media: video|text|audio|interactive
    platform: ""
```

### Evaluation Phase Template

```yaml
evaluation:
  formative:  # During development
    methods: []
    frequency: ""
    stakeholders: []

  summative:  # After delivery
    reaction:     # Kirkpatrick L1
      method: ""
      timing: ""
    learning:     # Kirkpatrick L2
      method: ""
      timing: ""
    behavior:     # Kirkpatrick L3
      method: ""
      timing: ""
    results:      # Kirkpatrick L4
      method: ""
      timing: ""

  improvement:
    feedback_collection: ""
    analysis_schedule: ""
    update_process: ""
```

---

## Quick Reference

| Phase | Key Question | Key Output |
|-------|--------------|------------|
| **Analysis** | "Who and what?" | Learner personas, needs |
| **Design** | "How to teach?" | Objectives, structure |
| **Development** | "What to create?" | Content, materials |
| **Implementation** | "How to deliver?" | Platform, launch |
| **Evaluation** | "Did it work?" | Metrics, improvements |
