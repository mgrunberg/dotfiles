# mgrunberg Dot Files

These are config files to set up a system the way I like it.

## Pre-requisites

- git
- tmux (https://github.com/tmux/tmux/wiki/Installing)

```
apt install tmux
```

- zsh (https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

```
apt install zsh
```

- ohmyzsh (https://ohmyz.sh/#install)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Installation

Run the following commands in your terminal.

```terminal
git clone git://github.com/mgrunberg/dotfiles ~/.dotfiles
cd ~/.dotfiles
./bin/install
```

After installing, open a new terminal window to see the effects.

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.vim
unlink ~/.bash_aliases
unlink ~/.gemrc
unlink ~/.gitconfig
unlink ~/.gitignore
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.tmux.conf
unlink ~/.vimrc
unlink ~/.zshrc # careful here
```

Then open a new terminal window to see the effects.
