#!/bin/bash
set -e

echo "==> Installing CLI tools..."

# All tools available via Homebrew on macOS
BREW_TOOLS=(
    uv
    atuin
    eza
    bottom
    dust
    procs
    git-delta
    lazygit
    lazydocker
    zoxide
    kubectl
)

brew install "${BREW_TOOLS[@]}"

# Ghostty - terminal emulator (cask)
if ! command -v ghostty &> /dev/null; then
    echo "  Installing Ghostty..."
    brew install --cask ghostty || echo "  Ghostty installation failed (may need manual install from ghostty.org)"
fi

echo "==> CLI tools installed!"
