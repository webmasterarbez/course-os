# Course OS Refactoring Strategy

> Comprehensive analysis comparing Course OS against Agent OS and Design OS, with detailed recommendations for architectural improvements.

## Executive Summary

After analyzing Agent OS, Design OS, and Course OS architectures, I've identified **6 key areas** where Course OS can be improved by adopting patterns from the Builder Methods ecosystem:

1. **Configuration-Driven Architecture** - Add profile system for course types
2. **Three-Layer Context System** - Separate standards from project-specific context
3. **Streamlined Skill Structure** - Reduce 32 supporting files to consolidated references
4. **Unified Commands System** - Add reusable commands alongside skills
5. **Export-First Design** - Make handoff packages central to the workflow
6. **Progressive Disclosure Improvements** - Better information architecture

---

## Part 1: Comparative Analysis

### Agent OS Architecture

```
agent-os/
├── config.yml                    # Global configuration
├── profiles/
│   └── default/
│       ├── agents/               # Agent definitions
│       ├── commands/             # Slash commands
│       │   ├── create-tasks/
│       │   ├── implement-tasks/
│       │   ├── plan-product/
│       │   ├── shape-spec/
│       │   └── write-spec/
│       ├── standards/            # Domain-specific standards
│       │   ├── backend/
│       │   ├── frontend/
│       │   ├── global/
│       │   └── testing/
│       ├── workflows/            # Workflow definitions
│       │   ├── implementation/
│       │   ├── planning/
│       │   └── specification/
│       └── claude-code-skill-template.md
└── scripts/                      # Installation/setup scripts
```

**Key Patterns:**
- **Three-Layer Context**: Standards (how you build) → Product (what you build) → Specs (specific features)
- **Profile-Based Configuration**: Switchable profiles for different project types
- **Separation of Concerns**: Commands, standards, and workflows are distinct concepts
- **Configuration-Driven**: `config.yml` controls installation behavior

### Design OS Architecture

```
design-os/
├── .claude/
│   ├── commands/
│   └── skills/
├── src/                          # Application source
├── docs/
├── agents.md                     # Agent workflow docs
└── claude.md                     # Claude integration
```

**Key Patterns:**
- **Four Pillars**: Product Overview → Data Model → Design System → Application Shell
- **Export-First**: Every workflow produces handoff packages
- **7-Step Sequential Process**: Clear, linear workflow
- **Props-Based Components**: Independent, portable exports

### Current Course OS Architecture

```
course-os/
├── .claude/skills/
│   ├── course-os/                # Master orchestrator (3 files)
│   ├── course-import/            # Phase 1 (3 files)
│   ├── course-research/          # Phase 2 (3 files)
│   ├── course-discovery/         # Phase 3 (4 files)
│   ├── course-strategy/          # Phase 4 (3 files)
│   ├── course-architecture/      # Phase 5 (2 files)
│   ├── course-content/           # Phase 6 (2 files)
│   ├── course-scripts/           # Phase 7 (2 files)
│   ├── course-assessments/       # Phase 8 (4 files)
│   ├── course-media/             # Phase 9 (3 files)
│   └── course-production/        # Phase 10 (3 files)
├── templates/
├── schemas/
└── CLAUDE.md
```

**Current Patterns:**
- Single monolithic skill structure
- 32 supporting reference files scattered across skill directories
- No configuration system
- No separation of standards from workflow
- Phase-based workflow with prerequisites

---

## Part 2: Gap Analysis

| Feature | Agent OS | Design OS | Course OS | Gap |
|---------|----------|-----------|-----------|-----|
| Configuration System | ✅ config.yml + profiles | ❌ | ❌ | **Critical** |
| Context Layering | ✅ Standards/Product/Specs | ✅ Four Pillars | ❌ | **High** |
| Commands System | ✅ Dedicated directory | ✅ .claude/commands | ❌ | **Medium** |
| Export Packages | ✅ | ✅ Core feature | ⚠️ Phase 10 only | **High** |
| Skill Templates | ✅ Template file | ❌ | ❌ | **Medium** |
| Progressive Disclosure | ✅ Simple skills + refs | ✅ Minimal | ⚠️ 32 files | **High** |
| Profile Switching | ✅ Multiple profiles | ❌ | ❌ | **Medium** |
| Workflow Separation | ✅ workflows/ directory | ✅ agents.md | ⚠️ Mixed in skills | **Medium** |

