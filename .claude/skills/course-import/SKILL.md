---
name: course-import
description: Use for Phase 1 of Course OS - collecting and cataloging source materials including existing course content, reference books, videos, competitor courses, and expert knowledge. Triggers on "/course-import", "import course materials", "add sources", "collect references", or when starting a new course project.
---

# Phase 1: Source Collection & Import

Collect and organize all source materials before research begins.

## Prerequisites

- Course project initialized (`specs/course.yaml` exists)
- Or run `/course-os` first to initialize

## Process

### Step 1: Initialize Structure

```bash
mkdir -p .course-os/imports/{courses,references,media,urls,knowledge}
```

### Step 2: Gather Sources

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

### Step 3: Catalog Sources

Create `.course-os/imports/catalog.yaml` - see `./catalog-schema.md`

### Step 4: Extract Content

For each source, extract:
- Key concepts and terminology
- Main arguments/frameworks
- Notable quotes
- Topic timestamps (for video/audio)

Save to `.course-os/imports/summaries/<source-id>.md`

### Step 5: Gap Analysis

Create `.course-os/imports/gaps.yaml` - see `./gaps-schema.md`

## Outputs

- `.course-os/imports/catalog.yaml` - Source catalog
- `.course-os/imports/summaries/` - Extracted summaries
- `.course-os/imports/gaps.yaml` - Gap analysis

## Quality Checklist

- [ ] All provided sources cataloged
- [ ] Key content extracted and summarized
- [ ] Gaps identified for research phase
- [ ] Sources organized by type

## Git Commit

```bash
git add .course-os/imports specs/progress.yaml
git commit -m "Phase 1: Source collection complete"
git tag -a phase-1-import -m "Source Collection Complete"
```

## Next Phase

→ `/course-research` (Phase 2: Deep Topic Research)
