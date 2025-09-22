# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-prompt zsh-syntax-highlighting history-substring-search web-search common-aliases zsh-completions copyfile history fnm z zsh-autosuggestions sudo heroku)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# Custom prompt format: add rvm & nvm prompts. Also add line break
node-prompt() {
 echo "$fg[white]|$fg[green]node-${"$(fnm current)":1}"
}

ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✘%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✓%G%}"
PROMPT='%B%m@%{$fg[blue]%}$(rvm-prompt)$(node-prompt)%{$fg[white]%}%~%b$(git_super_status)'$'\n''() -> '
# Clear right prompt
RPROMPT=''

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.local/bin"

# Snap
export PATH="/snap/bin:$PATH"

# fnm
export PATH="$HOME/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"

# Android
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"

export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$PATH"


# rvm
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


export LC_ALL=en_US.UTF-8
export QT_QPA_PLATFORM=""

# for zsh-completions plugin (it is a bit slow)
#autoload -U compinit && compinit

bindkey '^x' autosuggest-execute

#set dark color-scheme
gsettings set org.gnome.desktop.interface "color-scheme" "prefer-dark"

