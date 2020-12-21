#!/usr/bin/env sh

curl https://pyenv.run | bash

# Dependencies for building python
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

cat << EOF
Run the following commands:
$ pyenv --skip-existing install 3.9.1
$ pyenv --skip-existing install 2.7.18
$ pyenv --skip-existing install pypy3.6-7.3.1
EOF

pyenv global 3.9.1

sudo apt autoremove

# Keep one system-wide Python3 installation so that the root account can use it
# too.
sudo apt-get install python3-pip
