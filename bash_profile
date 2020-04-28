# Prompt
export PS1='\h:\W \$ '

# Vim all the things
export EDITOR='vim'
export GIT_EDITOR='vim'

# Dedupe history
export HISTCONTROL=ignoreboth:erasedups

# Set locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Find custom scripts
export PATH="$HOME/.files/bin:$PATH"

# Include options, aliases
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
