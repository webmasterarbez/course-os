# Phase 2: Deep Topic Research

## Overview

Comprehensive subject matter investigation using multi-pass research. This phase synthesizes imported sources with new research to build complete topic understanding.

**Use this skill to:** Conduct deep research on your course topic, synthesizing existing materials with web research to create a comprehensive knowledge foundation.

## When to Use

- After completing Phase 1 (Source Import)
- Need comprehensive topic research
- Want to fill knowledge gaps
- Resuming Phase 2 of an existing project

## Prerequisites

- Phase 1 complete (sources imported)
- `.course-os/imports/catalog.yaml` exists
- `.course-os/imports/gaps.yaml` identifies research needs

## Research Strategy

### Multi-Pass Approach

**Pass 1: Broad Landscape**
- Overview of the topic domain
- Major subtopics and branches
- Key terminology and concepts
- Historical context and evolution

**Pass 2: Deep Dive**
- Detailed exploration of each subtopic
- Expert perspectives and debates
- Current best practices
- Emerging trends

**Pass 3: Gap Filling**
- Address specific gaps from Phase 1
- Find missing information
- Validate assumptions
- Cross-reference sources

**Pass 4: Synthesis**
- Connect concepts across sources
- Identify patterns and themes
- Resolve contradictions
- Build unified understanding

## Process

### Step 1: Review Imported Sources

```bash
# Load and analyze previous phase outputs
cat .course-os/imports/catalog.yaml
cat .course-os/imports/gaps.yaml
```

### Step 2: Define Research Scope

Ask (one at a time):

1. **Core Topic:**
   > What is the primary topic of this course?
   > (Brief description of the subject matter)

2. **Depth Level:**
   > What expertise level should research target?
   > - Beginner (foundational concepts)
   > - Intermediate (practical application)
   > - Advanced (expert techniques)
   > - Comprehensive (all levels)

3. **Specific Areas:**
   > Are there specific subtopics that need extra research?
   > (List or describe)

4. **Exclusions:**
   > Anything explicitly out of scope?
   > (Topics to avoid or limit)

### Step 3: Execute Research Passes

#### Pass 1: Broad Landscape
```yaml
research_queries:
  - "[topic] overview fundamentals"
  - "[topic] key concepts terminology"
  - "[topic] history evolution"
  - "[topic] major approaches methods"
  - "[topic] current state 2024 2025"
```

Output: `research/pass-1-landscape.md`

#### Pass 2: Deep Dive
For each major subtopic identified:
```yaml
research_queries:
  - "[subtopic] best practices"
  - "[subtopic] expert techniques"
  - "[subtopic] common mistakes"
  - "[subtopic] case studies examples"
  - "[subtopic] tools resources"
```

Output: `research/pass-2-deepdive.md`

#### Pass 3: Gap Filling
Address each gap from Phase 1:
```yaml
research_queries:
  - Specific queries for each identified gap
  - Validation queries for assumptions
  - Counter-argument searches
```

Output: `research/pass-3-gaps.md`

#### Pass 4: Synthesis
Combine and analyze all findings.

Output: `research/synthesis.md`

### Step 4: Build Knowledge Map

Create concept map showing:
- Core concepts
- Relationships between concepts
- Prerequisites and dependencies
- Learning sequence suggestions

```yaml
# .course-os/research/knowledge-map.yaml
concepts:
  - id: concept-001
    name: ""
    description: ""
    prerequisites: []
    related_to: []
    complexity: beginner|intermediate|advanced
    sources: []

  - id: concept-002
    name: ""
    # ...

relationships:
  - from: concept-001
    to: concept-002
    type: prerequisite|related|builds_on|contrasts_with

sequences:
  suggested_order:
    - concept-001
    - concept-002
```

### Step 5: Identify Misconceptions

Document common misunderstandings:

```yaml
# .course-os/research/misconceptions.yaml
misconceptions:
  - id: misc-001
    misconception: ""
    reality: ""
    why_common: ""
    how_to_address: ""
    sources: []

  - id: misc-002
    # ...
```

### Step 6: Extract Key Insights

Compile actionable insights:

```yaml
# .course-os/research/insights.yaml
insights:
  foundational:
    - ""
  practical:
    - ""
  advanced:
    - ""
  emerging:
    - ""

key_frameworks:
  - name: ""
    description: ""
    when_to_use: ""
    source: ""

notable_experts:
  - name: ""
    expertise: ""
    key_contributions: ""
    resources: []
```

## Outputs

### .course-os/research/
```
research/
├── pass-1-landscape.md
├── pass-2-deepdive.md
├── pass-3-gaps.md
├── synthesis.md
├── knowledge-map.yaml
├── misconceptions.yaml
├── insights.yaml
└── sources.yaml
```

### specs/research.yaml
```yaml
research:
  completed: YYYY-MM-DD
  topic: ""
  depth: ""

  statistics:
    sources_analyzed: <n>
    concepts_mapped: <n>
    misconceptions_identified: <n>
    research_hours: <n>

  key_findings:
    - ""

  knowledge_gaps_remaining:
    - ""

  recommendations:
    - ""
```

### progress.yaml (updated)
```yaml
phases:
  research:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    passes_completed: 4
    notes:
      - "Mapped [n] core concepts"
      - "Identified [n] misconceptions"
      - "Synthesized [n] sources"
```

## Research Quality Criteria

Before completing Phase 2:

- [ ] All 4 research passes complete
- [ ] Knowledge map covers all major concepts
- [ ] Misconceptions documented
- [ ] Sources properly cited
- [ ] Gaps from Phase 1 addressed
- [ ] Synthesis document coherent
- [ ] Ready for audience/market discovery

## Source Citation Format

```yaml
sources:
  - id: src-001
    type: article|book|video|website|course
    title: ""
    author: ""
    url: ""
    accessed: YYYY-MM-DD
    relevance: high|medium|low
    key_points:
      - ""
```

## Git Commit

```bash
git add .course-os/research specs/research.yaml progress.yaml
git commit -m "Phase 2: Deep topic research complete

- Completed 4-pass research strategy
- Mapped [n] concepts
- Identified [n] misconceptions
- Synthesized [n] sources"
git tag -a phase-2-research -m "Deep Topic Research Complete"
```

## Next Phase

After completing Phase 2, proceed to:
→ `/course-discovery` (Phase 3: Audience & Market Discovery)

The discovery phase will:
- Analyze target audience
- Research competitor courses
- Identify market positioning
