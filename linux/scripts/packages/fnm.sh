#!/bin/bash
set -e

echo "==> Installing fnm..."

if command -v fnm &> /dev/null; then
    echo "  fnm already installed, skipping..."
    exit 0
fi

curl -fsSL https://fnm.vercel.app/install | bash

if ! grep -q 'fnm env' "$HOME/.zshrc" 2>/dev/null; then
    cat >> "$HOME/.zshrc" << 'EOF'

# fnm
export PATH="$HOME/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd --shell zsh)"
EOF
fi

echo "==> fnm installed!"
echo "    Restart your shell or run: source ~/.zshrc"
