# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

# zinit ice depth=1
# zinit light romkatv/powerlevel10k

zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/Starship

zinit light joshskidmore/zsh-fzf-history-search
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit

ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES=1

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# fnm
# FNM_PATH="$HOME/.local/share/fnm"
# if [ -d "$FNM_PATH" ]; then
#   export PATH="$HOME/.local/share/fnm:$PATH"
#   eval "`fnm env`"
# fi

# eval "$(fnm env --use-on-cd --shell zsh)"


# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# pnpm
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PNPM_HOME="$HOME/Library/pnpm"
else
  export PNPM_HOME="$HOME/.local/share/pnpm"
fi
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Angular CLI
command -v ng &>/dev/null && source <(ng completion script)

# Pipx / local bin
export PATH="$PATH:$HOME/.local/bin"

# Neovim (Linux only — macOS uses Homebrew)
if [[ "$OSTYPE" == "linux"* ]]; then
  export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
fi

# Homebrew (macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
  if [[ -f "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [[ -f "/usr/local/bin/brew" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

# Atuin
eval "$(atuin init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Aliases
alias ls="eza --icons --color=always"
alias ll="eza -lh -g --icons -a"
alias la="eza -a --icons"
alias c='clear'
alias n='nvim'
alias a='source venv/bin/activate'
alias ac='source .venv/bin/activate'
alias d='deactivate'
alias t='tmux'
alias zl='zellij'
alias yz='yazi'
alias lg='lazygit'
alias op='opencode'
alias ag='antigravity .'

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias up='brew update && brew upgrade && brew cleanup'
else
  alias up='sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y'
fi
