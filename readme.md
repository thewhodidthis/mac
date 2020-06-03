## about

Contains personal preferences and initial configurations for everyday commands and programs across Unix-like systems.

## setup

Download somewhere convenient,

```sh
# Hide inside of $HOME directory, no pun intended :)
git clone https://github.com/thewhodidthis/dotfiles ~/.files
```

## usage

Make links or copy as appropriate naturally prefixing with a `.` to install. For example,

```sh
# OK maybe only some of these are needed to begin with
find *rc -type f -exec ln -fs ~/.files/{} ~/.{} \;
```

Save local changes separately. For example,

```sh
# Start a new branch to keep track of per machine
# edits named after eg. `/etc/hostname`
git checkout -b gina
```

Expand by adding custom commands into `~/.files/bin` for example,

```sh
# Bring the macOS built-in JS REPL as little closer
ln -s /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc ~/.files/bin
```

Using `bash(1)`? No problem,

```sh
ln -fs ~/.files/kshrc ~/.bashrc
```

Then source inside of `~/.profile` as follows:

```sh
if [[ -f "$HOME/.bashrc" ]]; then
  . "$HOME/.bashrc"
fi
```

## see also

- [GitHub does dotfiles](https://dotfiles.github.io)
- [GNU Stow](https://www.gnu.org/software/stow/)
