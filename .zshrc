# Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# Atuin
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

# Pipx
export PATH="$PATH:/home/torrescereno/.local/bin"


# ZINIT
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1

zinit light romkatv/powerlevel10k
zinit light joshskidmore/zsh-fzf-history-search
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES=1

# Aliases
alias ls='ls --color'
alias ll='ls -laF --color'
alias c='clear'
alias n='nvim'
alias a='source venv/bin/activate'
alias d='deactivate'
alias t='tmux'
alias z='zellij'
alias yz='yazi'
alias lg='lazygit'

