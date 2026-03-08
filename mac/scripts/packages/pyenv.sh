#!/bin/bash
set -e

echo "==> Installing pyenv..."

if command -v pyenv &> /dev/null; then
    echo "  pyenv already installed, skipping..."
    exit 0
fi

# Install pyenv build dependencies via Homebrew
brew install openssl readline sqlite3 xz zlib tcl-tk

curl -sSL https://pyenv.run | bash

if ! grep -q 'pyenv init' "$HOME/.zshrc" 2>/dev/null; then
    cat >> "$HOME/.zshrc" << 'EOF'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
EOF
fi

echo "==> pyenv installed!"
echo "    Restart your shell or run: source ~/.zshrc"
