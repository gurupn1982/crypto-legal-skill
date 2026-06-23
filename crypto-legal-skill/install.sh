#!/usr/bin/env bash
# crypto-legal-skill installer
# Usage:
#   ./install.sh          # Interactive
#   ./install.sh -y       # Non-interactive, all defaults

set -e

SKILL_NAME="crypto-legal"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_INSTALL_DIR="$HOME/.claude/skills"
NON_INTERACTIVE=false

# Parse flags
while [[ "$#" -gt 0 ]]; do
  case $1 in
    -y|--yes) NON_INTERACTIVE=true ;;
    *) echo "Unknown parameter: $1"; exit 1 ;;
  esac
  shift
done

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║       crypto-legal-skill installer       ║"
echo "║  Legal & regulatory guidance for Solana  ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Determine install location
if [ "$NON_INTERACTIVE" = true ]; then
  INSTALL_DIR="$DEFAULT_INSTALL_DIR"
  echo "📁 Installing to: $INSTALL_DIR"
else
  echo "Where would you like to install the skill?"
  echo "  1) Personal (~/.claude/skills/) [default]"
  echo "  2) Current project (./.claude/skills/)"
  echo "  3) Custom path"
  echo ""
  read -p "Enter choice [1]: " LOCATION_CHOICE
  LOCATION_CHOICE=${LOCATION_CHOICE:-1}

  case "$LOCATION_CHOICE" in
    1) INSTALL_DIR="$HOME/.claude/skills" ;;
    2) INSTALL_DIR="$(pwd)/.claude/skills" ;;
    3)
      read -p "Enter custom path: " CUSTOM_PATH
      INSTALL_DIR="$CUSTOM_PATH"
      ;;
    *) INSTALL_DIR="$HOME/.claude/skills" ;;
  esac
fi

SKILL_DEST="$INSTALL_DIR/$SKILL_NAME"

# Create directories
mkdir -p "$SKILL_DEST/skill"
mkdir -p "$SKILL_DEST/agents"

# Copy skill files
echo ""
echo "📋 Copying skill files..."
cp -r "$REPO_DIR/skill/"* "$SKILL_DEST/skill/"
cp -r "$REPO_DIR/agents/"* "$SKILL_DEST/agents/"
mkdir -p "$SKILL_DEST/checklists"
cp -r "$REPO_DIR/checklists/"* "$SKILL_DEST/checklists/"
cp "$REPO_DIR/BRIEF.md" "$SKILL_DEST/CLAUDE.md"

echo "✅ Skill files installed to: $SKILL_DEST"

# CLAUDE.md placement
if [ "$NON_INTERACTIVE" = true ]; then
  CLAUDE_MD_DEST="$HOME/.claude/CLAUDE.md"
else
  echo ""
  echo "Where should CLAUDE.md be placed?"
  echo "  1) ~/.claude/CLAUDE.md (personal, all projects) [default]"
  echo "  2) Current project directory (./CLAUDE.md)"
  echo "  3) Skip (I'll configure manually)"
  echo ""
  read -p "Enter choice [1]: " CLAUDE_CHOICE
  CLAUDE_CHOICE=${CLAUDE_CHOICE:-1}

  case "$CLAUDE_CHOICE" in
    1) CLAUDE_MD_DEST="$HOME/.claude/CLAUDE.md" ;;
    2) CLAUDE_MD_DEST="$(pwd)/CLAUDE.md" ;;
    3) CLAUDE_MD_DEST="" ;;
    *) CLAUDE_MD_DEST="$HOME/.claude/CLAUDE.md" ;;
  esac
fi

if [ -n "$CLAUDE_MD_DEST" ]; then
  if [ -f "$CLAUDE_MD_DEST" ]; then
    echo ""
    echo "⚠️  $CLAUDE_MD_DEST already exists."
    if [ "$NON_INTERACTIVE" = false ]; then
      read -p "   Append crypto-legal config? [Y/n]: " APPEND_CHOICE
      APPEND_CHOICE=${APPEND_CHOICE:-Y}
      if [[ "$APPEND_CHOICE" =~ ^[Yy]$ ]]; then
        echo "" >> "$CLAUDE_MD_DEST"
        echo "---" >> "$CLAUDE_MD_DEST"
        cat "$REPO_DIR/BRIEF.md" >> "$CLAUDE_MD_DEST"
        echo "✅ Appended to: $CLAUDE_MD_DEST"
      fi
    fi
  else
    mkdir -p "$(dirname "$CLAUDE_MD_DEST")"
    cp "$REPO_DIR/BRIEF.md" "$CLAUDE_MD_DEST"
    echo "✅ CLAUDE.md placed at: $CLAUDE_MD_DEST"
  fi
fi

echo ""
echo "╔══════════════════════════════════════╗"
echo "║          Installation complete!      ║"
echo "╚══════════════════════════════════════╝"
echo ""
echo "🎉 crypto-legal-skill is ready!"
echo ""
echo "Try asking Claude:"
echo "  \"Where should I incorporate my Solana protocol?\""
echo "  \"Is my token a security under US law?\""
echo "  \"How is crypto taxed in India?\""
echo "  \"How do I issue a stablecoin on Solana?\""
echo ""
echo "📖 Skill files: $SKILL_DEST/skill/"
echo "🤖 Agents: $SKILL_DEST/agents/"
echo ""
