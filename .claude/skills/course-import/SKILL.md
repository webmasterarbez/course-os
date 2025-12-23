---
name: course-import
description: Use for Phase 1 of Course OS - collecting and cataloging source materials including existing course content, reference books, videos, competitor courses, and expert knowledge. Triggers on "/course-import", "import course materials", "add sources", "collect references", or when starting a new course project.
prerequisites: []
outputs: [.course-os/imports/catalog.yaml, .course-os/imports/gaps.yaml, .course-os/imports/summaries/]
exports: [phase-1-sources.yaml]
frameworks: []
---

# Phase 1: Source Collection & Import

Collect and organize all source materials before research begins.

## Prerequisites

- Course project initialized (`specs/course.yaml` exists)
- Or run `/course-os` first to initialize

## Process

### Step 1: Gather Sources

Ask ONE question at a time:

1. **"Do you have any existing course content to import?"**
   (Previous versions, outlines, scripts, videos, slides)

2. **"What books, articles, or papers should inform this course?"**
   (Titles, URLs, or file paths)

3. **"Any YouTube videos, podcasts, or recordings to reference?"**
   (URLs or descriptions)

4. **"Are there existing courses on this topic to analyze?"**
   (Platform links or course names)

5. **"Any expert blogs, talks, or interviews to incorporate?"**
   (URLs or names)

6. **"Do you have notes, brain dumps, or expertise to import?"**
   (Paste or describe)

### Step 2: Catalog Sources

Create `.course-os/imports/catalog.yaml`:

```yaml
sources:
  - id: src-001
    type: book|video|article|existing_course|podcast|knowledge
    title: ""
    author: ""
    url: ""  # if applicable
    relevance: "Why this source matters"
    key_topics: []
    import_date: YYYY-MM-DD
```

**Source Types:**
- `book` - Books, ebooks, textbooks
- `video` - YouTube, courses, recordings
- `article` - Blog posts, papers, documentation
- `existing_course` - Competitor or previous courses
- `podcast` - Audio content
- `knowledge` - User expertise, notes, brain dumps

### Step 3: Extract Content

For each source, extract and save to `.course-os/imports/summaries/<source-id>.md`:
- Key concepts and terminology
- Main arguments/frameworks
- Notable quotes
- Topic timestamps (for video/audio)

### Step 4: Gap Analysis

Create `.course-os/imports/gaps.yaml`:

```yaml
coverage:
  well_covered:
    - topic: ""
      sources: [src-001, src-002]

  partially_covered:
    - topic: ""
      sources: [src-003]
      missing: "What's not covered"

  not_covered:
    - topic: ""
      research_needed: true

research_priorities:
  - priority: 1
    topic: ""
    reason: "Critical for course"
```

## Outputs

| File | Purpose |
|------|---------|
| `.course-os/imports/catalog.yaml` | Source catalog |
| `.course-os/imports/summaries/` | Extracted summaries |
| `.course-os/imports/gaps.yaml` | Gap analysis |

## Export Artifacts

After completing, add to `production/handoff/`:
- `phase-1-sources.yaml`: Source summary for production team

```yaml
# production/handoff/phase-1-sources.yaml
sources:
  total: 12
  by_type:
    books: 3
    videos: 5
    articles: 4
  key_sources:
    - "Source 1 - primary reference for X"
    - "Source 2 - competitor analysis"
gaps:
  research_needed: ["Topic A", "Topic B"]
```

## Quality Gate

- [ ] All provided sources cataloged
- [ ] Key content extracted and summarized
- [ ] Gaps identified for research phase
- [ ] Sources organized by type
- [ ] Export artifact created

## Git Commit

```bash
git add .course-os/imports production/handoff/phase-1-* specs/progress.yaml
git commit -m "Phase 1: Source collection complete"
git tag -a phase-1-import -m "Source Collection Complete"
```

## Next Phase

→ `/course-research` (Phase 2: Deep Topic Research)
