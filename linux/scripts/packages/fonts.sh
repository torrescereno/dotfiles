#!/bin/bash
set -e

echo "==> Installing Nerd Fonts..."

FONTS_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONTS_DIR"

FONT_NAME="CaskaydiaCove"
FONT_VERSION=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | jq -r '.tag_name')
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/${FONT_VERSION}/${FONT_NAME}.zip"

tmp_dir=$(mktemp -d)
cd "$tmp_dir"

echo "  Downloading $FONT_NAME Nerd Font..."
curl -sL "$FONT_URL" -o font.zip
unzip -q font.zip -d extracted

find extracted -name "*.ttf" -exec mv {} "$FONTS_DIR/" \;

cd - > /dev/null
rm -rf "$tmp_dir"

echo "  Refreshing font cache..."
fc-cache -fv "$FONTS_DIR" 2>/dev/null || true

echo "==> Nerd Fonts installed!"
