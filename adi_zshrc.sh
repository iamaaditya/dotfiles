# Changes to custom zshrc by Adi Prakash#
#
# most import change
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# History related settings
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory

export EDITOR=vim

# https://raw.githubusercontent.com/rupa/z/master/z.sh (like autojump)
source ~/dotfiles/z.sh
source ~/dotfiles/aliases.sh
source ~/dotfiles/git_aliases.sh
source ~/dotfiles/my_functions.sh
source ~/helper_libs/bash-wakatime/bash-wakatime.sh
source ~/dotfiles/antigen.zsh
# source ~/dotfiles/history.sh # works only with BASH and not ZSH 

# source ~/.oh-my-zsh/custom/plugins/zsh-wakatime/zsh-wakatime.plugin.zsh
plugins=(zsh-wakatime)
# source ~/.oh-my-zsh/oh-my-zsh.sh

export KEYTIMEOUT=1


#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY 


# xmodmap ~/.speedswapper

function chpwd(){
     ll
    tmux rename-window ${PWD//*\//} 
}


#ll() {
    #ls -lrth
    #tmux rename-window ${PWD//*\//} 
#}
#export TERM=xterm-256color
#export TERM=xterm-256color
# making code place as variable
# export c=~/Dropbox/codes

# makes VIM as the viewer (pager) for the man pages
# export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    # vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    # -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    # -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""


#CUDA Path
export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CUDA_HOME}/lib64
export PATH=$PATH:${CUDA_HOME}/bin
export PYTHON_INCLUDE_DIRS=$PYTHON_INCLUDE_DIRS:/usr/include/python2.7 
export PYTHON_LIBRARY=$PYTHON_LIBRARY:/usr/lib/python2.7/config/libpython2.7.so
export PYTHON_LIBRARIES=$PYTHON_LIBRARIES:/usr/lib/python2.7/config/libpython2.7.so

#CUDNN
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/cuda_cudnn7.0

#bazel (from google)
export PATH=$PATH:~/bazel/output

export LIBRARY_DIRS=$LIBRARY_DIRS:/home/ap/anaconda2/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/anaconda2/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/torch/install/include/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu

#OpenCV
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
#Pythonpath
# export PYTHONPATH=/home/ap/caffe/python:/home/ap/caffe/python/caffe:$PYTHONPATH
export PYTHONPATH=/home/ap/caffe/python:$PYTHONPATH

export OMP_NUM_THREADS=`nproc`
export PYTHONPATH="$PYTHONPATH:~/deepy/"
export PYTHONPATH="$PYTHONPATH:~/image_compression/vmaf/python"



# Anaconda path
# export PATH="/home/ap/anaconda2/bin:$PATH"

# export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export JAVA_HOME/usr/bin/


