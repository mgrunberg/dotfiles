alias b="bundle exec"

alias br='bundle exec rails'
alias zbr='zeus rails'

#alias git=hub

alias st='git status'
alias c="git commit -m $1"
alias ca="git commit --amend"
alias ga="git add -p"
alias gt='gitk --all'
alias tg='tig --all'

alias bm='b rake db:migrate db:test:prepare'
alias bmm='b rake db:migrate && b rails db:migrate RAILS_ENV=test'
alias zbm='zeus rake db:migrate db:test:prepare'
alias gg='git grep -n --color'
#alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
#alias gl='git log --oneline --decorate --all --graph'
alias gl='git lg'
#alias ppr='git promote && hub pull-request'
alias ppr='gh pr create'
alias prv='gh pr view -w'

alias dev='npm run dev'

alias gdnolocks="git diff $1 ':!package-lock.json' ':!uv.lock' ':!Gemfile.lock'"

ysess='ysess -i'
