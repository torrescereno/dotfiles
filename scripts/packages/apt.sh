#!/bin/bash
set -e

echo "==> Installing apt packages..."

sudo apt update

PACKAGES=(
    build-essential
    curl
    wget
    git
    stow
    zsh
    tmux
    ripgrep
    fd-find
    bat
    fzf
    jq
    unzip
    ca-certificates
    gnupg
    software-properties-common
)

sudo apt install -y "${PACKAGES[@]}"

if [ ! -f /usr/bin/bat ]; then
    sudo ln -sf /usr/bin/batcat /usr/bin/bat
fi

if [ ! -f /usr/bin/fd ]; then
    sudo ln -sf /usr/bin/fdfind /usr/bin/fd
fi

echo "==> Apt packages installed!"

echo "==> Installing snap packages..."
sudo snap install nvim --classic
sudo snap install yazi
