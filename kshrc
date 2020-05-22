# Make readline like
set -o emacs

# Make safe
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Tweak for readability
alias df='df -kTh'
alias du='du -kh'

# Make pretty
alias ls='ls -lG'

# Show hidden
alias ll='ls -a'

# Jump up a level real quick
alias ..='cd ..'

# Help with $TERM title because ksh(1) lacks $COMMAND_PROMPT or `precmd` hooks
# https://unix.stackexchange.com/questions/334982
title() {
  # Produces a bracketless $PS1 and even if Terminal.app refers to 'Ps' as
  # likely 6 or 7 in the 'ESC ] Ps ; Pt BEL' escape sequence, choosing 0
  # helps avoid the silly icons that are otherwise added in
  printf '\e]0;%s\a' "$(hostname -s):$(basename `pwd`)"
}

# When logging in/out
ssh() {
  command ssh "$@"; title
}

# When switching directories
cd() {
  command cd "$@"; title
}

# When opening a new tab or window
title
