# vi mode
bindkey -e
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Automatically cd into typed directory.
setopt autocd

# Basic auto/tab complete (using fzf-tab now, this is just in case I don't have that installed)
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U colors && colors
