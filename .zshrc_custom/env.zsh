export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/Programs/static/bin:$PATH
export PATH=$HOME/Programs/static/go/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH
export PATH=$HOME/Programs/static/gcc-arm-none-eabi-10.3-2021.10/bin:$PATH
export VISUAL=$(which nvim)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($HOME/Programs/static/miniconda3/bin/conda 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/Programs/static/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/Programs/static/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/Programs/static/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# If not root, do this
if [[ $EUID -ne 0 ]]; then
    export NVM_DIR="$HOME/.nvm"
    function load_nvm() {
        [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
    }

    async_start_worker nvm_worker -n
    async_register_callback nvm_worker load_nvm
    async_job nvm_worker sleep 0.1

    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    function load_pyenv() {
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
    }

    async_start_worker pyenv_worker -n
    async_register_callback pyenv_worker load_pyenv
    async_job pyenv_worker sleep 0.1
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
