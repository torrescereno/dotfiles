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
# FNM_PATH="/home/torrescereno/.local/share/fnm"
# if [ -d "$FNM_PATH" ]; then
#   export PATH="/home/torrescereno/.local/share/fnm:$PATH"
#   eval "`fnm env`"
# fi
#
# eval "$(fnm env --use-on-cd --shell zsh)"


# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# pnpm
export PNPM_HOME="/home/torrescereno/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Angular CLI
source <(ng completion script)

# Pipx
export PATH="$PATH:/home/torrescereno/.local/bin"

# Atuin
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

# Aliases
alias ls="eza --icons --color=always"
alias ll="eza -lh -g --icons"
alias la="eza -a --icons"
alias c='clear'
alias n='nvim'
alias a='source venv/bin/activate'
alias d='deactivate'
alias t='tmux'
alias z='zellij'
alias yz='yazi'
alias lg='lazygit'
