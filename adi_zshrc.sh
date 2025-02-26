# Changes to custom zshrc by Adi Prakash#
#
# most import change
# bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey "^R" history-incremental-search-backward

# History related settings
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory

# export EDITOR=nvim
export EDITOR="code -w"

# git completion for zsh
fpath=(~/dotfiles/git_completion.zsh $fpath)

# https://raw.githubusercontent.com/rupa/z/master/z.sh (like autojump)
# source ~/dotfiles/z.sh
source ~/dotfiles/aliases.sh
source ~/dotfiles/git_aliases.sh
source ~/dotfiles/my_functions.sh
source ~/dotfiles/gcloud_aliases.sh
# source ~/dotfiles/k.sh
# source /->->usr/lib/google-cloud-sdk/completion.bash.inc
# source ~/helper_libs/bash-wakatime/bash-wakatime.sh
source ~/dotfiles/antigen.zsh
# source ~/dotfiles/installed_libs.sh
# source ~/dotfiles/history.sh # works only with BASH and not ZSH 

# source ~/.oh-my-zsh/custom/plugins/zsh-wakatime/zsh-wakatime.plugin.zsh
# plugins=(zsh-wakatime)
# source ~/.oh-my-zsh/oh-my-zsh.sh

export KEYTIMEOUT=1


#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY 


# xmodmap ~/.speedswapper



#ll() {
    #ls -lrth
    #tmux rename-window ${PWD//*\//} 
#}
#export TERM=xterm-256color
#export TERM=xterm-256color
# making code place as variable


# makes VIM as the viewer (pager) for the man pages
# export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    # vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    # -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    # -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""



# this command does not work on OSX (or FreeBSD) only on GNU
# eval `dircolors ~/dotfiles/dir_colors`


# . /home/ap/torch/install/bin/torch-activate

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#bindkey '^T' fzf-history-widget

 alias hh=hstr                    # hh to be alias for hstr
# configuration for hstr
export HH_CONFIG=hicolor,rawhistory,raw-history-view,keywords-matching        # get more colors

bindkey -s "^T" "hh\n"     # bind hh to Ctrl-r (for Vi mode check doc)
bindkey -s '^R' "fzf-history-widget\n"
# bindkey -s "\C-r": "\e0ihstr -- \C-j" # bind hh in vi mode 
bindkey -s "\C-r": "\e0ifzf-history-widget -- \C-j" # bind hh in vi mode 

# fasd
eval "$(fasd --init auto)"

export PYLEARN2_DATA_PATH=~/data

# colorize man pages

# colorize less uses pygemtize
export LESS='-R'
export LESSOPEN='|pygmentize -g %s'

# Antigen commands

antigen bundle git@github.com:zsh-users/zsh-syntax-highlighting
antigen bundle git@github.com:zsh-users/zsh-autosuggestions.git

# antigen bundle https://github.com/sakshamsharma/zpyi zpyi.zsh
# doesn't work anymore
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle command-not-found

antigen apply

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=9'
bindkey '^ ' autosuggest-accept


export PYTHONSTARTUP=$HOME/dotfiles/startup.py

tohimal() {
    rsync -azP $1/ himal:$1
}


export PYTHONDONTWRITEBYTECODE=1

# https://github.com/aykamko/tag
if (( $+commands[tag] )); then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
  alias ag=tag
fi

# antigen theme minimal
unsetopt correct_all
setopt promptsubst

PATH=$PATH:$HOME/.local/bin

# this is gcloud completion
# source ~/dotfiles/completion.zsh.inc


# source ~/dotfiles/hstr.sh

# TRAPWINCH() {
#   zle && { zle reset-prompt; zle -R }
# }

bindkey '^X' zaw
# bindkey "^8" zaw-history

source ~/dotfiles/custom-prompt.sh

export BAT_THEME="Solarized (dark)"

# google cloud iap tunnel increase bandwidth
export CLOUDSDK_PYTHON_SITEPACKAGES=1

# catpuchin zsh themes
#source /Users/aprakash/dotfiles/zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
