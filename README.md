# Course OS

A comprehensive course development system for Claude Code. Design, plan, and produce professional educational content through a structured 10-phase workflow with built-in instructional design best practices.

## What is Course OS?

Course OS is the missing step between your course idea and production. It's a skill-based system that guides you through every phase of course development—from initial research to final production package—ensuring you create effective, well-structured educational content.

**Inspired by [Design OS](https://buildermethods.com/design-os)**, Course OS separates planning from production. Instead of jumping straight into recording, you'll have complete specifications, scripts, and a production roadmap before creating a single video.

## Features

- **10-Phase Structured Workflow** — Never miss a step in course development
- **Deep Research Agent** — Multi-pass research with knowledge mapping
- **Instructional Design Frameworks** — ADDIE, Bloom's Taxonomy, Gagné's 9 Events, Kirkpatrick, Merrill's Principles
- **Adaptive Script Generation** — Scripts formatted for video, screencast, slides, or live sessions
- **Progressive Disclosure** — Concise skills with detailed supporting documentation
- **Multi-Platform Export** — Teachable, Thinkific, SCORM, xAPI, and more
- **Built-in Accessibility** — WCAG 2.1 AA and Universal Design for Learning
- **Full Localization Support** — Multi-language course development
- **Quality Gates** — Validation at every phase
- **Progress Tracking** — Resume where you left off with git-based versioning

## The 10 Phases

| Phase | Skill | What You'll Create | ADDIE Stage |
|-------|-------|-------------------|-------------|
| 1 | `/course-import` | Source catalog from existing materials, URLs, knowledge | Analysis |
| 2 | `/course-research` | Knowledge map, concept synthesis, misconceptions | Analysis |
| 3 | `/course-discovery` | Learner personas, competitor analysis, positioning | Analysis |
| 4 | `/course-strategy` | Learning outcomes, format, success metrics | Design |
| 5 | `/course-architecture` | Module structure, lesson sequencing, learning paths | Design |
| 6 | `/course-content` | Lesson blueprints, examples, activities, resources | Development |
| 7 | `/course-scripts` | Production-ready scripts adapted to content type | Development |
| 8 | `/course-assessments` | Quizzes, projects, rubrics, certification criteria | Development |
| 9 | `/course-media` | Shot lists, graphics specs, accessibility requirements | Implementation |
| 10 | `/course-production` | Complete handoff package with platform exports | Implementation |

## Quick Start

### Option 1: Clone and Initialize

```bash
# Clone Course OS
git clone https://github.com/webmasterarbez/course-os.git my-courses
cd my-courses

# Start Claude Code
claude

# Run the master orchestrator
/course-os
```

Course OS will ask for your course name and initialize a project.

### Option 2: Install Scripts

```bash
# Install Course OS globally
curl -sSL https://raw.githubusercontent.com/webmasterarbez/course-os/main/scripts/base-install.sh | bash

# Navigate to your project and install
cd /path/to/your/project
~/course-os/scripts/project-install.sh
```

### Option 3: Manual Setup

```bash
# Clone into a specific course project
git clone https://github.com/webmasterarbez/course-os.git my-course-name
cd my-course-name

# Initialize manually
./templates/init-course.sh --here "My Course Name"

# Start development
claude
/course-os
```

## Usage

### Start or Resume Development

```bash
cd /path/to/your/course
claude
/course-os
```

Course OS reads `specs/progress.yaml` and continues where you left off.

### Jump to a Specific Phase

```
/course-import      # Phase 1: Import sources
/course-research    # Phase 2: Deep research
/course-discovery   # Phase 3: Audience analysis
/course-strategy    # Phase 4: Define outcomes
/course-architecture # Phase 5: Curriculum design
/course-content     # Phase 6: Lesson design
/course-scripts     # Phase 7: Write scripts
/course-assessments # Phase 8: Create assessments
/course-media       # Phase 9: Plan media
/course-production  # Phase 10: Generate package
```

### Check Progress

```
/course-os status
/course-os validate
```

## Skills Architecture

Course OS uses a **progressive disclosure** pattern. Each skill has:

1. **SKILL.md** — Concise instructions (60-100 lines)
2. **Supporting files** — Detailed schemas, templates, and guides

### Skill Structure

```
.claude/skills/
├── course-os/                    # Master orchestrator
│   ├── SKILL.md
│   ├── instructional-design-frameworks.md
│   └── project-structure.md
│
├── course-import/                # Phase 1
│   ├── SKILL.md
│   ├── catalog-schema.md
│   └── gaps-schema.md
│
├── course-research/              # Phase 2
│   ├── SKILL.md
│   ├── knowledge-map-schema.md
│   └── misconceptions-schema.md
│
├── course-discovery/             # Phase 3
│   ├── SKILL.md
│   ├── persona-schema.md
│   ├── competitor-schema.md
│   └── learner-journey-schema.md
│
├── course-strategy/              # Phase 4
│   ├── SKILL.md
│   ├── blooms-taxonomy.md
│   └── kirkpatrick-metrics.md
│
├── course-architecture/          # Phase 5
│   ├── SKILL.md
│   └── gagne-events.md
│
├── course-content/               # Phase 6
│   ├── SKILL.md
│   └── merrills-principles.md
│
├── course-scripts/               # Phase 7
│   ├── SKILL.md
│   └── script-templates.md
│
├── course-assessments/           # Phase 8
│   ├── SKILL.md
│   ├── quiz-design.md
│   ├── project-design.md
│   └── rubric-templates.md
│
├── course-media/                 # Phase 9
│   ├── SKILL.md
│   ├── shot-list-template.md
│   └── accessibility-checklist.md
│
└── course-production/            # Phase 10
    ├── SKILL.md
    ├── quality-audit.md
    └── export-formats.md
```

## Course Project Structure

When you initialize a course, this structure is created:

```
my-course/
├── specs/                    # YAML specifications
│   ├── course.yaml           # Master course spec
│   ├── progress.yaml         # Phase tracking
│   ├── outcomes.yaml         # Learning outcomes (Bloom's aligned)
│   ├── personas.yaml         # Learner personas
│   ├── positioning.yaml      # Market positioning
│   ├── learner-journey.yaml  # Journey map
│   ├── curriculum.yaml       # Curriculum architecture
│   ├── assessments.yaml      # Assessment strategy
│   ├── format.yaml           # Course format
│   ├── success-metrics.yaml  # Kirkpatrick metrics
│   └── modules/              # Per-module specs
│
├── content/                  # Markdown content
│   ├── scripts/              # Production scripts
│   ├── lessons/              # Lesson blueprints
│   ├── examples/             # Case studies
│   ├── activities/           # Exercises
│   ├── assessments/          # Quiz/project content
│   │   ├── quizzes/
│   │   ├── projects/
│   │   └── rubrics/
│   └── resources/            # Curated resources
│
├── assets/                   # Media files
│   ├── images/
│   ├── videos/
│   ├── audio/
│   └── downloads/
│
├── production/               # Production materials
│   ├── shot-lists/
│   ├── graphics/
│   ├── checklists/
│   ├── handoff/
│   └── exports/              # Platform exports
│       ├── universal/
│       ├── teachable/
│       ├── thinkific/
│       ├── scorm/
│       └── xapi/
│
└── .course-os/               # Working files
    ├── imports/              # Imported sources
    │   ├── catalog.yaml
    │   ├── gaps.yaml
    │   └── summaries/
    ├── research/             # Research outputs
    │   ├── pass-1-landscape.md
    │   ├── pass-2-deepdive.md
    │   ├── pass-3-gaps.md
    │   ├── synthesis.md
    │   ├── knowledge-map.yaml
    │   └── misconceptions.yaml
    └── reviews/              # Quality reviews
```

## Instructional Design Frameworks

Course OS integrates five proven instructional design methodologies:

### ADDIE Model

The 10 phases map directly to ADDIE:

| ADDIE Stage | Course OS Phases | Purpose |
|-------------|------------------|---------|
| **Analysis** | 1-3 (Import, Research, Discovery) | Understand topic and audience |
| **Design** | 4-5 (Strategy, Architecture) | Plan outcomes and structure |
| **Development** | 6-8 (Content, Scripts, Assessments) | Create materials |
| **Implementation** | 9-10 (Media, Production) | Prepare for delivery |
| **Evaluation** | Quality gates at each phase | Ensure effectiveness |

### Bloom's Taxonomy

All learning outcomes specify cognitive level:

| Level | Description | Action Verbs |
|-------|-------------|--------------|
| **Create** | Produce new work | Design, construct, develop |
| **Evaluate** | Justify decisions | Judge, critique, assess |
| **Analyze** | Break down components | Compare, contrast, examine |
| **Apply** | Use in new situations | Implement, execute, demonstrate |
| **Understand** | Explain concepts | Explain, describe, summarize |
| **Remember** | Recall facts | Recall, list, define |

### Gagné's 9 Events of Instruction

Every lesson blueprint addresses:

1. **Gain attention** — Hook or opening question
2. **State objectives** — Clear learning goals
3. **Recall prior learning** — Connect to existing knowledge
4. **Present content** — Core instruction
5. **Provide guidance** — Tips and strategies
6. **Elicit performance** — Practice activities
7. **Provide feedback** — Immediate corrections
8. **Assess performance** — Verify learning
9. **Enhance retention** — Transfer to real-world

### Kirkpatrick's 4 Levels of Evaluation

Assessments map to evaluation levels:

| Level | Focus | Assessment Types |
|-------|-------|------------------|
| **Level 1: Reaction** | Satisfaction | Surveys, feedback forms |
| **Level 2: Learning** | Knowledge gain | Quizzes, tests, demonstrations |
| **Level 3: Behavior** | Application | Projects, portfolios, peer review |
| **Level 4: Results** | Outcomes | Follow-up surveys, metrics |

### Merrill's First Principles

Content design follows:

- **Problem-centered** — Start with real-world problems
- **Activation** — Connect to prior knowledge
- **Demonstration** — Show, don't just tell
- **Application** — Practice with feedback
- **Integration** — Transfer to real life

## Supported Course Types

Course OS adapts to any course format:

| Format | Description |
|--------|-------------|
| **Self-paced** | Async video courses (Teachable, Thinkific, Kajabi) |
| **Cohort-based** | Live sessions + async content |
| **Corporate training** | SCORM/xAPI for enterprise LMS |
| **Academic** | Semester-based, accredited programs |
| **Workshop** | Intensive 1-3 day programs |
| **Hybrid** | Mix of live and recorded |

## Platform Exports

Phase 10 generates exports for:

| Platform | Format | Notes |
|----------|--------|-------|
| **Universal** | Markdown + YAML | Works anywhere |
| **Teachable** | Platform import | Sections, lessons, quizzes |
| **Thinkific** | Platform import | Chapters, content |
| **SCORM 1.2/2004** | LMS standard | Tracking, completion |
| **xAPI (Tin Can)** | Learning analytics | Experience statements |
| **Localization** | Translation packages | Multi-language support |

## Progress Tracking

Course OS tracks progress in `specs/progress.yaml` and uses git tags:

```bash
# Phase completion tags
phase-1-import
phase-2-research
phase-3-discovery
phase-4-strategy
phase-5-architecture
phase-6-content
phase-7-scripts
phase-8-assessments
phase-9-media
phase-10-production

# Version tags
v1.0.0  # Course complete
```

Resume any time by running `/course-os` — it reads your progress and continues where you left off.

## Accessibility Standards

Course OS enforces accessibility throughout:

### WCAG 2.1 AA Compliance

- Color contrast requirements (4.5:1 minimum)
- Keyboard navigation specs
- Screen reader compatibility
- Caption and transcript requirements
- No flashing content

### Universal Design for Learning (UDL)

- **Multiple means of engagement** — Varied content types
- **Multiple means of representation** — Video + text + audio
- **Multiple means of expression** — Different assessment types

## Example Workflow

```
$ git clone https://github.com/webmasterarbez/course-os.git my-courses
$ cd my-courses
$ claude

You: /course-os

Course OS: What is the name of your course?

You: Building SaaS Products

Course OS: Initializing course project...
           ✓ Created specs/, content/, assets/, production/
           ✓ Initialized progress tracking

           Starting Phase 1: Source Collection & Import

           Do you have any existing course content to import?
           (Previous versions, outlines, scripts, videos, slides)

You: Yes, I have a slide deck and some blog posts...

[Continues through all 10 phases with one question at a time]
```

## Requirements

- **Claude Code CLI** — The Claude Code command-line interface
- **Git** — For version control and progress tracking
- **Bash** — For initialization scripts (Windows: use WSL or Git Bash)

## File Structure

```
course-os/
├── .claude/skills/           # 11 skills with supporting files (32 total)
├── scripts/
│   ├── base-install.sh       # Global installation
│   └── project-install.sh    # Per-project installation
├── templates/
│   └── init-course.sh        # Course initialization
├── schemas/                  # YAML schemas
├── CLAUDE.md                 # Claude Code guidance
└── README.md
```

## Contributing

Course OS is extensible:

1. **Add new skills** in `.claude/skills/<skill-name>/SKILL.md`
2. **Add supporting files** with intention-revealing names (e.g., `schema-name.md`)
3. **Add templates** in `templates/`
4. **Add schemas** in `schemas/`
5. Follow the YAML + Markdown pattern for outputs
6. Maintain framework alignment (ADDIE, Bloom's, Gagné, Kirkpatrick, Merrill)
7. Keep SKILL.md files concise (<100 lines), use progressive disclosure

## License

MIT

## Credits

- Inspired by [Design OS](https://buildermethods.com/design-os) by Brian Casel
- Built with [Claude Code](https://claude.ai/code)
- Instructional design frameworks: ADDIE, Bloom's Taxonomy, Gagné's 9 Events, Kirkpatrick Model, Merrill's First Principles

---

**Ready to create your course?**

```bash
git clone https://github.com/webmasterarbez/course-os.git my-course
cd my-course
claude
```

Then run `/course-os` and let's build something great.
