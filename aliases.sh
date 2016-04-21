
alias ll="ls -lrth --color=auto"
alias nv="nvidia-smi"
alias ff="find . -name"
alias t="/home/ap/helper_libs/todo.txt_cli-2.10/todo.sh"
alias tt="/usr/bin/time"
alias vtop="vtop --theme becca"
alias tm="TERM=xterm-256color /usr/bin/tmux"

alias df="pydf"
alias top="htop"
alias less="most"
# alias tail="multitail"

alias ggpush="git push origin master"
alias gcm="git commit -am "
alias gst="git status -sb"
alias glog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gdiff='git difftool'
alias gitorigin="git remote show origin"

alias reddit="python ~/Dropbox/codes/Python/TIL/r.py"
alias top5="ps aux | sort -rk 3,3 | head -n 6"
alias top5_="ps -eo pcpu,pid,user,args --no-headers| sort -t. -nk1,2 -k4,4 -r |head -n 5"



alias vi='vim'
alias tmuxa=TERM=xterm-256color /usr/bin/tmux attach
alias hourModified="find . -mmin -60"
alias hourCreated="find . -cmin -60"
alias dayModified="find . -mtime -1"

alias campus="ssh aprakash@129.64.2.200"
alias erdos="ssh aprakash@erdos.cs-i.brandeis.edu"
alias deer="ssh aprakash@deerstalker.cs.brandeis.edu"
alias hpc="ssh aprakash@hpc64.brandeis.edu"
alias html="cd /var/www/html"
alias big1="ssh bigdata1@deerstalker.cs.brandeis.edu"
alias lsd="ls -lartd */"

alias c="pygmentize -g"

alias e="dirs -v | head -10"


# fasd
alias v='f -e vim'


# cuts https://github.com/arielf/cuts
alias cuts='~/command_line_libs/cuts/cuts'


# eplot
alias eplot='~/eplot -p'
alias ec='~/ec'


# Make pretty
alias prt='~/dotfiles/make_pretty.sh'
