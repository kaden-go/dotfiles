# Customize prompt colors
autoload -U colors && colors
PS1='%F{39}%n@%m%f%b %F{210}%~:%F{255} '

alias load='nvim ~/.zshrc'
alias reload='source ~/.zshrc'

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
