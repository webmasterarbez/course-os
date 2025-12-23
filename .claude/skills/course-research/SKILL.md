---
name: course-research
description: Use for Phase 2 of Course OS - conducting comprehensive topic research using a 4-pass strategy (landscape, deep dive, gap filling, synthesis) to build complete subject matter understanding. Triggers on "/course-research", "research topic", "deep dive research", or after completing Phase 1.
---

# Phase 2: Deep Topic Research

Comprehensive subject matter investigation using multi-pass research strategy.

## Prerequisites

- Phase 1 complete
- `.course-os/imports/catalog.yaml` exists
- `.course-os/imports/gaps.yaml` identifies research needs

## Process

### Step 1: Review Phase 1 Outputs

```bash
cat .course-os/imports/catalog.yaml
cat .course-os/imports/gaps.yaml
```

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

Create `.course-os/research/knowledge-map.yaml` - see `./knowledge-map-schema.md`

### Step 5: Document Misconceptions

Create `.course-os/research/misconceptions.yaml` - see `./misconceptions-schema.md`

## Outputs

- `.course-os/research/pass-*.md` - Research passes
- `.course-os/research/synthesis.md` - Unified synthesis
- `.course-os/research/knowledge-map.yaml` - Concept map
- `.course-os/research/misconceptions.yaml` - Common misunderstandings
- `specs/research.yaml` - Research summary

## Quality Checklist

- [ ] All 4 research passes complete
- [ ] Knowledge map covers major concepts
- [ ] Misconceptions documented
- [ ] Gaps from Phase 1 addressed

## Git Commit

```bash
git add .course-os/research specs/research.yaml specs/progress.yaml
git commit -m "Phase 2: Deep topic research complete"
git tag -a phase-2-research -m "Deep Topic Research Complete"
```

## Next Phase

→ `/course-discovery` (Phase 3: Audience & Market Discovery)
