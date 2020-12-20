[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export VISUAL=$(which nvim)

export PATH="/home/fluffy/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
