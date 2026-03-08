#!/bin/bash
set -e

echo "==> Setting up Homebrew..."

if ! command -v brew &> /dev/null; then
    echo "  Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for current session
    if [[ "$(uname -m)" == "arm64" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        eval "$(/usr/local/bin/brew shellenv)"
    fi
else
    echo "  Homebrew already installed, updating..."
    brew update
fi

echo "==> Installing Homebrew packages..."

PACKAGES=(
    curl
    wget
    git
    stow
    zsh
    tmux
    ripgrep
    fd
    bat
    fzf
    jq
    duf
    unzip
    gnupg
    neovim
    yazi
)

brew install "${PACKAGES[@]}"

echo "==> Homebrew packages installed!"