---

## Part 3: Recommended Changes

### Change 1: Configuration-Driven Architecture

**Current State:** No configuration system; all behavior hardcoded.

**Proposed:**
```yaml
# config.yml
version: "1.0"
profile: default  # or: intensive, mini, workshop

profiles:
  default:
    phases: all
    depth: comprehensive
    exports: [universal, teachable, thinkific]

  mini:
    phases: [1, 2, 4, 5, 6, 7, 10]  # Skip deep research phases
    depth: condensed
    exports: [universal]

  workshop:
    phases: [4, 5, 6, 8, 10]  # Strategy → Production focus
    depth: minimal
    exports: [slides, facilitation]

settings:
  ask_one_question: true
  auto_git_commit: true
  quality_gates: strict  # strict | relaxed | none
  framework_hints: true  # Show Bloom's/Gagné references
```

**Why Better:**
- Different course types (full course, mini-course, workshop) need different workflows
- Users can customize without modifying skills
- Matches Agent OS's proven profile pattern

---

### Change 2: Three-Layer Context System

**Current State:** Everything mixed in skill files.

**Proposed Directory Structure:**
```
.claude/
├── standards/                     # LAYER 1: Instructional design frameworks (static)
│   ├── blooms-taxonomy.md
│   ├── gagnes-events.md
│   ├── kirkpatrick-metrics.md
│   ├── merrills-principles.md
│   └── addie-framework.md
│
├── product/                       # LAYER 2: Course-specific context (per project)
│   ├── course-type.md            # Full/mini/workshop
│   ├── audience.md               # Target learner profile
│   └── constraints.md            # Platform, timeline, budget
│
└── skills/                        # LAYER 3: Phase workflows (execution)
    ├── course-os/
    ├── course-import/
    └── ...
```

**Why Better:**
- **Standards layer** is universal, shareable across projects
- **Product layer** captures project-specific decisions
- **Skills layer** focuses purely on execution
- Matches Agent OS's Standards → Product → Specs pattern

---

### Change 3: Streamlined Skill Structure

**Current State:** 11 skills with 32 supporting files (avg 2.9 files/skill).

**Proposed:** Consolidate to single-file skills with embedded references.

**Before (course-strategy/):**
```
course-strategy/
├── SKILL.md           # Main workflow
├── blooms-taxonomy.md # Reference
└── kirkpatrick-metrics.md # Reference
```

**After (course-strategy/):**
```
course-strategy/
└── SKILL.md           # Self-contained skill with inline references
```

**New SKILL.md Structure:**
```markdown
---
name: course-strategy
description: Phase 4 - Define strategy, outcomes, format, and metrics
prerequisites: [course-discovery]
outputs: [specs/strategy.yaml, specs/outcomes.yaml, specs/format.yaml]
frameworks: [blooms-taxonomy, kirkpatrick-metrics]
---

# Phase 4: Course Strategy

[Core workflow content]

---

## Reference: Bloom's Taxonomy

[Condensed inline reference - 20 lines max]
See `.claude/standards/blooms-taxonomy.md` for full details.

---

## Reference: Kirkpatrick Metrics

[Condensed inline reference - 20 lines max]
See `.claude/standards/kirkpatrick-metrics.md` for full details.
```

**Why Better:**
- Skills are self-contained and scannable
- Full references available in standards/ when needed
- Reduces cognitive load during execution
- Matches Agent OS's template-based approach

---

### Change 4: Unified Commands System

**Current State:** Only skills; no reusable commands.

**Proposed:** Add commands for common operations.

```
.claude/
├── commands/
│   ├── course/
│   │   ├── init.md              # Initialize project
│   │   ├── status.md            # Show progress
│   │   ├── validate.md          # Run quality checks
│   │   └── export.md            # Generate export package
│   │
│   └── phase/
│       ├── skip.md              # Skip current phase
│       ├── redo.md              # Redo completed phase
│       └── complete.md          # Force-complete phase
│
└── skills/                       # Full phase workflows
```

**Usage:**
```
/course init "My Course Name"    # Quick init
/course status                   # Show progress
/course validate                 # Quality checks
/course export teachable         # Export for platform
/phase skip                      # Skip current phase
/phase redo 3                    # Redo phase 3
```

**Why Better:**
- Commands are lightweight, quick operations
- Skills are comprehensive workflows
- Matches Agent OS command patterns (create-tasks, implement-tasks, etc.)
- Better UX for common operations

