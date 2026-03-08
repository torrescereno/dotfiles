#!/bin/bash
set -e

echo "==> Creating symlinks with stow..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
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
    if [ ! -d "$pkg" ]; then
        continue
    fi

    echo "  Stowing $pkg..."

    if ! stow -n -t "$HOME" "$pkg" 2>/dev/null; then
        echo "    Conflicts detected for $pkg, adopting existing files and restoring dotfiles..."
        stow --adopt -t "$HOME" "$pkg" 2>/dev/null
        git -C "$DOTFILES_DIR" restore "stow/$pkg/" 2>/dev/null || true
    else
        stow -t "$HOME" "$pkg"
    fi

    echo "    ✓ $pkg"
done

echo "==> Symlinks created!"
