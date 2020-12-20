#!/usr/bin/env sh

curl https://pyenv.run | bash

# Dependencies for building python
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

pyenv install 3.9.1
pyenv install 2.7.18
pyenv install pypy3.6-7.3.1

pyenv global 3.9.1

sudo apt autoremove