---

### Change 5: Export-First Design

**Current State:** Exports only in Phase 10.

**Proposed:** Build export artifacts incrementally throughout phases.

**New Export Structure:**
```
production/
├── handoff/
│   ├── phase-1-sources.yaml     # Built in Phase 1
│   ├── phase-3-audience.yaml    # Built in Phase 3
│   ├── phase-4-strategy.yaml    # Built in Phase 4
│   ├── phase-5-curriculum.yaml  # Built in Phase 5
│   └── master-handoff.yaml      # Aggregated in Phase 10
│
├── exports/
│   ├── universal/               # Always generated
│   ├── teachable/               # Platform-specific
│   └── scorm/                   # LMS format
│
└── checklists/
    ├── phase-gates/             # Quality gates per phase
    └── final-audit/             # Phase 10 audit
```

**New Skill Additions:**
Each phase skill includes an "Export Artifacts" section:
```markdown
## Export Artifacts

After completing this phase, the following are automatically added to `production/handoff/`:
- `phase-4-strategy.yaml`: Transformation promise, outcomes summary
- `phase-4-decisions.md`: Key decisions log with rationale
```

**Why Better:**
- Produces deliverables throughout, not just at the end
- Enables early stakeholder review
- Matches Design OS's export-first philosophy
- Reduces Phase 10 complexity

---

### Change 6: Progressive Disclosure Improvements

**Current State:**
- Verbose skills with mixed instructions and references
- 32 files to navigate

**Proposed:** Three-tier disclosure system.

**Tier 1: Quick Reference Card** (new file per skill)
```markdown
# Phase 4: Quick Reference

## Key Questions
1. Before state? → After state? → Transformation promise?
2. What outcomes? → Which Bloom's level? → How assessed?
3. Format? → Delivery? → Duration?

## Outputs
- specs/strategy.yaml
- specs/outcomes.yaml
- specs/format.yaml

## Quality Gate
□ Transformation clear □ Outcomes SMART □ Metrics defined
```

**Tier 2: SKILL.md** (current files, streamlined)
```markdown
# Phase 4: Course Strategy

[Full workflow with inline condensed references]
```

**Tier 3: Standards Library** (shared, detailed)
```markdown
# Bloom's Taxonomy - Complete Reference

[Full academic reference with examples, verb lists, etc.]
```

**Implementation:**
```
.claude/
├── quickref/                    # Tier 1: Quick reference cards
│   ├── phase-1.md
│   ├── phase-2.md
│   └── ...
│
├── skills/                      # Tier 2: Full workflows
│   └── course-strategy/SKILL.md
│
└── standards/                   # Tier 3: Deep references
    └── blooms-taxonomy.md
```

**Why Better:**
- Quick cards for experienced users
- Full skills for guided execution
- Standards for deep dives
- Information at the right depth

---

## Part 4: Implementation Plan

### Phase A: Foundation (Weeks 1-2)

**A1. Add Configuration System**
```
New files:
- config.yml
- templates/config-default.yml
- templates/config-mini.yml
- templates/config-workshop.yml

Modify:
- templates/init-course.sh (read config)
- .claude/skills/course-os/SKILL.md (respect config)
```

**A2. Create Standards Layer**
```
New directory: .claude/standards/

Move and consolidate:
- blooms-taxonomy.md (from course-strategy/)
- kirkpatrick-metrics.md (from course-strategy/)
- gagne-events.md (from course-architecture/)
- merrills-principles.md (from course-content/)
- addie-framework.md (new, from course-os/instructional-design-frameworks.md)
```

**A3. Create Commands System**
```
New directory: .claude/commands/course/

New files:
- init.md
- status.md
- validate.md
- export.md
```

### Phase B: Skill Refactoring (Weeks 3-4)

**B1. Consolidate Skill Files**

For each of 11 skills:
1. Merge supporting references into SKILL.md as condensed inline sections
2. Add `frameworks:` field to frontmatter linking to standards
3. Add `outputs:` field to frontmatter
4. Add "Export Artifacts" section
5. Remove redundant supporting files

**B2. Create Quick Reference Cards**
```
New directory: .claude/quickref/

New files (10):
- phase-1.md through phase-10.md
```

### Phase C: Export Improvements (Week 5)

