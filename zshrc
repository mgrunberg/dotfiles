# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git-prompt zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# Add gitstatus to prompt
PROMPT='%B%m@%{$fg[blue]%}$(rvm-prompt)%{$fg[white]%}%~%b$(git_super_status) %# '
# Clear right prompt
RPROMPT=''

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=${PATH}:~/apps/adt-bundle-linux-x86_64-20140702/sdk/tools
export PATH=${PATH}:~/apps/adt-bundle-linux-x86_64-20140702/sdk/platform-tools

export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export ANDROID_HOME="/home/matias/Android/Sdk"
export QT_QPA_PLATFORM=""

# Docker
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export NVM_DIR="/home/matias/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
