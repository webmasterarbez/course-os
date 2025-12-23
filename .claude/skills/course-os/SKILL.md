# Course OS - Master Skill

## Overview

Course OS is a comprehensive course development system that guides you through 10 structured phases to create professional educational content. It enforces instructional design best practices (ADDIE, Bloom's Taxonomy, Gagné's 9 Events, Kirkpatrick, Merrill's Principles) while supporting any course type and format.

**Use this skill to:** Create any type of educational course with deep research, structured curriculum design, and production-ready specifications.

## The 10 Phases

| Phase | Skill | Purpose |
|-------|-------|---------|
| 1 | `/course-import` | Source Collection & Import |
| 2 | `/course-research` | Deep Topic Research |
| 3 | `/course-discovery` | Audience & Market Discovery |
| 4 | `/course-strategy` | Course Strategy |
| 5 | `/course-architecture` | Curriculum Architecture |
| 6 | `/course-content` | Content Design |
| 7 | `/course-scripts` | Script Development |
| 8 | `/course-assessments` | Assessment Design |
| 9 | `/course-media` | Media Production Planning |
| 10 | `/course-production` | Production Package |

## When to Use

**Use `/course-os` when:**
- Starting a new course from scratch
- Want guided flow through all phases
- Need comprehensive course development

**Use individual phase skills when:**
- Resuming work on a specific phase
- Need to iterate on one area
- Working on standalone content (single lesson, module)

## Workflow

### Starting a New Course

1. **Initialize the course project:**
   ```bash
   mkdir -p <course-name>/{specs,content,assets,production}
   mkdir -p <course-name>/specs/modules
   mkdir -p <course-name>/content/{scripts,lessons,assessments}
   cd <course-name>
   git init
   ```

2. **Create initial course.yaml:**
   ```yaml
   course:
     name: ""
     slug: ""
     version: "0.1.0"
     status: "planning"
     created: YYYY-MM-DD

   meta:
     author: ""
     organization: ""
     languages:
       primary: "en"
       translations: []

   type:
     format: ""  # self-paced | cohort | live | hybrid
     category: "" # online | corporate | academic | workshop

   phases:
     current: 1
     completed: []
   ```

3. **Create progress.yaml:**
   ```yaml
   project:
     name: ""
     started: YYYY-MM-DD

   phases:
     import:
       status: pending
       started_at: null
       completed_at: null
       notes: []
     research:
       status: pending
     discovery:
       status: pending
     strategy:
       status: pending
     architecture:
       status: pending
     content:
       status: pending
     scripts:
       status: pending
     assessments:
       status: pending
     media:
       status: pending
     production:
       status: pending

   quality:
     scores: {}
     audits: []
   ```

4. **Begin Phase 1** with `/course-import`

### Resuming a Course

1. Check `progress.yaml` for current status
2. Review completed phase outputs
3. Continue with the appropriate phase skill

## Output Structure

```
<course-name>/
├── specs/
│   ├── course.yaml           # Master course specification
│   ├── progress.yaml         # Progress tracking
│   ├── research.yaml         # Research findings
│   ├── strategy.yaml         # Course strategy
│   ├── curriculum.yaml       # Curriculum architecture
│   ├── assessments.yaml      # Assessment specifications
│   ├── media.yaml            # Media production specs
│   ├── localization.yaml     # Multi-language specs
│   └── modules/
│       ├── module-01.yaml
│       └── module-02.yaml
├── content/
│   ├── scripts/
│   │   ├── module-01/
│   │   │   ├── lesson-01.md
│   │   │   └── lesson-02.md
│   │   └── module-02/
│   ├── lessons/
│   │   └── [lesson content files]
│   └── assessments/
│       ├── quizzes/
│       ├── projects/
│       └── rubrics/
├── assets/
│   ├── images/
│   ├── videos/
│   ├── audio/
│   └── downloads/
├── production/
│   ├── checklists/
│   ├── exports/
│   └── handoff/
└── .course-os/
    ├── imports/              # Imported source materials
    ├── research/             # Research outputs
    └── reviews/              # Quality reviews
```

## Instructional Design Frameworks

Course OS integrates these frameworks throughout:

### ADDIE (Process Structure)
- **Analysis** → Phases 1-3 (Import, Research, Discovery)
- **Design** → Phases 4-5 (Strategy, Architecture)
- **Development** → Phases 6-8 (Content, Scripts, Assessments)
- **Implementation** → Phase 9-10 (Media, Production)
- **Evaluation** → Built into quality gates

### Bloom's Taxonomy (Learning Objectives)
All learning outcomes must specify cognitive level:
1. Remember - recall facts
2. Understand - explain concepts
3. Apply - use in new situations
4. Analyze - break down components
5. Evaluate - justify decisions
6. Create - produce new work

### Gagné's 9 Events (Lesson Structure)
Each lesson should address:
1. Gain attention
2. State objectives
3. Recall prior learning
4. Present content
5. Provide guidance
6. Elicit performance
7. Provide feedback
8. Assess performance
9. Enhance retention/transfer

### Kirkpatrick (Evaluation)
Assessments mapped to:
- Level 1: Reaction (satisfaction)
- Level 2: Learning (knowledge)
- Level 3: Behavior (application)
- Level 4: Results (outcomes)

### Merrill's Principles (Content Design)
- Problem-centered learning
- Activation of prior knowledge
- Demonstration of skills
- Application of skills
- Integration into real-world

## Quality Gates

Each phase must pass quality validation before proceeding:

1. **Completeness check** - All required outputs present
2. **Framework alignment** - Meets instructional design standards
3. **Consistency check** - Aligns with previous phases
4. **Quality score** - Minimum threshold met

Override with justification if needed.

## Accessibility Standards

All content must meet:
- **WCAG 2.1 AA** - Technical accessibility
- **UDL Principles** - Universal Design for Learning
  - Multiple means of engagement
  - Multiple means of representation
  - Multiple means of action/expression

## Version Control

- Commit after each phase completion
- Tag releases: `git tag -a v0.1.0 -m "Phase 1 complete"`
- Use branches for major revisions
- Changelog updated automatically

## Phase Execution

When running `/course-os`:

1. **Check for existing project:**
   - If `course.yaml` exists → resume from current phase
   - If not → initialize new project

2. **Ask one question at a time** to gather requirements

3. **Execute each phase sequentially:**
   - Validate prerequisites
   - Run phase skill
   - Validate outputs
   - Update progress.yaml
   - Commit with git tag

4. **Generate production package** at completion

## Commands

- `/course-os` - Start or resume full course development
- `/course-os status` - Show current progress
- `/course-os validate` - Run quality checks
- `/course-os export [platform]` - Generate platform export

## Arguments

- `--resume` - Resume from last phase
- `--phase <n>` - Jump to specific phase
- `--course <path>` - Specify course directory
