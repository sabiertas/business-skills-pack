#!/bin/bash
# Business Skills Pack — Installer
# Compatible with Claude Code and OpenCode

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_SOURCE="$SCRIPT_DIR/skills"

# Detect target directory
if [ -d "$HOME/.claude" ]; then
    TARGET="$HOME/.claude/skills"
    TOOL="Claude Code"
elif [ -d "$HOME/.opencode" ]; then
    TARGET="$HOME/.opencode/skills"
    TOOL="OpenCode"
else
    echo "No se encontró Claude Code (~/.claude/) ni OpenCode (~/.opencode/)"
    echo ""
    echo "¿Dónde quieres instalar los skills?"
    echo "  1) ~/.claude/skills/  (Claude Code)"
    echo "  2) ~/.opencode/skills/ (OpenCode)"
    echo "  3) Ruta personalizada"
    read -p "Opción [1]: " choice
    case "$choice" in
        2) TARGET="$HOME/.opencode/skills"; TOOL="OpenCode" ;;
        3) read -p "Ruta: " TARGET; TOOL="Custom" ;;
        *) TARGET="$HOME/.claude/skills"; TOOL="Claude Code" ;;
    esac
fi

echo ""
echo "=== Business Skills Pack ==="
echo "Destino: $TARGET ($TOOL)"
echo ""

# Create target if needed
mkdir -p "$TARGET"

# Create memory directories
mkdir -p "$HOME/.claude/memory/business/weekly-reviews" 2>/dev/null || true
mkdir -p "$HOME/.claude/memory/business/quarterly-plans" 2>/dev/null || true

# Count existing vs new
INSTALLED=0
SKIPPED=0

for skill_dir in "$SKILLS_SOURCE"/*/; do
    skill_name=$(basename "$skill_dir")

    if [ -d "$TARGET/$skill_name" ]; then
        echo "  ⏭ $skill_name (ya existe — no se sobreescribe)"
        SKIPPED=$((SKIPPED + 1))
    else
        cp -r "$skill_dir" "$TARGET/"
        echo "  ✓ $skill_name"
        INSTALLED=$((INSTALLED + 1))
    fi
done

echo ""
echo "=== Instalación completa ==="
echo "  Instalados: $INSTALLED skills"
echo "  Omitidos:   $SKIPPED skills (ya existían)"
echo ""

# Check for business-context.md
if [ ! -f "$HOME/.claude/business-context.md" ]; then
    echo "💡 Tip: Crea ~/.claude/business-context.md con la info de tu negocio"
    echo "   para que los skills personalicen el análisis a tu situación."
    echo "   (ver README.md para el formato)"
fi

echo ""
echo "¡Listo! Prueba con: /business coach"
