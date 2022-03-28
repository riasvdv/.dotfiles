# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# And include the parameter for ZSH
export HISTORY_IGNORE="(ls|cd|cd -|pwd|exit|date|* --help)"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Path to n
export N_PREFIX="${HOME}/.n"

# Path to npm packages
export NPM_PACKAGES="${HOME}/.npm-packages"

# Path to starship config
export STARSHIP_CONFIG="${HOME}/.dotfiles/zsh/starship.toml"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH

# Add `~/.npm-packages/share/man` to the `$MANPATH`
export MANPATH="${NPM_PACKAGES}/share/man:$(manpath)"

# Prepend paths
declare -a DIRS=(
	"/usr/local/bin"
	"/usr/local/sbin"
	"${N_PREFIX}/bin"
	"${NPM_PACKAGES}/bin"
	"${HOME}/bin"
	"${HOME}/.composer/vendor/bin"
	"${HOME}/.yarn/bin"
	"${HOME}/go/bin"
)

for x in "${DIRS[@]}"; do
  [[ -d "$x" ]] && PATH="${x}:${PATH}"
done

unset DIRS
export PATH
