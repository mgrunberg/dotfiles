# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export NVM_AUTO_USE=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git-prompt zsh-syntax-highlighting history-substring-search ng web-search zsh-nvm common-aliases zsh-completions)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# Add gitstatus to prompt
PROMPT='%B%m@%{$fg[blue]%}$(rvm-prompt)%{$fg[white]%}%~%b$(git_super_status) %# '
# Clear right prompt
RPROMPT=''

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=${PATH}:~/.local/bin

export QT_QPA_PLATFORM=""

# for zsh-completions plugin (it is a bit slow)
autoload -U compinit && compinit

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
