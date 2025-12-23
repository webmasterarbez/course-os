#!/bin/bash

# Course OS - Project Installation Script
# Initializes Course OS in the current project directory
#
# Usage:
#   ~/course-os/scripts/project-install.sh [options]
#
# Options:
#   --name <name>     Course name (will prompt if not provided)
#   --dry-run         Preview installation without executing
#   --verbose         Display detailed output

set -e

# Get Course OS installation directory
COURSE_OS_DIR="$HOME/course-os"

# Check if Course OS is installed
if [ ! -d "$COURSE_OS_DIR" ]; then
    echo "Error: Course OS not found at $COURSE_OS_DIR"
    echo ""
    echo "Please run the base installation first:"
    echo "  curl -sSL https://raw.githubusercontent.com/webmasterarbez/course-os/main/scripts/base-install.sh | bash"
    exit 1
fi

# Parse arguments
COURSE_NAME=""
DRY_RUN=false
VERBOSE=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --name)
            COURSE_NAME="$2"
            shift 2
            ;;
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --verbose)
            VERBOSE=true
            shift
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

PROJECT_DIR=$(pwd)
TODAY=$(date +%Y-%m-%d)

echo "╔══════════════════════════════════════════╗"
echo "║       Course OS Project Install          ║"
echo "╚══════════════════════════════════════════╝"
echo ""
echo "Project directory: $PROJECT_DIR"
echo ""

# Check if already initialized
if [ -f "$PROJECT_DIR/specs/course.yaml" ]; then
    echo "✓ Course OS already initialized in this directory"
    echo ""
    echo "Run /course-os in Claude Code to continue development."
    exit 0
fi

# Prompt for course name if not provided
if [ -z "$COURSE_NAME" ]; then
    read -p "What is the name of your course? " COURSE_NAME
    if [ -z "$COURSE_NAME" ]; then
        echo "Error: Course name is required"
        exit 1
    fi
fi

echo ""
echo "Course name: $COURSE_NAME"
echo ""

if [ "$DRY_RUN" = true ]; then
    echo "[DRY RUN] Would create the following structure:"
    echo ""
    echo "  specs/"
    echo "    ├── course.yaml"
    echo "    ├── progress.yaml"
    echo "    └── modules/"
    echo "  content/"
    echo "    ├── scripts/"
    echo "    ├── lessons/"
    echo "    ├── assessments/"
    echo "    ├── examples/"
    echo "    ├── activities/"
    echo "    └── resources/"
    echo "  assets/"
    echo "    ├── images/"
    echo "    ├── videos/"
    echo "    ├── audio/"
    echo "    └── downloads/"
    echo "  production/"
    echo "    ├── shot-lists/"
    echo "    ├── checklists/"
    echo "    ├── handoff/"
    echo "    └── exports/"
    echo "  .course-os/"
    echo "    ├── imports/"
    echo "    ├── research/"
    echo "    └── reviews/"
    echo "  .claude/skills/  (11 Course OS skills)"
    echo ""
    exit 0
fi

echo "Installing Course OS..."
echo ""

# Create directory structure
if [ "$VERBOSE" = true ]; then echo "Creating directory structure..."; fi
mkdir -p "$PROJECT_DIR"/{specs/modules,content/{scripts,lessons,assessments/{quizzes,projects,rubrics,self,surveys},examples,activities,resources},assets/{images,videos,audio,downloads},production/{shot-lists,graphics,audio,interactive,accessibility,checklists,handoff,exports/{universal,teachable,thinkific,scorm,xapi,localization}},.course-os/{imports/{courses,references,media,urls,knowledge},research,reviews}}

# Create course.yaml
if [ "$VERBOSE" = true ]; then echo "Creating specs/course.yaml..."; fi
cat > "$PROJECT_DIR/specs/course.yaml" << EOF
# Course OS - Course Specification
# Generated: $TODAY

course:
  name: "$COURSE_NAME"
  slug: "$(echo "$COURSE_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')"
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
if [ "$VERBOSE" = true ]; then echo "Creating specs/progress.yaml..."; fi
cat > "$PROJECT_DIR/specs/progress.yaml" << EOF
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

# Copy skills
if [ "$VERBOSE" = true ]; then echo "Installing Course OS skills..."; fi
if [ -d "$COURSE_OS_DIR/.claude/skills" ]; then
    mkdir -p "$PROJECT_DIR/.claude"
    cp -r "$COURSE_OS_DIR/.claude/skills" "$PROJECT_DIR/.claude/"
fi

# Copy CLAUDE.md if not present
if [ ! -f "$PROJECT_DIR/CLAUDE.md" ] && [ -f "$COURSE_OS_DIR/CLAUDE.md" ]; then
    if [ "$VERBOSE" = true ]; then echo "Copying CLAUDE.md..."; fi
    cp "$COURSE_OS_DIR/CLAUDE.md" "$PROJECT_DIR/"
fi

echo "✓ Directory structure created"
echo "✓ Course specification created"
echo "✓ Progress tracking initialized"
echo "✓ Course OS skills installed"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Course OS installed successfully!"
echo ""
echo "Next steps:"
echo "  1. Start Claude Code:"
echo "     claude"
echo ""
echo "  2. Run the master skill:"
echo "     /course-os"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
