# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-git-prompt zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh
#source $HOME/.bash_aliases

# User configuration

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
#export PATH=${PATH}:~/apps/adt-bundle-linux-x86_64-20140702/sdk/tools
#export PATH=${PATH}:~/apps/adt-bundle-linux-x86_64-20140702/sdk/platform-tools

#export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
