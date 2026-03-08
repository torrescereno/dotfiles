# Dotfiles

Personal dotfiles for Linux (Debian/Ubuntu) and macOS.

## Quick Start

```bash
git clone https://github.com/torrescereno/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

**Linux:**
```bash
bash linux/scripts/install.sh
```

**macOS:**
```bash
bash mac/scripts/install.sh
```

## Structure

```
dotfiles/
├── stow/                  # GNU Stow packages (shared configs - Linux & macOS)
│   ├── zsh/
│   ├── nvim/
│   ├── ghostty/
│   ├── tmux/
│   ├── zellij/
│   ├── lazygit/
│   ├── alacritty/
│   └── kitty/
├── linux/
│   └── scripts/
│       ├── install.sh     # Main installer
│       ├── stow.sh        # Create symlinks
│       ├── post-install.sh
│       └── packages/
│           ├── apt.sh     # Base packages (apt + snap)
│           ├── tools.sh   # CLI tools (GitHub releases)
│           ├── fonts.sh   # Nerd Fonts
│           ├── pyenv.sh   # Python version manager
│           └── fnm.sh     # Node version manager
├── mac/
│   └── scripts/
│       ├── install.sh     # Main installer
│       ├── stow.sh        # Create symlinks
│       ├── post-install.sh
│       └── packages/
│           ├── brew.sh    # Homebrew packages (includes neovim, yazi)
│           ├── tools.sh   # CLI tools (via Homebrew)
│           ├── fonts.sh   # Nerd Fonts (brew cask)
│           ├── pyenv.sh   # Python version manager
│           └── fnm.sh     # Node version manager
└── crkbd/                 # Keyboard firmware
```

## What's Installed

### Linux (apt + snap)
- **Base:** `zsh`, `git`, `curl`, `wget`, `stow`, `tmux`, `ripgrep`, `fd-find`, `bat`, `fzf`, `jq`, `duf`
- **Snap:** `nvim`, `yazi`

### macOS (Homebrew)
- **Formulae:** `zsh`, `git`, `curl`, `wget`, `stow`, `tmux`, `ripgrep`, `fd`, `bat`, `fzf`, `jq`, `duf`, `neovim`, `yazi`
- **Casks:** `ghostty`, `font-caskaydia-cove-nerd-font`

### CLI Tools (both platforms)
| Tool | Description | Linux | macOS |
|------|-------------|-------|-------|
| `uv` | Fast Python package manager | install script | brew |
| `atuin` | Better shell history | install script | brew |
| `eza` | Modern ls replacement | apt repo | brew |
| `bottom` (btm) | System monitor | GitHub release | brew |
| `dust` | Modern du | GitHub release | brew |
| `procs` | Modern ps | GitHub release | brew |
| `delta` | Better git diff | GitHub release | brew |
| `lazygit` | Git TUI | GitHub release | brew |
| `lazydocker` | Docker TUI | install script | brew |
| `zoxide` | Smart cd command | install script | brew |
| `kubectl` | Kubernetes CLI | official script | brew |

### Version Managers (both platforms)
- `pyenv` - Python version management
- `fnm` - Node.js version management

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

## Partial Installation

**Linux:**
```bash
bash linux/scripts/packages/apt.sh    # Only base packages
bash linux/scripts/packages/tools.sh  # Only CLI tools
bash linux/scripts/stow.sh            # Only symlinks
```

**macOS:**
```bash
bash mac/scripts/packages/brew.sh    # Only Homebrew packages
bash mac/scripts/packages/tools.sh   # Only CLI tools
bash mac/scripts/stow.sh             # Only symlinks
```

## Adding a New Tool

1. Create a directory in `stow/`:
   ```bash
   mkdir -p stow/toolname/.config/toolname
   ```

2. Add your config files:
   ```bash
   cp ~/.config/toolname/* stow/toolname/.config/toolname/
   ```

3. Add to both `linux/scripts/stow.sh` and `mac/scripts/stow.sh`:
   ```bash
   PACKAGES=(... toolname)
   ```

4. Add installation to the appropriate platform scripts.

## Post-Install

After running the installer:

1. Restart your terminal or run `exec zsh`
2. Open tmux and press `prefix + I` to install plugins
3. Open nvim and let LazyVim install plugins
