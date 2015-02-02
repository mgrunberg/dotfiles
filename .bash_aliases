alias b="bundle exec"

alias br='bundle exec rails'
alias zbr='zeus rails'

alias git=hub

alias st='git status'
alias c="git commit -m $1"
alias ga="git add -p"
alias gp='git pull --rebase'
alias gd='git diff'
alias gdw='git diff --word-diff'

alias bm='b rake db:migrate db:test:prepare'
alias zbm='zeus rake db:migrate db:test:prepare'
alias gg='git grep -n --color'
#alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='git lg'
alias ppr='git promote && hub pull-request'

ysess='ysess -i'
