# Essential environment stuff goes here
# https://unix.stackexchange.com/a/71258

export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/Programs/static/bin:$PATH
export VISUAL=$(which nvim)

if [[ $EUID -ne 0 ]]; then
    # If not root, use pyenv
    export PATH=$HOME/.pyenv/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi