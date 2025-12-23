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
- **Smart Templates** — AI-generated structure based on your research, not rigid templates
- **Multi-Platform Export** — Teachable, Thinkific, SCORM, xAPI, and more
- **Built-in Accessibility** — WCAG 2.1 AA and Universal Design for Learning
- **Full Localization Support** — Multi-language course development
- **Quality Gates** — Validation at every phase
- **Progress Tracking** — Resume where you left off with git-based versioning

## The 10 Phases

| Phase | Skill | What You'll Create |
|-------|-------|-------------------|
| 1 | `/course-import` | Source catalog from existing materials, URLs, knowledge |
| 2 | `/course-research` | Knowledge map, concept synthesis, misconceptions |
| 3 | `/course-discovery` | Learner personas, competitor analysis, positioning |
| 4 | `/course-strategy` | Learning outcomes, format, success metrics |
| 5 | `/course-architecture` | Module structure, lesson sequencing, learning paths |
| 6 | `/course-content` | Lesson blueprints, examples, activities, resources |
| 7 | `/course-scripts` | Production-ready scripts adapted to content type |
| 8 | `/course-assessments` | Quizzes, projects, rubrics, certification criteria |
| 9 | `/course-media` | Shot lists, graphics specs, accessibility requirements |
| 10 | `/course-production` | Complete handoff package with platform exports |

## Installation

### Step 1: Base Install

Install Course OS to your home directory (one-time setup):

```bash
curl -sSL https://raw.githubusercontent.com/webmasterarbez/course-os/main/scripts/base-install.sh | bash
```

This creates `~/course-os` with all skills, templates, and scripts.

**Windows Users:** Use WSL or Git Bash.

### Step 2: Project Install

Navigate to any project directory and run:

```bash
cd /path/to/your/project
~/course-os/scripts/project-install.sh
```

You'll be prompted for your course name. The installer will:
- Create the course directory structure
- Initialize specs and progress tracking
- Install all 11 Course OS skills

### Step 3: Start Development

```bash
claude
/course-os
```

Course OS will guide you through the 10-phase workflow.

## Quick Start (Alternative)

If you prefer to clone directly:

```bash
git clone https://github.com/webmasterarbez/course-os.git my-course
cd my-course
claude
/course-os
```

## Usage

### Resume Anytime

```bash
cd /path/to/your/course
claude
/course-os
```

Course OS reads your progress and continues where you left off.

### Jump to a Specific Phase

```
/course-import      # Phase 1: Import sources
/course-research    # Phase 2: Deep research
/course-strategy    # Phase 4: Define outcomes
```

### Installation Options

```bash
# Specify course name directly
~/course-os/scripts/project-install.sh --name "My Course"

# Preview without installing
~/course-os/scripts/project-install.sh --dry-run

# Verbose output
~/course-os/scripts/project-install.sh --verbose
```

## Course Project Structure

When you create a course, Course OS generates this structure:

```
my-course/
├── specs/                    # YAML specifications
│   ├── course.yaml           # Master course spec
│   ├── progress.yaml         # Phase tracking
│   ├── outcomes.yaml         # Learning outcomes
│   ├── personas.yaml         # Learner personas
│   ├── curriculum.yaml       # Curriculum architecture
│   ├── assessments.yaml      # Assessment strategy
│   └── modules/              # Per-module specs
│
├── content/                  # Markdown content
│   ├── scripts/              # Production scripts
│   │   ├── module-01/
│   │   └── module-02/
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
│       ├── scorm/
│       └── xapi/
│
└── .course-os/               # Working files
    ├── imports/              # Imported sources
    ├── research/             # Research outputs
    └── reviews/              # Quality reviews
```

## Instructional Design Frameworks

Course OS integrates proven instructional design methodologies:

### ADDIE Model
The 10 phases map to ADDIE:
- **Analysis** → Phases 1-3 (Import, Research, Discovery)
- **Design** → Phases 4-5 (Strategy, Architecture)
- **Development** → Phases 6-8 (Content, Scripts, Assessments)
- **Implementation** → Phases 9-10 (Media, Production)
- **Evaluation** → Quality gates throughout

### Bloom's Taxonomy
All learning outcomes specify cognitive level:
```
Remember → Understand → Apply → Analyze → Evaluate → Create
```

### Gagné's 9 Events of Instruction
Every lesson blueprint includes:
1. Gain attention
2. State objectives
3. Recall prior learning
4. Present content
5. Provide guidance
6. Elicit performance
7. Provide feedback
8. Assess performance
9. Enhance retention/transfer

### Kirkpatrick's 4 Levels
Assessments map to evaluation levels:
- **Level 1: Reaction** — Satisfaction surveys
- **Level 2: Learning** — Knowledge checks, quizzes
- **Level 3: Behavior** — Application projects
- **Level 4: Results** — Outcome metrics

### Merrill's First Principles
Content design follows:
- Problem-centered learning
- Activation of prior knowledge
- Demonstration of skills
- Application of skills
- Integration into real-world

