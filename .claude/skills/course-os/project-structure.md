# Course Project Structure

```
<course-name>/
├── specs/                    # YAML specifications
│   ├── course.yaml           # Master course specification
│   ├── progress.yaml         # Phase tracking
│   ├── outcomes.yaml         # Learning outcomes
│   ├── personas.yaml         # Learner personas
│   ├── curriculum.yaml       # Curriculum architecture
│   ├── assessments.yaml      # Assessment specifications
│   └── modules/              # Per-module specs
│
├── content/                  # Markdown content
│   ├── scripts/              # Production scripts
│   ├── lessons/              # Lesson blueprints
│   ├── assessments/          # Quizzes, projects, rubrics
│   ├── examples/             # Case studies
│   ├── activities/           # Exercises
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
│   ├── checklists/
│   ├── handoff/
│   └── exports/
│
└── .course-os/               # Working files
    ├── imports/              # Imported source materials
    ├── research/             # Research outputs
    └── reviews/              # Quality reviews
```

## Version Control

- Commit after each phase completion
- Tag releases: `phase-1-import`, `phase-2-research`, etc.
- Final release: `v1.0.0`

## Quality Gates

Each phase must pass validation before proceeding:

1. **Completeness check** - All required outputs present
2. **Framework alignment** - Meets instructional design standards
3. **Consistency check** - Aligns with previous phases
4. **Quality score** - Minimum threshold met
