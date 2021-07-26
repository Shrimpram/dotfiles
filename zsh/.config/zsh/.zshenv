if [ -e /Users/shreeram/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/shreeram/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


export GPG_TTY=$TTY
export KEYID=0x163B16EE76ED24CE

export PAGER="less -R"

export EDITOR="nvim"
export VISUAL="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add environment variables for the XDG directory specification
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

for f in "$ZDOTDIR"/"$(uname)"/zshenv*.sh; do source "$f"; done
for f in "$ZDOTDIR"/env/*.sh; do source "$f"; done
