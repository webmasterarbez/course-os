---
name: course-research
description: Use for Phase 2 of Course OS - conducting comprehensive topic research using a 4-pass strategy (landscape, deep dive, gap filling, synthesis) to build complete subject matter understanding. Triggers on "/course-research", "research topic", "deep dive research", or after completing Phase 1.
prerequisites: [course-import]
outputs: [.course-os/research/pass-*.md, .course-os/research/synthesis.md, .course-os/research/knowledge-map.yaml, .course-os/research/misconceptions.yaml, specs/research.yaml]
exports: [phase-2-research.yaml]
frameworks: []
---

# Phase 2: Deep Topic Research

Comprehensive subject matter investigation using multi-pass research strategy.

## Prerequisites

- Phase 1 complete
- `.course-os/imports/catalog.yaml` exists
- `.course-os/imports/gaps.yaml` identifies research needs

## Process

### Step 1: Review Phase 1 Outputs

Review imported sources and identified gaps.

### Step 2: Define Research Scope

Ask ONE at a time:

1. **"What is the primary topic of this course?"**
2. **"What expertise level should research target?"** (Beginner/Intermediate/Advanced/Comprehensive)
3. **"Are there specific subtopics needing extra research?"**
4. **"Anything explicitly out of scope?"**

### Step 3: Execute 4-Pass Research

**Pass 1: Broad Landscape**
- Overview of topic domain
- Major subtopics and branches
- Key terminology and concepts
→ Output: `.course-os/research/pass-1-landscape.md`

**Pass 2: Deep Dive**
- Detailed exploration per subtopic
- Expert perspectives and debates
- Current best practices and trends
→ Output: `.course-os/research/pass-2-deepdive.md`

**Pass 3: Gap Filling**
- Address gaps from Phase 1
- Validate assumptions
- Cross-reference sources
→ Output: `.course-os/research/pass-3-gaps.md`

**Pass 4: Synthesis**
- Connect concepts across sources
- Identify patterns and themes
- Build unified understanding
→ Output: `.course-os/research/synthesis.md`

### Step 4: Build Knowledge Map

Create `.course-os/research/knowledge-map.yaml`:

```yaml
concepts:
  - id: concept-001
    name: ""
    description: ""
    prerequisites: []
    related_to: []
    complexity: beginner|intermediate|advanced
    sources: []

relationships:
  - from: concept-001
    to: concept-002
    type: prerequisite|related|builds_on|contrasts_with

sequences:
  suggested_order:
    - concept-001
    - concept-002
```

**Relationship Types:**
- `prerequisite` - Must understand A before B
- `related` - Connected but independent
- `builds_on` - B extends or deepens A
- `contrasts_with` - A and B are opposing approaches

### Step 5: Document Misconceptions

Create `.course-os/research/misconceptions.yaml`:

```yaml
misconceptions:
  - id: misc-001
    misconception: "What people wrongly believe"
    reality: "What is actually true"
    why_common: "Why this misconception exists"
    how_to_address: "Teaching strategy to correct it"
    sources: []
```

## Outputs

| File | Purpose |
|------|---------|
| `.course-os/research/pass-*.md` | Research passes |
| `.course-os/research/synthesis.md` | Unified synthesis |
| `.course-os/research/knowledge-map.yaml` | Concept map |
| `.course-os/research/misconceptions.yaml` | Common misunderstandings |
| `specs/research.yaml` | Research summary |

## Export Artifacts

After completing, add to `production/handoff/`:

```yaml
# production/handoff/phase-2-research.yaml
research_summary:
  passes_completed: 4
  concepts_mapped: 45
  misconceptions_identified: 8
  key_themes:
    - "Theme 1"
    - "Theme 2"
  depth: comprehensive
  gaps_resolved: ["Topic A", "Topic B"]
```

## Quality Gate

- [ ] All 4 research passes complete
- [ ] Knowledge map covers major concepts
- [ ] Concept relationships defined
- [ ] Misconceptions documented
- [ ] Gaps from Phase 1 addressed
- [ ] Export artifact created

## Git Commit

```bash
git add .course-os/research specs/research.yaml production/handoff/phase-2-* specs/progress.yaml
git commit -m "Phase 2: Deep topic research complete"
git tag -a phase-2-research -m "Deep Topic Research Complete"
```

## Next Phase

→ `/course-discovery` (Phase 3: Audience & Market Discovery)
