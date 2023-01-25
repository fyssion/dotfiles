# p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_CUSTOM="$HOME/.zsh-custom"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    poetry
    sudo
    dirhistory
    history
)

source $ZSH/oh-my-zsh.sh

# powershell10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Functions
source ~/.shell/functions.sh

# Aliases
source ~/.shell/aliases.sh

path_prepend "$HOME/.local/bin"

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
