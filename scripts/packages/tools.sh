#!/bin/bash
set -e

echo "==> Installing CLI tools..."

BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"

install_from_release() {
    local name=$1
    local url=$2
    local bin_name=$3
    local extract_cmd=$4

    echo "  Installing $name..."
    local tmp_dir=$(mktemp -d)
    cd "$tmp_dir"

    curl -sL "$url" -o archive
    eval "$extract_cmd"

    if [ -n "$bin_name" ]; then
        chmod +x "$bin_name"
        mv "$bin_name" "$BIN_DIR/$name"
    fi

    cd - > /dev/null
    rm -rf "$tmp_dir"
}

ARCH=$(uname -m)
case $ARCH in
    x86_64) ARCH="x86_64" ;;
    aarch64) ARCH="aarch64" ;;
    arm64) ARCH="arm64" ;;
esac

echo "  Installing uv..."
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "  Installing atuin..."
curl --proto '=https' -tlsv1.2 -sSf https://setup.atuin.sh | sh

echo "  Installing eza..."
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/eza-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/eza-archive-keyring.gpg] http://deb.debian.org/eza unstable main" | sudo tee /etc/apt/sources.list.d/eza.list > /dev/null
sudo apt update
sudo apt install -y eza

echo "  Installing bottom (btm)..."
BTM_VERSION=$(curl -s https://api.github.com/repos/ClementTsang/bottom/releases/latest | jq -r '.tag_name')
BTM_URL="https://github.com/ClementTsang/bottom/releases/download/${BTM_VERSION}/bottom_${ARCH}-unknown-linux-gnu.tar.gz"
tmp_dir=$(mktemp -d)
cd "$tmp_dir"
curl -sL "$BTM_URL" | tar xz
chmod +x btm
mv btm "$BIN_DIR/"
cd - > /dev/null
rm -rf "$tmp_dir"

echo "  Installing dust..."
DUST_VERSION=$(curl -s https://api.github.com/repos/bootandy/dust/releases/latest | jq -r '.tag_name')
DUST_URL="https://github.com/bootandy/dust/releases/download/${DUST_VERSION}/dust-${DUST_VERSION}-${ARCH}-unknown-linux-gnu.tar.gz"
tmp_dir=$(mktemp -d)
cd "$tmp_dir"
curl -sL "$DUST_URL" | tar xz
chmod +x dust
mv dust "$BIN_DIR/"
cd - > /dev/null
rm -rf "$tmp_dir"

echo "  Installing procs..."
PROCS_VERSION=$(curl -s https://api.github.com/repos/dalance/procs/releases/latest | jq -r '.tag_name')
PROCS_URL="https://github.com/dalance/procs/releases/download/${PROCS_VERSION}/procs-${PROCS_VERSION}-${ARCH}-linux.zip"
tmp_dir=$(mktemp -d)
cd "$tmp_dir"
curl -sL "$PROCS_URL" -o procs.zip
unzip -q procs.zip
chmod +x procs
mv procs "$BIN_DIR/"
cd - > /dev/null
rm -rf "$tmp_dir"

echo "  Installing delta..."
DELTA_VERSION=$(curl -s https://api.github.com/repos/dandavison/delta/releases/latest | jq -r '.tag_name')
DELTA_URL="https://github.com/dandavison/delta/releases/download/${DELTA_VERSION}/delta-${DELTA_VERSION}-${ARCH}-unknown-linux-gnu.tar.gz"
tmp_dir=$(mktemp -d)
cd "$tmp_dir"
curl -sL "$DELTA_URL" | tar xz --strip-components=1
chmod +x delta
mv delta "$BIN_DIR/"
cd - > /dev/null
rm -rf "$tmp_dir"

if ! command -v ghostty &> /dev/null; then
    echo "  Installing Ghostty..."
    sudo touch /etc/apt/sources.list.d/ghostty.list
    echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/ghostty.gpg] https://apt.ghostty.org/ghostty any main' | sudo tee /etc/apt/sources.list.d/ghostty.list
    sudo mkdir -p /etc/apt/keyrings
    curl -sL https://apt.ghostty.org/ghostty.gpg | sudo tee /etc/apt/keyrings/ghostty.gpg > /dev/null
    sudo apt update
    sudo apt install -y ghostty || echo "Ghostty installation failed (may need manual install)"
fi

echo "  Installing lazygit..."
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": *"v\K[^"]*')
tmp_dir=$(mktemp -d)
cd "$tmp_dir"
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
cd - > /dev/null
rm -rf "$tmp_dir"

echo "  Installing lazydocker..."
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

echo "  Installing zoxide..."
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

echo "  Installing kubectl..."
KUBECTL_ARCH="amd64"
if [ "$(uname -m)" = "aarch64" ] || [ "$(uname -m)" = "arm64" ]; then
    KUBECTL_ARCH="arm64"
fi
tmp_dir=$(mktemp -d)
cd "$tmp_dir"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/${KUBECTL_ARCH}/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/${KUBECTL_ARCH}/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
cd - > /dev/null
rm -rf "$tmp_dir"

if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.zshrc" 2>/dev/null; then
    echo "" >> "$HOME/.zshrc"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
fi

echo "==> CLI tools installed!"