# A shortcut function that simplifies usage of xclip.
# - Accepts input from either stdin (pipe), or params.
# ------------------------------------------------
cb() {
  local _scs_col="\e[0;32m"; local _wrn_col='\e[1;31m'; local _trn_col='\e[0;33m'
  # Check that xclip is installed.
  if ! type xclip > /dev/null 2>&1; then
    echo -e "$_wrn_col""You must have the 'xclip' program installed.\e[0m"
  # Check user is not root (root doesn't have access to user xorg server)
  elif [[ "$USER" == "root" ]]; then
    echo -e "$_wrn_col""Must be regular user (not root) to copy a file to the clipboard.\e[0m"
  else
    # If no tty, data should be available on stdin
    if ! [[ "$( tty )" == /dev/* ]]; then
      input="$(< /dev/stdin)"
    # Else, fetch input from params
    else
      input="$*"
    fi
    if [ -z "$input" ]; then  # If no input, print usage message.
      echo "Copies a string to the clipboard."
      echo "Usage: cb <string>"
      echo "       echo <string> | cb"
    else
      # Copy input to clipboard
      echo -n "$input" | xclip -selection c
      # Truncate text for status
      if [ ${#input} -gt 80 ]; then input="$(echo $input | cut -c1-80)$_trn_col...\e[0m"; fi
      # Print status.
      echo -e "$_scs_col""Copied to clipboard:\e[0m $input"
    fi
  fi
}
# Aliases / functions leveraging the cb() function
# ------------------------------------------------
# Copy contents of a file
function cbf() { cat "$1" | cb; }
# Copy SSH public key
# alias cbssh="cbf ~/.ssh/id_rsa.pub"
# Copy current working directory
alias cbwd="pwd | cb"
# Copy most recent command in bash history
alias cbhs="cat $HISTFILE | tail -n 1 | cb"

cdd()
{
  cd "$1" ; l
}

# alias hll="hdfs dfs -ls"
# alias hh="hdfs dfs"

code()
{

    cd ~/Dropbox/codes/;
    cd "$1" ;
    ls -lrth

}

# Make a backup with current date
bck()
{
  cp "$1" "$1.__backup__`date +%d-%h-%Y`"
}


## DICTIONARY FUNCTIONS ##
def () { curl dict://dict.org/d:${1}:wn; }
dacron () { curl dict://dict.org/d:${1}:vera; }
djargon () { curl dict://dict.org/d:${1}:jargon; }
dfoldoc () { curl dict://dict.org/d:${1}:foldoc; }
dthesaurus () { curl dict://dict.org/d:${1}:moby-thes; }

## WIKIPEDIA SEARCH FUNCTION ##
wiki() {
# echo -n -e "\n============================================\n\tWelcome to WikiPedia Search"; echo ""; i=1 ; for line in $(lynx --dump "https://en.wikipedia.org/w/index.php?title=Special%3ASearch&profile=default&search=$1&fulltext=Search" | grep http://en.wikipedia.org/wiki | cut -c7-); do echo $i $line; lines[ $i ]=$line ;  i=$(($i+1)); done ; echo -n -e "\n============================================\n\tPlease select the link to open - "; read answer; w3m ${lines[ $answer ]}
lynx --dump https://en.wikipedia.org/wiki/$1 | sed 's/\[[^]]*\]//g' | less
}

## SEP SEARCH FUNCTION ##
plato() {
echo -n -e "\n============================================\n\tWelcome to WikiPedia Search"; echo ""; i=1 ; for line in $(lynx --dump "http://plato.stanford.edu/search/searcher.py?query=$1" | grep http://plato.stanford.edu | cut -c7-); do echo $i $line; lines[$i]=$line ;  i=$(($i+1)); done ; echo -n -e "\n============================================\n\tPlease select the link to open - "; read answer; w3m ${lines[$answer]}
}

## EXTRACT FUNCTION ##
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}
export CAFFE_ROOT=/home/ap/caffe/build
export PYTHONPATH=$CAFFE_ROOT/python:$PYTHONPATH
eval `dircolors ~/dotfiles/dir_colors`


# print the date with the command execution
preexec () {
  DATE=`date +"%H:%M:%S on %Y-%m-%d"`
  C=$(($COLUMNS-24))
  echo -e "\033[1A\033[${C}C ${DATE} "
}


. /home/ap/torch/install/bin/torch-activate

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# configuration for hstr
export HH_CONFIG=hicolor,rawhistory        # get more colors

bindkey -s "\C-r" "hh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

# fasd
eval "$(fasd --init auto)"

export PYLEARN2_DATA_PATH=~/data

# colorize man pages

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# colorize less uses pygemtize
export LESS='-R'
export LESSOPEN='|pygmentize -g %s'

# Codi
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-python}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}

# Antigen commands

# antigen bundle git@github.com:zsh-users/zsh-syntax-highlighting
antigen bundle git@github.com:zsh-users/zsh-autosuggestions.git
# antigen bundle https://github.com/sakshamsharma/zpyi zpyi.zsh
# antigen bundle zsh-users/zsh-history-substring-search
# antigen bundle command-not-found

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=9'
bindkey '^ ' autosuggest-accept


export PATH=$PATH:~/.cargo/bin
export PYTHONSTARTUP=/home/ap/dotfiles/startup.py

tohimal() {
    rsync -azP $1/ himal:$1
}


# for Android NDK
export NDK_ROOT=/home/ap/helper_libs/android-ndk-r13b/
