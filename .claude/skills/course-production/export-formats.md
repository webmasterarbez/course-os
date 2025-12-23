# Export Formats

## Universal (Default)

Standard Markdown + YAML format. Works anywhere.

```
exports/universal/
├── course.yaml
├── modules/
│   ├── module-01/
│   │   ├── module.yaml
│   │   ├── lesson-01.md
│   │   ├── lesson-02.md
│   │   └── quiz-01.yaml
├── assets/
└── README.md
```

## Teachable

Optimized for Teachable import.

```
exports/teachable/
├── course-info.csv
├── sections/
│   ├── 01-module-name/
│   │   ├── 01-lesson-name.html
│   │   ├── 02-lesson-name.html
│   │   └── quiz.json
├── files/
└── import-guide.md
```

## Thinkific

Optimized for Thinkific import.

```
exports/thinkific/
├── course-structure.json
├── chapters/
│   ├── chapter-01/
│   │   ├── lessons/
│   │   └── quizzes/
├── downloads/
└── import-guide.md
```

## SCORM 1.2 / 2004

LMS-compatible package.

```
exports/scorm/
├── imsmanifest.xml
├── content/
│   ├── index.html
│   ├── modules/
│   └── assessments/
├── scripts/
│   └── scorm-api.js
└── README.md
```

## xAPI (Experience API)

Modern learning record store compatible.

```
exports/xapi/
├── activities/
│   ├── course.json
│   ├── modules/
│   └── assessments/
├── statements/
│   └── templates/
└── lrs-config.json
```

## Export Script

```bash
#!/bin/bash
# Generate exports for specified platform

PLATFORM=$1  # universal|teachable|thinkific|scorm|xapi

case $PLATFORM in
  universal)
    # Generate Markdown + YAML export
    ;;
  teachable)
    # Generate Teachable-compatible export
    ;;
  # ... other platforms
esac
```

## Localization Export

For multi-language courses:

```
exports/localization/
├── strings/
│   ├── en.yaml
│   ├── es.yaml
│   └── fr.yaml
├── content/
│   ├── en/
│   ├── es/
│   └── fr/
└── translation-guide.md
```
