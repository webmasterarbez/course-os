# Source Catalog Schema

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

  - id: src-004
    type: article
    url: ""
    title: ""
    author: ""
    key_points: []
    import_date: YYYY-MM-DD

  - id: src-005
    type: knowledge
    source: "user"
    description: ""
    key_topics: []
    import_date: YYYY-MM-DD
```

## Source Types

- `book` - Books, ebooks, textbooks
- `video` - YouTube, courses, recordings
- `article` - Blog posts, papers, documentation
- `existing_course` - Competitor or previous courses
- `podcast` - Audio content
- `knowledge` - User expertise, notes, brain dumps
