# /course export

Generate platform-specific export packages.

## Usage

```
/course export
/course export teachable
/course export scorm --version 2004
/course export all
```

## Arguments

- `<platform>` - Specific platform to export (optional)
- `--version` - Platform-specific version
- `--output <dir>` - Custom output directory

## Supported Platforms

| Platform | Command | Output Format |
|----------|---------|---------------|
| Universal | `/course export` | Markdown + YAML |
| Teachable | `/course export teachable` | HTML + CSV |
| Thinkific | `/course export thinkific` | JSON + HTML |
| SCORM 1.2 | `/course export scorm --version 1.2` | SCORM package |
| SCORM 2004 | `/course export scorm --version 2004` | SCORM package |
| xAPI | `/course export xapi` | xAPI statements |
| Localization | `/course export localization` | Translation files |
| All | `/course export all` | All configured |

## Process

1. Validate course is ready for export (Phase 10 complete or `--force`)
2. Read export configuration from `config.yml`
3. Transform content to target format
4. Generate platform-specific files
5. Create import guide

## Output Structure

### Universal (Default)

```
production/exports/universal/
├── course.yaml           # Course metadata
├── modules/
│   ├── module-01/
│   │   ├── module.yaml   # Module spec
│   │   ├── lesson-01.md  # Lesson content
│   │   ├── lesson-02.md
│   │   └── quiz-01.yaml  # Assessment
│   └── module-02/
├── assets/               # Media files
├── resources/            # Downloads
└── README.md             # Import guide
```

### Teachable

```
production/exports/teachable/
├── course-info.csv       # Course metadata
├── curriculum.csv        # Structure import
├── sections/
│   ├── 01-module-name/
│   │   ├── 01-lesson.html
│   │   ├── 02-lesson.html
│   │   └── quiz.json
├── files/                # Uploadable assets
└── import-guide.md
```

### Thinkific

```
production/exports/thinkific/
├── course-structure.json
├── chapters/
│   ├── chapter-01/
│   │   ├── lessons/
│   │   └── quizzes/
├── downloads/
└── import-guide.md
```

### SCORM

```
production/exports/scorm/
├── imsmanifest.xml       # SCORM manifest
├── content/
│   ├── index.html        # Entry point
│   ├── modules/
│   └── assessments/
├── scripts/
│   └── scorm-api.js      # SCORM wrapper
└── README.md
```

### xAPI

```
production/exports/xapi/
├── activities/
│   ├── course.json       # Activity definitions
│   ├── modules/
│   └── assessments/
├── statements/
│   └── templates/        # Statement templates
├── lrs-config.json       # LRS connection
└── README.md
```

### Localization

```
production/exports/localization/
├── strings/
│   ├── en.yaml           # Source strings
│   ├── es.yaml           # Spanish
│   └── fr.yaml           # French
├── content/
│   ├── en/               # Source content
│   ├── es/               # Translated
│   └── fr/
└── translation-guide.md
```

## Output Example

```
Course Export
=============

Course: Building SaaS Products
Platform: teachable

Exporting...
  ✓ Course metadata
  ✓ Module 1: Foundations (5 lessons)
  ✓ Module 2: MVP Development (7 lessons)
  ✓ Module 3: Launch (4 lessons)
  ✓ Quizzes (3 quizzes, 45 questions)
  ✓ Resources (12 files)

Export complete!
Location: production/exports/teachable/

Files generated:
  - course-info.csv
  - curriculum.csv
  - 16 lesson files
  - 3 quiz files
  - 12 resource files
  - import-guide.md

Next steps:
  1. Review import-guide.md
  2. Upload to Teachable
  3. Configure pricing and access
```

## Prerequisites

- Phase 10 complete (or use `--force` flag)
- Quality validation passed
- All required content exists

## Configuration

From `config.yml`:

```yaml
exports:
  default_format: universal
  include_source_files: false
  generate_readme: true

  platforms:
    teachable:
      enabled: true
      format: html
    scorm:
      enabled: true
      version: "2004"
```

## See Also

- `/course-production` - Phase 10 production
- `production/exports/` - Export output
- `config.yml` - Export settings
