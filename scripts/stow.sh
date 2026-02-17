#!/bin/bash
set -e

echo "==> Creating symlinks with stow..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STOW_DIR="$DOTFILES_DIR/stow"

cd "$STOW_DIR"

PACKAGES=(
    zsh
    nvim
    ghostty
    tmux
    zellij
    lazygit
    alacritty
    kitty
)

for pkg in "${PACKAGES[@]}"; do
    if [ -d "$pkg" ]; then
        echo "  Stowing $pkg..."
        stow -t "$HOME" "$pkg" 2>/dev/null || echo "    Warning: $pkg may have conflicts, skipping..."
    fi
done

echo "==> Symlinks created!"