## Supported Course Types

Course OS adapts to any course format:

- **Self-paced online courses** (Teachable, Thinkific, Kajabi)
- **Cohort-based courses** (live sessions + async content)
- **Corporate training** (SCORM/xAPI for LMS)
- **Academic courses** (semester-based, accredited)
- **Workshops and bootcamps**
- **Hybrid programs**

## Platform Exports

Phase 10 generates exports for:

| Platform | Format |
|----------|--------|
| Universal | Markdown + YAML |
| Teachable | Platform-specific import |
| Thinkific | Platform-specific import |
| SCORM 1.2/2004 | LMS standard |
| xAPI (Tin Can) | Learning analytics |
| Localization | Translation-ready packages |

## Skills Reference

### Master Skill

| Skill | Description |
|-------|-------------|
| `/course-os` | Full course development workflow |
| `/course-os status` | Show current progress |
| `/course-os validate` | Run quality checks |

### Phase Skills

| Skill | Phase | Description |
|-------|-------|-------------|
| `/course-import` | 1 | Import existing materials, URLs, sources |
| `/course-research` | 2 | Deep multi-pass topic research |
| `/course-discovery` | 3 | Audience personas, market analysis |
| `/course-strategy` | 4 | Outcomes, format, success metrics |
| `/course-architecture` | 5 | Curriculum structure, learning paths |
| `/course-content` | 6 | Lesson blueprints, activities |
| `/course-scripts` | 7 | Production scripts by content type |
| `/course-assessments` | 8 | Quizzes, projects, rubrics |
| `/course-media` | 9 | Shot lists, asset specifications |
| `/course-production` | 10 | Handoff package, exports |

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

## Accessibility

Course OS enforces accessibility standards:

### WCAG 2.1 AA
- Color contrast requirements
- Keyboard navigation specs
- Screen reader compatibility
- Caption and transcript requirements

### Universal Design for Learning (UDL)
- Multiple means of engagement
- Multiple means of representation
- Multiple means of action/expression

## Example Workflow

```
# Step 1: Clone and start
$ git clone https://github.com/webmasterarbez/course-os.git my-courses
$ cd my-courses
$ claude

You: /course-os

Course OS: No specs/course.yaml found. This is a fresh Course OS installation.

           What is the name of your course?

You: building-saas

Course OS: Creating course project...
           [runs ./templates/init-course.sh building-saas]

           Course project created: building-saas/

           To start development:
             cd building-saas
             claude
             /course-os

# Step 2: Enter the course project
$ cd building-saas
$ claude

You: /course-os

Course OS: Found existing course: building-saas
           Current phase: 1 (Source Collection & Import)

           Starting Phase 1...

           Do you have any existing course content to import?
           (Previous versions, outlines, scripts, videos, slides)

You: Yes, I have a slide deck and some blog posts

Course OS: Please provide the paths or URLs to these materials...

[Continues through all 10 phases with one question at a time]
```

## Requirements

- Claude Code CLI
- Git (for version control and progress tracking)

## File Structure

```
~/course-os/                  # Base installation
├── .claude/skills/           # Skill definitions (11 skills)
│   ├── course-os/            # Master orchestrator
│   ├── course-import/        # Phase 1
│   ├── course-research/      # Phase 2
│   ├── course-discovery/     # Phase 3
│   ├── course-strategy/      # Phase 4
│   ├── course-architecture/  # Phase 5
│   ├── course-content/       # Phase 6
│   ├── course-scripts/       # Phase 7
│   ├── course-assessments/   # Phase 8
│   ├── course-media/         # Phase 9
│   └── course-production/    # Phase 10
├── scripts/                  # Installation scripts
│   ├── base-install.sh       # Global installation
│   └── project-install.sh    # Per-project installation
├── templates/                # Project templates
│   └── init-course.sh        # Legacy init script
├── schemas/                  # YAML schemas
├── CLAUDE.md                 # Claude Code guidance
└── README.md                 # This file
```

## Contributing

Course OS is extensible:

1. **Add new skills** in `.claude/skills/<skill-name>/SKILL.md`
2. **Add templates** in `templates/`
3. **Add schemas** in `schemas/`
4. Follow the YAML + Markdown pattern for outputs
5. Maintain framework alignment (ADDIE, Bloom's, etc.)

## License

MIT

## Credits

- Inspired by [Design OS](https://buildermethods.com/design-os) by Brian Casel
- Built with [Claude Code](https://claude.ai/code)
- Instructional design frameworks: ADDIE, Bloom's Taxonomy, Gagné's 9 Events, Kirkpatrick Model, Merrill's First Principles

---

**Ready to create your course?**

```bash
curl -sSL https://raw.githubusercontent.com/webmasterarbez/course-os/main/scripts/base-install.sh | bash
cd /path/to/your/project
~/course-os/scripts/project-install.sh
claude
```

Then run `/course-os` and let's build something great.
