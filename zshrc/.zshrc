# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Initialize completion
autoload -U compinit; compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# FZF colors
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--color=border:#313244,label:#cdd6f4"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Add GOPATH to PATH if it exists
if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

# Opt contains binaries
export PATH=$PATH:$HOME/opt

# Opt contains binaries
export PATH=$PATH:$HOME/opt

alias ll='ls -alF'

eval "$(starship init zsh)"

