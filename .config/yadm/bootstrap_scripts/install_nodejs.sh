#!/usr/bin/env sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Doesn't work from a script for some reason
echo 'nvm install node' >> todo.log

# Neovim stuff
echo 'npm install -g neovim' >> todo.log
echo 'npm install -g pyright' >> todo.log
