#!/usr/bin/env sh

curl https://pyenv.run | bash

# Dependencies for building python
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

pyenv install 3.9.1
pyenv install 2.7.18
pyenv install pypy3.6-7.3.1

pyenv global 3.9.1 pypy3.6-7.3.1

sudo apt autoremove

# Keep one system-wide Python3 installation so that the root account can use it
# too.
sudo apt-get install python3-pip

# Neovim stuff

pip install neovim
pip install --upgrade autopep8
pip install black

cat << EOF > todo.log
# Follow these instructions to set up Python3 with Neovim:
# https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
# Specifically, the commands are:
pyenv virtualenv 3.9.1 neovim3
pyenv activate neovim3
pip install neovim
source deactivate
EOF
