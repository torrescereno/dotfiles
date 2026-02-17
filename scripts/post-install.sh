#!/bin/bash
set -e

echo "==> Running post-install setup..."

echo "  Installing TPM (Tmux Plugin Manager)..."
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ ! -d "$TPM_DIR" ]; then
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
    echo "    TPM already installed, updating..."
    cd "$TPM_DIR" && git pull
fi

echo "  Installing tmux plugins..."
if [ -f "$HOME/.config/tmux/tmux.conf" ]; then
    "$TPM_DIR/bin/install_plugins" 2>/dev/null || echo "    Run 'prefix + I' in tmux to install plugins manually"
fi

CURRENT_SHELL=$(basename "$SHELL")
if [ "$CURRENT_SHELL" != "zsh" ]; then
    echo "  Changing default shell to zsh..."
    chsh -s "$(which zsh)" || echo "    Could not change shell automatically. Run: chsh -s \$(which zsh)"
fi

echo "==> Post-install setup complete!"
echo ""
echo "    Next steps:"
echo "    1. Restart your terminal or run: exec zsh"
echo "    2. Open tmux and press 'prefix + I' to install plugins"
echo "    3. Open nvim and let LazyVim install plugins"
