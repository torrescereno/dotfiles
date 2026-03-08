#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SCRIPTS_DIR="$DOTFILES_DIR/linux/scripts"

set -e

echo "========================================"
echo "  DOTFILES INSTALLER (Linux)"
echo "========================================"
echo ""

run_script() {
    local script=$1
    if [ -f "$script" ]; then
        bash "$script"
    else
        echo "Error: $script not found"
        exit 1
    fi
}

echo "[1/6] Installing apt packages..."
run_script "$SCRIPTS_DIR/packages/apt.sh"
echo ""

echo "[2/6] Installing CLI tools..."
run_script "$SCRIPTS_DIR/packages/tools.sh"
echo ""

echo "[3/6] Installing Nerd Fonts..."
run_script "$SCRIPTS_DIR/packages/fonts.sh"
echo ""

echo "[4/6] Installing pyenv..."
run_script "$SCRIPTS_DIR/packages/pyenv.sh"
echo ""

echo "[5/6] Installing fnm..."
run_script "$SCRIPTS_DIR/packages/fnm.sh"
echo ""

echo "[6/6] Creating symlinks..."
run_script "$SCRIPTS_DIR/stow.sh"
echo ""

echo "========================================"
echo "  INSTALLATION COMPLETE!"
echo "========================================"
echo ""
run_script "$SCRIPTS_DIR/post-install.sh"
