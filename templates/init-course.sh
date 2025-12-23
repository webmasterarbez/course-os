#!/bin/bash

# Course OS - Course Initializer
# Usage: ./templates/init-course.sh <course-name>
#   or:  ./templates/init-course.sh --here <course-name>
#
# --here flag initializes in current directory instead of creating subdirectory

set -e

# Parse arguments
INIT_HERE=false
COURSE_NAME=""

while [[ $# -gt 0 ]]; do
    case $1 in
        --here)
            INIT_HERE=true
            shift
            ;;
        *)
            COURSE_NAME="$1"
            shift
            ;;
    esac
done

if [ -z "$COURSE_NAME" ]; then
    echo "Usage: ./templates/init-course.sh [--here] <course-name>"
    echo ""
    echo "Options:"
    echo "  --here    Initialize in current directory (don't create subdirectory)"
    echo ""
    echo "Examples:"
    echo "  ./templates/init-course.sh my-awesome-course"
    echo "  ./templates/init-course.sh --here my-awesome-course"
    exit 1
fi

# Determine target directory
if [ "$INIT_HERE" = true ]; then
    COURSE_DIR=$(pwd)
    echo "Initializing Course OS project in current directory: $COURSE_NAME"
else
    COURSE_DIR=$(pwd)/$COURSE_NAME
    echo "Creating Course OS project: $COURSE_NAME"
    mkdir -p "$COURSE_DIR"
fi

# Create directory structure
mkdir -p "$COURSE_DIR"/{specs/modules,content/{scripts,lessons,assessments/{quizzes,projects,rubrics,self,surveys},examples,activities,resources},assets/{images,videos,audio,downloads},production/{shot-lists,graphics,audio,interactive,accessibility,checklists,handoff,exports/{universal,teachable,thinkific,scorm,xapi,localization}},.course-os/{imports/{courses,references,media,urls,knowledge},research,reviews}}

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

# Create progress.yaml
cat > "$COURSE_DIR/specs/progress.yaml" << EOF
# Course OS - Progress Tracking
# Generated: $TODAY

project:
  name: "$COURSE_NAME"
  started: $TODAY
  target_completion: ""

phases:
  import:
    status: pending
    started_at: null
    completed_at: null
    sources_imported: 0
    notes: []
    blockers: []

  research:
    status: pending
    started_at: null
    completed_at: null
    passes_completed: 0
    concepts_mapped: 0
    notes: []
    blockers: []

  discovery:
    status: pending
    started_at: null
    completed_at: null
    personas_created: 0
    competitors_analyzed: 0
    notes: []
    blockers: []

  strategy:
    status: pending
    started_at: null
    completed_at: null
    outcomes_defined: 0
    notes: []
    blockers: []

  architecture:
    status: pending
    started_at: null
    completed_at: null
    modules_designed: 0
    lessons_planned: 0
    notes: []
    blockers: []

  content:
    status: pending
    started_at: null
    completed_at: null
    lessons_designed: 0
    examples_created: 0
    activities_designed: 0
    notes: []
    blockers: []

  scripts:
    status: pending
    started_at: null
    completed_at: null
    scripts_written: 0
    total_word_count: 0
    notes: []
    blockers: []

  assessments:
    status: pending
    started_at: null
    completed_at: null
    quizzes_created: 0
    projects_created: 0
    rubrics_created: 0
    notes: []
    blockers: []

  media:
    status: pending
    started_at: null
    completed_at: null
    videos_planned: 0
    graphics_planned: 0
    notes: []
    blockers: []

  production:
    status: pending
    started_at: null
    completed_at: null
    exports_generated: []
    notes: []
    blockers: []

quality:
  scores: {}
  audits: []
  reviews: []

course_status: in_development
completion_date: null
final_version: null
EOF

# Initialize git if not already a repo (skip if --here and already has .git)
if [ ! -d "$COURSE_DIR/.git" ]; then
    cd "$COURSE_DIR"
    git init -b main

    # Create .gitignore
    cat > .gitignore << 'GITIGNORE'
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
GITIGNORE

    git add .
    git commit -m "Initialize Course OS project: $COURSE_NAME"
fi

echo ""
echo "Course project initialized: $COURSE_DIR"
echo ""
if [ "$INIT_HERE" = true ]; then
    echo "Run /course-os to start Phase 1: Source Collection & Import"
else
    echo "Next steps:"
    echo "  1. cd $COURSE_NAME"
    echo "  2. Run /course-os to start development"
fi
echo ""
