if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(git)
source $ZSH/oh-my-zsh.sh


if [ -f '/Users/aprakash/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aprakash/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/aprakash/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aprakash/google-cloud-sdk/completion.zsh.inc'; fi



export PATH="$PATH:/Users/aprakash/.local/bin"
export PATH="/usr/local/opt/cython/bin:$PATH"
export PATH="/Users/aprakash/miniconda/bin/:$PATH"

export CLOUDSDK_PYTHON_SITEPACKAGES=1
export SDKROOT="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"


source ~/.compile_flags
source ~/dotfiles/adi_zshrc.sh
source ~/dotfiles/aliases.sh
source ~/spring-aliases.rc


export DENO_INSTALL="/Users/aprakash/spring-experiments/process_supervisor/.vendor/deno_v1.17.3"
export PATH="$DENO_INSTALL/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"


__conda_setup="$('/Users/aprakash/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/aprakash/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/aprakash/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/aprakash/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


fpath+=~/.zfunc
autoload -Uz compinit && compinit


. "$HOME/.cargo/env"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
