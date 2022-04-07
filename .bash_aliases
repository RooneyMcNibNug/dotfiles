## USERLAND

# Changing directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Listing processes in order of which is using the most memory/CPU
alias mtop="top -o %MEM"
alias ctop="top -o %CPU"

# Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## GIT (separate from .gitconfig)

# Generate diff between latest commit & current state
alias gdf='git diff-index --quiet HEAD -- || clear; git --no-pager diff --patch-with-stat'