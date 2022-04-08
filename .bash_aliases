# DDG aliases
[ -f ~/.ddg_aliases ] && source ~/.ddg_aliases
[ -f ~/.dev_aliases ] && source ~/.dev_aliases

# User defined aliases below

## USERLAND ##
##############

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

# Systemd
alias jctl='journalctl'
alias jkctrl='journalctl -k -f'

## GIT (separate from .gitconfig) ##
####################################

# Generate diff between latest commit & current state
alias gdf='git diff-index --quiet HEAD -- || clear; git --no-pager diff --patch-with-stat'
