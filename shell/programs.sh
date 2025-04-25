# go
if [ -e "/usr/local/go/bin" ]; then
    path_prepend "/usr/local/go/bin"
fi

# ruby
export GEM_HOME="$HOME/gems"
if [ -e $GEM_HOME ]; then
    # Install Ruby Gems to ~/gems
    path_prepend "$HOME/gems/bin"
fi

# rbenv
if [ -e "$HOME/.rbenv" ]; then
    eval "$(rbenv init -)"
fi

# rust
if [ -e "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

# pnpm
export PNPM_HOME="/home/caleb/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Check for fzf in both user home and Homebrew locations
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
elif command -v brew &>/dev/null && [ -f "$(brew --prefix)/opt/fzf/shell/completion.zsh" ]; then
  source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
fi

# Check for fd in various locations
if command -v fd &>/dev/null || [ -e ~/.local/bin/fd ] || [ -e /opt/homebrew/bin/fd ]; then
  export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
  export FZF_ALT_C_COMMAND='fd --type d --strip-cwd-prefix'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# haskell
[ -f "/home/caleb/.ghcup/env" ] && source "/home/caleb/.ghcup/env" # ghcup-env

# Docker CLI completions.
if [ -e "$HOME/.docker/completions" ]; then
  fpath=($HOME/.docker/completions $fpath)
  autoload -Uz compinit
  compinit
fi
