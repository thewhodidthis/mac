## about

Contains personal preferences and configurations for everyday commands and programs.

| File               | Summary                                                                                         |
|:------------------ |:----------------------------------------------------------------------------------------------- | 
| _cvsignore_        | A global, `-C` flag equivalent, whitespace delimited list of files for `rsync(1)` to ignore     |
| _editorconfig_     | Unified per language settings, using spaces instead of tabs no question                         |
| _gitconfig_        | Global settings such as `user.email` and [aliases]                                              |
| _gitignore_        | A global `core.excludesfile` for `$HOME`                                                        |
| _hushlogin_        | Makes `login(1)` quieter                                                                        |
| _inputrc_          | Up and down arrow key bindings for `readline(3)`                                                |
| _irbrc_            | Cosmetic tweaks for when running [interactive Ruby]                                             |
| _kshrc_            | [KornShell] aliases, functions, and enabling **emacs** mode                                     |
| _lesskey_          | Placed into `$HOME` and run `lesskey(1)` to generate `~/.less` and avoid `~/.lesshst` creation  |
| _nanorc_           | Tweaks for indentation, wrapping, enabling mouse support                                        |
| _npmrc_            | Defaults for `npm-init(1)` for auto populating `package.json` for example                       |
| _profile_          | Initialization file executed for login shells after `/etc/profile`, prompt settings etc.        |
| _screenrc_         | Turn off `startup_message` ao.                                                                  |
| _tidyrc_           | As handy as `tidy(1)` may be, some of the defaults (eg. wrapping) are extremely annoying        |
| _vimrc_            | Be IMproved                                                                                     |
| _wgetrc_           | Saner defaults for when downloading pages recursively for example                               |

[aliases]: https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases
[interactive Ruby]: https://github.com/ruby/irb
[KornShell]: https://man.openbsd.org/ksh

## setup

Download someplace convenient. For example,

```sh
# Hide inside of $HOME directory, no pun intended :)
git clone https://github.com/thewhodidthis/dotfiles ~/.files
```

## usage

Make links or copy as appropriate prefixing with a `.` to install. For example,

```sh
# Create symbolic links for all "runcom" files, but OK
# maybe only some of these are needed to begin with
find *rc -type f -exec ln -fs ~/.files/{} ~/.{} \;
```

Save local changes separately. For example,

```sh
# Start a new branch to keep track of per machine
# edits named after eg. `hostname(1)`
git checkout -b gina
```

Adjust `$PATH` and build further by adding executables into `~/.files/bin`. For example,

```sh
# Good for custom scripts or else inaccessible commands
export PATH="$HOME/.files/bin:$PATH"

# Bring the macOS built-in JS REPL as little closer
ln -s /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc ~/.files/bin
```

Would rather be using Bash? No problem, just `ln -fs ~/.files/kshrc ~/.bashrc`, then source in `~/.profile` along the lines of:

```sh
if [[ -f "$HOME/.bashrc" ]]; then
  . "$HOME/.bashrc"
fi
```

## see also

- [GitHub does dotfiles](https://dotfiles.github.io)
- [GNU Stow](https://www.gnu.org/software/stow/)
