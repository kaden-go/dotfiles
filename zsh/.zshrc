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

# Customize prompt colors
autoload -U colors && colors
PS1='%F{39}%n@%m%f%b %F{210}%~:%F{255} '

alias load='nvim ~/.zshrc'
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
=======
# misc
alias c='clear'
alias i='brew install' 
alias cat='bat'

# ls / dir listing
#   - GNU coreutils `ls` understands `--color=auto`
#   - macOS/BSD `ls` uses `-G`; the conditional handles both
# if ls --color=auto >/dev/null 2>&1; then
#   alias ls='ls --color=auto'          # Linux/GNU
# else
	# -a show also hidden files 
	# -G enabled colorized output
	# -h display file size in human readable format 
	# -F display directories with /, symbolic links with @, executables with *
	# -l show list output 
  alias ls='ls -aFG'          # macOS/BSD
  alias ll='ls -alFh'
# fi

# grep / egrep / fgrep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# diff (GNU diff supports `--color`)
alias diff='diff --color=auto'

# git (Git ships with its own color config)
git config --global color.ui auto

# tree (if installed)
if command -v tree >/dev/null 2>&1; then
  alias tree='tree -C'                # force color on BSD/macOS builds
fi

# navigation
alias ..='cd .. && ls'
alias ...='cd ../.. && ls'
alias ....='cd ../../.. && ls'
 
export PATH="$HOME/.local/bin:$PATH"
