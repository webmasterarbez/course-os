#!/bin/bash

# Course OS - Course Initializer
# Usage: ./templates/init-course.sh <course-name> [--profile <profile>]
#   or:  ./templates/init-course.sh --here <course-name> [--profile <profile>]
#
# --here flag initializes in current directory instead of creating subdirectory
# --profile flag specifies the configuration profile (default, mini, workshop)

set -e

# Get script directory for accessing templates
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COURSE_OS_ROOT="$(dirname "$SCRIPT_DIR")"

# Parse arguments
INIT_HERE=false
COURSE_NAME=""
PROFILE="default"

while [[ $# -gt 0 ]]; do
    case $1 in
        --here)
            INIT_HERE=true
            shift
            ;;
        --profile)
            PROFILE="$2"
            shift 2
            ;;
        *)
            COURSE_NAME="$1"
            shift
            ;;
    esac
done

if [ -z "$COURSE_NAME" ]; then
    echo "Usage: ./templates/init-course.sh [--here] <course-name> [--profile <profile>]"
    echo ""
    echo "Options:"
    echo "  --here              Initialize in current directory (don't create subdirectory)"
    echo "  --profile <name>    Use configuration profile: default, mini, workshop"
    echo ""
    echo "Profiles:"
    echo "  default   Full 10-phase workflow (comprehensive courses)"
    echo "  mini      Condensed 7-phase workflow (quick courses)"
    echo "  workshop  5-phase workflow (live workshops)"
    echo ""
    echo "Examples:"
    echo "  ./templates/init-course.sh my-awesome-course"
    echo "  ./templates/init-course.sh --here my-awesome-course"
    echo "  ./templates/init-course.sh my-course --profile mini"
    exit 1
fi

# Validate profile
if [[ ! "$PROFILE" =~ ^(default|mini|workshop)$ ]]; then
    echo "Error: Invalid profile '$PROFILE'. Must be: default, mini, or workshop"
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
mkdir -p "$COURSE_DIR"/{specs/modules,content/{scripts,lessons,assessments/{quizzes,projects,rubrics,self,surveys},examples,activities,resources},assets/{images,videos,audio,downloads},production/{shot-lists,graphics,audio,interactive,accessibility,checklists/phase-gates,handoff/{phase-1,phase-2,phase-3,phase-4,phase-5,phase-6,phase-7,phase-8,phase-9,phase-10},exports/{universal,teachable,thinkific,scorm,xapi,localization}},.course-os/{imports/{courses,references,media,urls,knowledge},research,reviews}}

# Copy configuration template based on profile
echo "Using profile: $PROFILE"
CONFIG_TEMPLATE="$COURSE_OS_ROOT/templates/config-${PROFILE}.yml"
if [ -f "$CONFIG_TEMPLATE" ]; then
    cp "$CONFIG_TEMPLATE" "$COURSE_DIR/config.yml"
    # Update course name in config
    sed -i "s/name: \".*\"/name: \"$COURSE_NAME\"/" "$COURSE_DIR/config.yml"
else
    echo "Warning: Config template not found at $CONFIG_TEMPLATE"
fi

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
echo "Profile: $PROFILE"
echo ""
if [ "$INIT_HERE" = true ]; then
    echo "Run /course-os to start Phase 1: Source Collection & Import"
else
    echo "Next steps:"
    echo "  1. cd $COURSE_NAME"
    echo "  2. Review config.yml to customize settings"
    echo "  3. Run /course-os to start development"
fi
echo ""
