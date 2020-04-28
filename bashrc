# Autocorrect typos when using `cd`
shopt -s cdspell

# Update window size after each command if need be
shopt -s checkwinsize

# Enable glob negation
shopt -s extglob

# e.g. `echo **/*.txt` (bash 4)
shopt -s globstar

# Append to instead of overwriting bash history file
shopt -s histappend

# Case insensitive globbing
shopt -s nocaseglob

# Make safe
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Make readable
alias df='df -kTh'
alias du='du -kh'

# Make pretty
alias ls='ls -lG'

# Show hidden
alias ll='ls -a'

# Jump up a level real quick
alias ..='cd ..'
