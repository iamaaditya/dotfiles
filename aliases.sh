
# alias ll='ls -lrth --color=auto --hide="*.pyc"'
alias ll='k -h --no-vcs'

alias nv="nvidia-smi"
alias ff="find . -name"
alias t="/home/ap/helper_libs/todo.txt_cli-2.10/todo.sh"
alias tt="/usr/bin/time"
alias vtop="vtop --theme becca"
# alias tm="TERM=xterm-256color /usr/bin/tmux-next"
alias tm="TERM=xterm-256color /usr/bin/tmux"


alias df="pydf"
# alias top="htop"
# alias tail="multitail"

alias wnv="watch -d -n 5 -t -c nvidia-smi"

alias ggpush="git push origin master"
alias gcm="git commit -am "
alias gst="git status -sb"
alias glog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gdiff='git difftool'
alias gitorigin="git remote show origin"

alias reddit="python ~/Dropbox/codes/Python/TIL/r.py"
alias top5="ps aux | sort -rk 3,3 | head -n 6"
alias top5_="ps -eo pcpu,pid,user,args --no-headers| sort -t. -nk1,2 -k4,4 -r |head -n 5"
alias tp="top -b -n 1 -p "



# alias vi='vim'
# now is the time
alias vim='vi'
# alias vimdiff='/usr/local/bin/vimdiff'
alias vimdiff='vim -d'
# alias vi='/usr/local/bin/vim'
alias vi='nvim'
# alias tmuxa=TERM=xterm-256color /usr/bin/tmux attach
alias hourModified="find . -mmin -60"
alias hourCreated="find . -cmin -60"
alias dayModified="find . -mtime -1"

alias campus="ssh aprakash@129.64.2.200"
alias erdos="ssh aprakash@erdos.cs-i.brandeis.edu"
alias deer="ssh aprakash@deerstalker.cs.brandeis.edu"
alias hpc="ssh aprakash@hpc64.brandeis.edu"
alias html="cd /var/www/html"
alias big1="ssh bigdata1@deerstalker.cs.brandeis.edu"

# alias ls='~/dotfiles/pilsner'
#alias ls='k -h'
alias lsd="ls -lartd */"

alias c="pygmentize -g"

alias e="dirs -v | head -10"

alias fl="find . -name"

# fasd
alias v='f -e nvim'


# cuts https://github.com/arielf/cuts
alias cuts='~/command_line_libs/cuts/cuts'


# eplot
alias eplot='~/eplot -p'
alias ec='~/ec'

alias vp='vi *.py'

# Make pretty
alias prt='~/dotfiles/make_pretty.sh'

# Switch Tmux sessions
alias sw='~/dotfiles/switch-create-attach.sh'

# show directories
alias dir='ls -ld */'

# open in vim the selected file
alias va='~/dotfiles/select_file.sh'

# facebook fpp
alias fpp='~/helper_libs/fpp'

# search in history
alias hag='history | ag '


# compare jsons
alias cj='python ~/submissions_vqa/code/compare_jsons.py -files '

# aliases for CUDA_VISIBLE_DEVICES
alias c0=CUDA_VISIBLE_DEVICES=0
alias c1=CUDA_VISIBLE_DEVICES=1
alias c2=CUDA_VISIBLE_DEVICES=2
alias c3=CUDA_VISIBLE_DEVICES=3
alias cnull=CUDA_VISIBLE_DEVICES=''

alias pypy='/home/ap/helper_libs/pypy-c-jit-86749-24d11640c483-linux64/bin/pypy'

nvp() { 
    ps f -o user,pgrp,pid,pcpu,pmem,start,time,command -p `lsof -n -w -t /dev/nvidia*`
}

alias sap='sudo apt-get install -y '
alias whogpu='python ~/dotfiles/who_is_using_gpu.py'
alias wg='python ~/dotfiles/who_is_using_gpu.py'
alias kb='~/dotfiles/kanban'

function p {
    echo "\n\n---------------------------------\n"
}

function count_files {
    find -maxdepth 1 -type d | while read -r dir; do printf "%s:\t" "$dir"; find "$dir" -type f | wc -l; done
}

alias wc_recursive="find -maxdepth 1 -type d | while read -r dir; do printf "%s:\t" "$dir"; find "$dir" -type f | wc -l; done"

alias ps_by_time="ps -eo start_time,pid,euser,args:100 --sort start_time"

alias mv_ten="ls . | shuf -n 10 | xargs -I '{}' mv '{}' ../../test/`basename $PWD`/"

alias lp='ll *.py'
alias grep_all="git branch -a | tr -d \* | xargs git grep"

findtime() {
 find . -name $1 -printf "%T+\t%p\n" | sort
}

run(){
    CUDA_VISIBLE_DEVICES=3 python $1 
}

bashcompinit(){
            # undefined
            builtin autoload -XU
}

alias ds="du -sh * | sort -h"

alias ax="axel -n 20 -a"

count_uniq(){
cat $1 | tr " " "\n" | sort | uniq| wc -l
}

fix_backspace(){
    cat $1 | col -b | tee $1_
    /bin/mv $1_ $1
}

fix_backspace_many(){
    for var in "$@"
    do
        fix_backspace $var
    done
}
alias fbs=fix_backspace
alias pp=ptipython

latest(){
    l=$(ls -Art | tail -n 1)
    tail -F $l
}
alias lt=latest


organize(){
  for x in *; do
    d=$(date -r "$x" +%m-%d)
    mkdir -p "$d"
    mv -- "$x" "$d/"
  done
}

# alias tag="~/dotfiles/tag"

alias delete_zero="find . -size  0 -print0 | xargs -0 rm"

alias lw='~/dotfiles/line_watch.sh'

