# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export NVM_AUTO_USE=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git-prompt zsh-syntax-highlighting history-substring-search ng web-search zsh-nvm common-aliases zsh-completions copyfile)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# Custom prompt format: add rvm & nvm prompts. Also add line break
node-prompt() {
 echo "$fg[white]|$fg[green]node-$(nvm_prompt_info)"
}

ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✘%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✓%G%}"
PROMPT='%B%m@%{$fg[blue]%}$(rvm-prompt)$(node-prompt)%{$fg[white]%}%~%b$(git_super_status)'$'\n''() -> '
# Clear right prompt
RPROMPT=''

# User configuration

export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH=${PATH}:~/.local/bin
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$PATH

export QT_QPA_PLATFORM=""

# for zsh-completions plugin (it is a bit slow)
autoload -U compinit && compinit

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
