## Settings
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Case insensitive tab completion
zstyle ':completion:*' rehash true # automatically find new executables in path

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zsh

HISTFILE=~/.cache/zsh/zhistory
HISTSIZE=1000
SAVEHIST=500

# Import ssh keys in keychain
ssh-add -A 2>/dev/null;