**C1. Update Export Structure**
```
Modify templates/init-course.sh:
- Add production/handoff/ directories
- Add production/checklists/phase-gates/

Add to each skill:
- Export artifact generation step
- Phase gate checklist update
```

**C2. Add Incremental Export Logic**

Each phase updates:
- `production/handoff/phase-N-*.yaml`
- `production/checklists/phase-gates/phase-N.md`

### Phase D: Testing & Documentation (Week 6)

**D1. Test All Profiles**
- Run full workflow with default profile
- Run condensed workflow with mini profile
- Run focused workflow with workshop profile

**D2. Update Documentation**
- Update CLAUDE.md with new architecture
- Update README.md with new commands
- Create migration guide for existing projects

---

## Part 5: File Changes Summary

### New Files (22)

```
config.yml
templates/config-default.yml
templates/config-mini.yml
templates/config-workshop.yml

.claude/standards/blooms-taxonomy.md
.claude/standards/gagne-events.md
.claude/standards/kirkpatrick-metrics.md
.claude/standards/merrills-principles.md
.claude/standards/addie-framework.md

.claude/commands/course/init.md
.claude/commands/course/status.md
.claude/commands/course/validate.md
.claude/commands/course/export.md
.claude/commands/phase/skip.md
.claude/commands/phase/redo.md
.claude/commands/phase/complete.md

.claude/quickref/phase-1.md
.claude/quickref/phase-2.md
... (10 files)
```

### Modified Files (11)

```
.claude/skills/course-os/SKILL.md
.claude/skills/course-import/SKILL.md
.claude/skills/course-research/SKILL.md
.claude/skills/course-discovery/SKILL.md
.claude/skills/course-strategy/SKILL.md
.claude/skills/course-architecture/SKILL.md
.claude/skills/course-content/SKILL.md
.claude/skills/course-scripts/SKILL.md
.claude/skills/course-assessments/SKILL.md
.claude/skills/course-media/SKILL.md
.claude/skills/course-production/SKILL.md
```

### Deleted Files (21)

All supporting reference files currently in skill directories:
```
.claude/skills/course-import/catalog-schema.md
.claude/skills/course-import/gaps-schema.md
.claude/skills/course-research/knowledge-map-schema.md
.claude/skills/course-research/misconceptions-schema.md
.claude/skills/course-discovery/persona-schema.md
.claude/skills/course-discovery/competitor-schema.md
.claude/skills/course-discovery/learner-journey-schema.md
.claude/skills/course-strategy/blooms-taxonomy.md (moved)
.claude/skills/course-strategy/kirkpatrick-metrics.md (moved)
.claude/skills/course-architecture/gagne-events.md (moved)
.claude/skills/course-content/merrills-principles.md (moved)
.claude/skills/course-scripts/script-templates.md
.claude/skills/course-assessments/quiz-design.md
.claude/skills/course-assessments/project-design.md
.claude/skills/course-assessments/rubric-templates.md
.claude/skills/course-media/shot-list-template.md
.claude/skills/course-media/accessibility-checklist.md
.claude/skills/course-production/quality-audit.md
.claude/skills/course-production/export-formats.md
.claude/skills/course-os/instructional-design-frameworks.md (split)
.claude/skills/course-os/project-structure.md (moved to docs/)
```

---

## Part 6: Why This Is Better

### 1. **Reduced Cognitive Load**
- From 32 scattered files to organized layers
- Quick reference cards for experienced users
- Full references available when needed

### 2. **Flexibility Through Configuration**
- One codebase supports multiple course types
- Users customize without modifying skills
- Easy to add new profiles

### 3. **Better Separation of Concerns**
- Standards (universal) vs. Product (project-specific) vs. Skills (execution)
- Commands (quick operations) vs. Skills (full workflows)
- Cleaner mental model

### 4. **Earlier Deliverables**
- Export artifacts built incrementally
- Stakeholders can review throughout
- Less pressure on final phase

### 5. **Alignment with Proven Patterns**
- Agent OS profile system: battle-tested in 3000+ projects
- Design OS export-first: proven in design workflows
- Both are open-source, community-validated

### 6. **Maintainability**
- Standards library is centralized, easier to update
- Skills reference standards, don't duplicate
- Commands are composable

---

## Appendix: Example Refactored Skill

**Before (3 files):**
```
course-strategy/
├── SKILL.md (92 lines)
├── blooms-taxonomy.md (150 lines)
└── kirkpatrick-metrics.md (120 lines)
```

