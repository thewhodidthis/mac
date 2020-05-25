# Tweak main prompt rephrasing '[\h:\W]\$ ' because
# the ksh(1) version that ships with macOS lacks
# backslash-escaped special character support
export PS1='[$(hostname -s):${PWD##*/}]\$ '

# Load options, aliases, functions
export ENV="$HOME/.kshrc"

# Override '.sh_history' default
export HISTFILE="$HOME/.history"

# Dedupe history
export HISTCONTROL=ignoredups

# Set default locale, use $LC_ALL for blanket overriding if need be
export LANG=en_US.UTF-8
