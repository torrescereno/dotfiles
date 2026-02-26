# Dotfiles

Personal dotfiles for Debian/Ubuntu-based Linux distributions.

## Quick Start

```bash
git clone https://github.com/torrescereno/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./scripts/install.sh
```

## Structure

```
dotfiles/
├── stow/              # GNU Stow packages (symlinks)
│   ├── zsh/
│   ├── nvim/
│   ├── ghostty/
│   ├── tmux/
│   ├── zellij/
│   ├── lazygit/
│   ├── alacritty/
│   └── kitty/
├── scripts/
│   ├── install.sh     # Main installer
│   ├── stow.sh        # Create symlinks
│   ├── post-install.sh
│   └── packages/
│       ├── apt.sh     # Base packages
│       ├── tools.sh   # CLI tools
│       ├── fonts.sh   # Nerd Fonts
│       ├── pyenv.sh   # Python version manager
│       └── fnm.sh     # Node version manager
└── crkbd/             # Keyboard firmware
```

## What's Installed

### Apt Packages
- `zsh`, `git`, `curl`, `wget`, `stow`, `tmux`
- `ripgrep`, `fd-find`, `bat`, `fzf`, `jq`, `duf`

### Snap Packages
- `nvim` - Neovim editor
- `yazi` - Terminal file manager

### CLI Tools (from GitHub releases)
- `uv` - Fast Python package manager
- `atuin` - Better shell history
- `eza` - Modern ls replacement
- `bottom` (btm) - System monitor
- `dust` - Modern du
- `procs` - Modern ps
- `delta` - Better git diff
- `lazygit` - Git TUI
- `lazydocker` - Docker TUI
- `zoxide` - Smart cd command
- `kubectl` - Kubernetes CLI

### Version Managers
- `pyenv` - Python version management
- `fnm` - Node.js version management

### Applications
- `ghostty` - Terminal emulator

### Fonts
- CaskaydiaCove Nerd Font

## Configurations

| Tool | Description |
|------|-------------|
| zsh | Zinit, Starship, plugins |
| nvim | LazyVim distribution |
| ghostty | Terminal config |
| tmux | TPM + gruvbox theme |
| zellij | Terminal multiplexer |
| lazygit | Git TUI |
| alacritty | Terminal (alternative) |
| kitty | Terminal (alternative) |

## Adding a New Tool

1. Create a directory in `stow/`:
   ```bash
   mkdir -p stow/toolname/.config/toolname
   ```

2. Add your config files:
   ```bash
   cp ~/.config/toolname/* stow/toolname/.config/toolname/
   ```

3. Add to `scripts/stow.sh`:
   ```bash
   PACKAGES=(... toolname)
   ```

4. If the tool needs installation, add to `scripts/packages/tools.sh` or create a new script in `packages/`.

## Partial Installation

```bash
# Only apt packages
./scripts/packages/apt.sh

# Only CLI tools
./scripts/packages/tools.sh

# Only symlinks
./scripts/stow.sh
```

## Post-Install

After running the installer:

1. Restart your terminal or run `exec zsh`
2. Open tmux and press `prefix + I` to install plugins
3. Open nvim and let LazyVim install plugins
