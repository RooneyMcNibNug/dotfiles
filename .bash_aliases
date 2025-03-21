## USERLAND ##
##############

# Lazier changing directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Listing processes in order of which is using the most memory/CPU
alias mtop="top -o %MEM"
alias ctop="top -o %CPU"

# Listing TCP connections sorted by most connections
alias mosttcp="netstat -ntu | awk '{print $5}' | cut -d: -f1 -s | sort | uniq -c | sort -nk1 -r"

# Grep with color
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Systemd quick info
alias jctl='journalctl'
alias jkctrl='journalctl -k -f'

# List files created today only
alias todayls='ls -al --time-style=+%D | grep `date +%D`'

# List the largest files retained within the /var dir (recursive)
alias auditvar='tree -ihafF /var | tr '[]' ' ' | sort -k1hr | head -10'

# List conents of current working directory as well as human-readble filesizes
alias lsd='ls -l; echo; du -h --max-depth 1'

## GIT (separate from .gitconfig) ##
####################################

# Generate diff between latest commit & current state
alias gdf='git diff-index --quiet HEAD -- || clear; git --no-pager diff --patch-with-stat'

## MISC ##
##########

# Using feh for randomized slideshows of photos for the whole family!
alias slideshow='feh -r ./** --cycle-once -z -Z -F -D 10'

# Play random video from current working directory (bash oneliner for https://github.com/RooneyMcNibNug/linux-scripts/blob/master/decisive_vlc.py)
alias randvid='find /path/to/videos -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.wmv" -o -name "*.m4v" \) | shuf -n 1 | xargs vlc'

# put a cute little clock in the terminal (on the top right)
alias termclock='while sleep 1; do tput sc; tput cup 0 $(($(tput cols)-29)); date; tput rc; done &'

# download a youtube link as an mp3 (great for podcasts/lectures)
alias yt-mp3='yt-dlp -f bestaudio -x --audio-format mp3 --audio-quality 0'