**After (1 file):**
```yaml
---
name: course-strategy
description: Phase 4 - Define strategy, outcomes, format, and metrics
prerequisites: [course-discovery]
outputs: [specs/strategy.yaml, specs/outcomes.yaml, specs/format.yaml]
frameworks: [blooms-taxonomy, kirkpatrick-metrics]
exports: [phase-4-strategy.yaml, phase-4-decisions.md]
---

# Phase 4: Course Strategy

Define the course vision, learning outcomes, format, and success metrics.

## Prerequisites

- Phase 3 complete
- `specs/personas.yaml` exists
- `specs/positioning.yaml` exists

## Process

### Step 1: Define Transformation Promise

Ask ONE at a time:

1. **"Describe the learner's situation BEFORE this course."**
2. **"Describe their situation AFTER completing it."**
3. **"In one sentence, what transformation does this course deliver?"**
4. **"What is your unique thesis, framework, or approach?"**

### Step 2: Define Learning Outcomes

Create `specs/outcomes.yaml` with Bloom's-aligned outcomes.

**Quick Reference - Bloom's Levels:**
| Level | Verbs | Example |
|-------|-------|---------|
| Create | design, build, develop | Design a REST API |
| Evaluate | assess, critique, justify | Evaluate security tradeoffs |
| Analyze | compare, organize, deconstruct | Analyze performance bottlenecks |
| Apply | implement, execute, use | Implement authentication |
| Understand | explain, summarize, classify | Explain OAuth flow |
| Remember | list, recall, define | List HTTP methods |

→ Full reference: `.claude/standards/blooms-taxonomy.md`

### Step 3: Choose Course Format

Create `specs/format.yaml`:
- Type: self-paced | cohort | live | hybrid
- Delivery: video | text | audio | interactive
- Structure: modules, lessons, duration

### Step 4: Establish Success Metrics

Create `specs/success-metrics.yaml` using Kirkpatrick's 4 Levels.

**Quick Reference - Kirkpatrick Levels:**
| Level | Measures | Method |
|-------|----------|--------|
| 1. Reaction | Satisfaction | Surveys, feedback |
| 2. Learning | Knowledge gain | Quizzes, assessments |
| 3. Behavior | Applied skills | Projects, observations |
| 4. Results | Business impact | Metrics, outcomes |

→ Full reference: `.claude/standards/kirkpatrick-metrics.md`

### Step 5: Define Prerequisites & Scope

Create `specs/prerequisites.yaml` and `specs/scope.yaml`.

## Outputs

- `specs/strategy.yaml` - Vision and transformation
- `specs/outcomes.yaml` - Learning outcomes
- `specs/format.yaml` - Course format
- `specs/success-metrics.yaml` - Kirkpatrick metrics
- `specs/prerequisites.yaml` - Entry requirements
- `specs/scope.yaml` - Scope boundaries

## Export Artifacts

After completing, add to `production/handoff/`:
- `phase-4-strategy.yaml`: Transformation, outcomes summary
- `phase-4-decisions.md`: Key decisions with rationale

## Quality Gate

- [ ] Transformation promise clear and compelling
- [ ] Learning outcomes SMART and Bloom's-aligned
- [ ] Course format matches audience needs
- [ ] All 4 Kirkpatrick levels have metrics
- [ ] Prerequisites specified
- [ ] Scope boundaries explicit

## Git Commit

```bash
git add specs/strategy.yaml specs/outcomes.yaml specs/format.yaml \
        specs/success-metrics.yaml specs/prerequisites.yaml specs/scope.yaml \
        production/handoff/phase-4-* specs/progress.yaml
git commit -m "Phase 4: Course strategy complete"
git tag -a phase-4-strategy -m "Course Strategy Complete"
```

## Next Phase

→ `/course-architecture` (Phase 5: Curriculum Architecture)
```

**Result:**
- Self-contained skill (110 lines)
- Inline quick references
- Links to full standards
- Export artifact tracking
- Same functionality, better organization

---

## Next Steps

1. **Review this strategy** - Approve overall direction
2. **Prioritize changes** - Which changes are most impactful?
3. **Begin Phase A** - Start with configuration system
4. **Iterate** - Refine based on usage feedback

---

*Generated by Course OS architecture review*
*Comparing: Agent OS v2.1.1, Design OS, Course OS current*
