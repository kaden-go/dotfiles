# Prompt with git branch
get_git_branch() {
  git branch 2>/dev/null | sed -n 's/^\* \(.*\)/\1/p'
}

precmd() {
  local branch=$(get_git_branch)
  if [ -n "$branch" ]; then
    PS1="%F{39}%n%f:%F{210}%1~%F{39} (%F{210}$branch%F{39}):%F{255} $ " 
  else
    PS1="%F{39}%n%f:%F{210}%1~:%F{255} $ "
  fi
}


alias load='vim ~/.zshrc'
alias reload='source ~/.zshrc'

# useful 
alias l='ls -la'
alias c='clear'
alias i='brew install' 
alias cat='bat'

# navigation
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

# frequently used directories
alias 2c='cd ~/Documents/code'
alias doc='cd ~/Documents'

# git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline -10'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gst='git stash'
alias gsp='git stash pop'
alias gm='git merge'
alias gr='git rebase'
alias gf='git fetch'
alias glog='git log --graph --oneline --decorate --all'


# Cross-platform PATH setup
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  export PATH="/opt/homebrew/bin:$PATH"
  export PATH="/usr/local/bin:$PATH"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux
 if command -v brew &> /dev/null; then
    export PATH="$(brew --prefix)/bin:$(brew --prefix)/opt:$PATH"
  fi
fi

# Starship prompt
eval "$(starship init zsh)"
