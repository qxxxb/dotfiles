[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/Programs/static/bin:$PATH
export VISUAL=$(which nvim)

if [[ $EUID -ne 0 ]]; then
    # If not root, use pyenv
    export PATH=$HOME/.pyenv/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
