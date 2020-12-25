export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/Programs/static/bin:$PATH
export VISUAL=$(which nvim)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
