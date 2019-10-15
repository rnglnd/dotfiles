# Path to your oh-my-zsh installation.
export ZSH="/Users//.oh-my-zsh"

# Set theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# PLUGINS
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# LANGUAGE
export LANG=en_GB.UTF-8

# ALIASES

# Git
alias gi="git init && gac 'init'"

alias gs="git status"
alias glog='git log --graph --all --decorate'
alias gac="git add . && git commit -m" # + commit message

alias gp="git push" # + remote & branch names
alias gpo="git push origin" # + branch name
alias gpom="git push origin master"

alias gl="git pull" # + remote & branch names
alias glo="git pull origin" # + branch name
alias glom="git pull origin master"

alias gb="git branch" # + branch name
alias gc="git checkout" # + branch name
alias gcb="git checkout -b" # + branch name

alias gm="git merge" # + branch name
alias gmm="git merge master"
alias gmd="git merge develop"

alias gr="git reset"
alias grh="git reset --hard"
alias grs="git reset --soft"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
