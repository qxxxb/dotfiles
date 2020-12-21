[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.pyenv/bin:$PATH
export PATH=$HOME/Programs/static/bin:$PATH
export VISUAL=$(which nvim)
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
