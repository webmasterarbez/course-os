#!/bin/bash

# Course OS - New Course Initializer
# Usage: ./init-course.sh <course-name>

if [ -z "$1" ]; then
    echo "Usage: ./init-course.sh <course-name>"
    echo "Example: ./init-course.sh my-awesome-course"
    exit 1
fi

COURSE_NAME=$1
COURSE_DIR=$(pwd)/$COURSE_NAME

echo "Creating Course OS project: $COURSE_NAME"

# Create directory structure
mkdir -p "$COURSE_DIR"/{specs/modules,content/{scripts,lessons,assessments/{quizzes,projects,rubrics,self,surveys},examples,activities,resources},assets/{images,videos,audio,downloads},production/{shot-lists,graphics,audio,interactive,accessibility,checklists,handoff,exports/{universal,teachable,thinkific,scorm,xapi,localization}},.course-os/{imports/{courses,references,media,urls,knowledge},research,reviews}}

# Copy templates
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Get current date
TODAY=$(date +%Y-%m-%d)

# Create course.yaml with populated values
cat > "$COURSE_DIR/specs/course.yaml" << EOF
# Course OS - Course Specification
# Generated: $TODAY

course:
  name: "$COURSE_NAME"
  slug: "$COURSE_NAME"
  version: "0.1.0"
  status: "planning"  # planning | development | review | production | published
  created: $TODAY
  updated: $TODAY

meta:
  author: ""
  organization: ""
  contact: ""
  languages:
    primary: "en"
    translations: []

type:
  format: ""  # self-paced | cohort | live | hybrid
  category: ""  # online | corporate | academic | workshop
  level: ""  # beginner | intermediate | advanced | all-levels

duration:
  total: ""
  recommended_pace: ""
  access_period: ""  # lifetime | 12-months | etc.

phases:
  current: 1
  completed: []

tags: []
EOF

if [ -f "$SCRIPT_DIR/progress.yaml" ]; then
    cp "$SCRIPT_DIR/progress.yaml" "$COURSE_DIR/specs/progress.yaml"
fi

# Initialize git with 'main' as default branch
cd "$COURSE_DIR"
git init -b main

# Create .gitignore
cat > .gitignore << 'EOF'
# OS files
.DS_Store
Thumbs.db

# Editor files
*.swp
*.swo
*~
.idea/
.vscode/

# Temporary files
*.tmp
*.temp

# Large media files (track with Git LFS if needed)
# *.mp4
# *.mov
# *.wav

# Sensitive files
*.env
credentials.json
EOF

# Create initial README
cat > README.md << EOF
# $COURSE_NAME

Created with [Course OS](https://github.com/buildermethods/course-os)

## Getting Started

1. Run \`/course-os\` to start course development
2. Follow the 10-phase workflow
3. Each phase produces specifications and content

## Project Structure

\`\`\`
$COURSE_NAME/
├── specs/           # Course specifications (YAML)
├── content/         # Course content (Markdown + YAML)
├── assets/          # Media assets
├── production/      # Production materials
└── .course-os/      # Working files
\`\`\`

## Phases

1. Source Collection & Import
2. Deep Topic Research
3. Audience & Market Discovery
4. Course Strategy
5. Curriculum Architecture
6. Content Design
7. Script Development
8. Assessment Design
9. Media Production Planning
10. Production Package

## Commands

- \`/course-os\` - Start/resume full course development
- \`/course-import\` - Phase 1: Import sources
- \`/course-research\` - Phase 2: Deep research
- \`/course-discovery\` - Phase 3: Audience analysis
- \`/course-strategy\` - Phase 4: Define strategy
- \`/course-architecture\` - Phase 5: Design curriculum
- \`/course-content\` - Phase 6: Design content
- \`/course-scripts\` - Phase 7: Write scripts
- \`/course-assessments\` - Phase 8: Create assessments
- \`/course-media\` - Phase 9: Plan media
- \`/course-production\` - Phase 10: Production package
EOF

# Initial commit
git add .
git commit -m "Initialize Course OS project: $COURSE_NAME

Created with Course OS - the comprehensive course development system."

echo ""
echo "Course project created at: $COURSE_DIR"
echo ""
echo "Next steps:"
echo "  1. cd $COURSE_NAME"
echo "  2. Run /course-os to start development"
echo ""
