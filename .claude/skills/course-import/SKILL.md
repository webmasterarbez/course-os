---
name: course-import
description: Use for Phase 1 of course development - importing existing course materials, reference content, media links, and knowledge sources. Triggers on "/course-import", "import course materials", "add course sources", or starting a new course project.
---

# Phase 1: Source Collection & Import

## Overview

The first phase of Course OS. Collect and organize all source materials, existing content, and reference materials before research begins.

## When to Use

- Starting a new course project
- Have existing materials to incorporate
- Want to provide reference sources for research
- Resuming Phase 1 of an existing project

## Inputs Accepted

### Existing Course Materials
- Previous course versions (outlines, scripts, slides)
- Existing video/audio content (URLs or file references)
- Slide decks and presentations
- Worksheets, templates, downloads

### Reference Materials
- Books (titles, ISBNs, key chapters)
- Articles and papers (URLs, PDFs)
- YouTube videos and playlists
- Podcasts and audio content
- Online courses to analyze (competitor research)

### User-Provided Media
- Personal video content links
- Audio recordings
- Images, diagrams, graphics
- Screen recordings

### URLs & Links
- Websites to research
- Tools and resources to reference
- Expert blogs and content
- Industry resources

### Raw Knowledge
- Brain dumps and notes
- Interview transcripts
- Workshop/webinar recordings
- Personal expertise notes

## Process

### Step 1: Initialize Import Structure

```bash
mkdir -p .course-os/imports/{courses,references,media,urls,knowledge}
```

### Step 2: Gather Sources (Ask One at a Time)

1. **Existing Materials:**
   > Do you have any existing course content to import?
   > (Previous versions, outlines, scripts, videos, slides)

2. **Reference Books/Articles:**
   > What books, articles, or papers should inform this course?
   > (Titles, URLs, or file paths)

3. **Video/Audio References:**
   > Any YouTube videos, podcasts, or recordings to reference?
   > (URLs or descriptions)

4. **Competitor Courses:**
   > Are there existing courses on this topic to analyze?
   > (Platform links or course names)

5. **Expert Content:**
   > Any expert blogs, talks, or interviews to incorporate?
   > (URLs or names)

6. **Personal Knowledge:**
   > Do you have notes, brain dumps, or expertise to import?
   > (Paste or describe)

### Step 3: Process & Catalog

For each imported source, create catalog entry:

```yaml
# .course-os/imports/catalog.yaml
sources:
  - id: src-001
    type: book
    title: ""
    author: ""
    relevance: ""
    key_topics: []
    import_date: YYYY-MM-DD

  - id: src-002
    type: video
    url: ""
    title: ""
    duration: ""
    key_insights: []
    import_date: YYYY-MM-DD

  - id: src-003
    type: existing_course
    platform: ""
    title: ""
    structure_notes: ""
    strengths: []
    gaps: []
    import_date: YYYY-MM-DD
```

### Step 4: Content Extraction

For imported materials, extract and summarize:

1. **Text Content:**
   - Key concepts and terminology
   - Main arguments/frameworks
   - Notable quotes

2. **Video/Audio:**
   - Topic timestamps
   - Key points summary
   - Visual elements to recreate

3. **Courses:**
   - Module/lesson structure
   - Teaching approaches
   - What works/what's missing

### Step 5: Gap Analysis

Identify what's missing:

```yaml
# .course-os/imports/gaps.yaml
coverage:
  well_covered:
    - topic: ""
      sources: []
  partially_covered:
    - topic: ""
      sources: []
      missing: ""
  not_covered:
    - topic: ""
      research_needed: true

research_priorities:
  - priority: 1
    topic: ""
    reason: ""
```

## Outputs

### imports/catalog.yaml
Complete catalog of all imported sources

### imports/summaries/
Extracted summaries from each source:
- `summaries/<source-id>.md`

### imports/gaps.yaml
Gap analysis identifying research needs

### specs/course.yaml (updated)
```yaml
phases:
  current: 2
  completed: [1]

import:
  total_sources: <n>
  source_types:
    books: <n>
    articles: <n>
    videos: <n>
    courses: <n>
    other: <n>
  completed: YYYY-MM-DD
```

### progress.yaml (updated)
```yaml
phases:
  import:
    status: completed
    started_at: YYYY-MM-DD
    completed_at: YYYY-MM-DD
    sources_imported: <n>
    notes:
      - "Imported X existing course materials"
      - "Identified Y gaps for research"
```

## Quality Checklist

Before completing Phase 1:

- [ ] All provided sources cataloged
- [ ] Key content extracted and summarized
- [ ] Gaps identified for research phase
- [ ] Sources organized by type
- [ ] Catalog.yaml complete and accurate
- [ ] Ready for deep research phase

## Git Commit

```bash
git add .course-os/imports specs/course.yaml progress.yaml
git commit -m "Phase 1: Source collection complete

- Imported [n] sources ([types])
- Identified [n] research gaps
- Ready for deep topic research"
git tag -a phase-1-import -m "Source Collection Complete"
```

## Next Phase

After completing Phase 1, proceed to:
→ `/course-research` (Phase 2: Deep Topic Research)

The research phase will:
- Use imported sources as foundation
- Fill identified gaps through web research
- Synthesize findings into research report
