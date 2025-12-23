#!/bin/bash

# Course OS - Base Installation Script
# Installs Course OS to ~/course-os
#
# Usage:
#   curl -sSL https://raw.githubusercontent.com/webmasterarbez/course-os/main/scripts/base-install.sh | bash

set -e

INSTALL_DIR="$HOME/course-os"
REPO_URL="https://github.com/webmasterarbez/course-os.git"

echo "╔══════════════════════════════════════════╗"
echo "║         Course OS Base Install           ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Check if already installed
if [ -d "$INSTALL_DIR" ]; then
    echo "Course OS already installed at $INSTALL_DIR"
    echo "Updating to latest version..."
    cd "$INSTALL_DIR"
    git pull origin main
    echo ""
    echo "✓ Course OS updated successfully!"
else
    echo "Installing Course OS to $INSTALL_DIR..."
    git clone "$REPO_URL" "$INSTALL_DIR"
    echo ""
    echo "✓ Course OS installed successfully!"
fi

# Make scripts executable
chmod +x "$INSTALL_DIR/scripts/"*.sh 2>/dev/null || true
chmod +x "$INSTALL_DIR/templates/"*.sh 2>/dev/null || true

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Next steps:"
echo ""
echo "  1. Navigate to your project directory:"
echo "     cd /path/to/your/project"
echo ""
echo "  2. Run the project installer:"
echo "     ~/course-os/scripts/project-install.sh"
echo ""
echo "  3. Start Claude Code and run:"
echo "     /course-os"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
