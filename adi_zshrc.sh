# Changes to custom zshrc by Adi Prakash#
#
# most import change
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1
#
xmodmap ~/.speedswapper
alias ll="ls -lrth"
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
# making code place as variable
export c=~/Dropbox/codes
#export PATH=$PATH:/opt/pypy-2.4.0-linux64/bin
#export PATH=$PATH:/home/ap/mahout/bin
#export PATH=$PATH:$HADOOP_INSTALL/bin
#export PATH=$PATH:$HADOOP_INSTALL/sbin


#CUDA Path
export CUDA_HOME=/usr/local/cuda-7.5
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CUDA_HOME}/lib64
export PATH=$PATH:${CUDA_HOME}/bin

#CUDNN
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/cuda

export LIBRARY_DIRS=$LIBRARY_DIRS:/home/ap/anaconda2/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ap/anaconda2/lib

#OpenCV
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
#Pythonpath
# export PYTHONPATH=/home/ap/caffe/python:/home/ap/caffe/python/caffe:$PYTHONPATH
export PYTHONPATH=/home/ap/caffe/python:$PYTHONPATH

#MAHOUT PATH
#export MAHOUT_PATH=/home/ap/mahout/math/target/*.jar:/home/ap/mahout/mrlegacy/target/*.jar

# Anaconda path
export PATH="/home/ap/anaconda2/bin:$PATH"

#HADOOP VARIABLES START
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
#export HADOOP_INSTALL=/usr/local/hadoop
#export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
#export HADOOP_COMMON_HOME=$HADOOP_INSTALL
#export HADOOP_HDFS_HOME=$HADOOP_INSTALL
#export YARN_HOME=$HADOOP_INSTALL
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_INSTALL/lib/native
#export HADOOP_OPTS="-Djava.library.path=$HADOOP_INSTALL/lib"


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
alias cbssh="cbf ~/.ssh/id_rsa.pub"
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
  cp "$1" "$1.__backup__`date`"
}


## DICTIONARY FUNCTIONS ##
def () { curl dict://dict.org/d:${1}:wn; }
dacron () { curl dict://dict.org/d:${1}:vera; }
djargon () { curl dict://dict.org/d:${1}:jargon; }
dfoldoc () { curl dict://dict.org/d:${1}:foldoc; }
dthesaurus () { curl dict://dict.org/d:${1}:moby-thes; }

## WIKIPEDIA SEARCH FUNCTION ##
wiki() {
echo -n -e "\n============================================\n\tWelcome to WikiPedia Search"; echo ""; i=1 ; for line in $(lynx --dump "http://en.wikipedia.org/w/index.php?title=Special%3ASearch&profile=default&search=$1&fulltext=Search" | grep http://en.wikipedia.org/wiki | cut -c7-); do echo $i $line; lines[$i]=$line ;  i=$(($i+1)); done ; echo -n -e "\n============================================\n\tPlease select the link to open - "; read answer; w3m ${lines[$answer]}
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
