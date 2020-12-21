#!/usr/bin/env sh

# Run commands as root:
# https://stackoverflow.com/a/24696790/6759699
sudo -s << EOF1
if [ ! -e /root/.zshrc ]
then
    sudo ln -s $HOME/.zshrc /root/.zshrc
    sudo ln -s $HOME/.zshrc-custom /root/.zshrc-custom

    cd /root
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

    # For some reason I can't do it from within a script
    cat << EOF2
Run the following commands:
$ sudo -s
# zplug install
EOF2
else
    echo 'ZSH configs already symlinked'
fi
EOF1

sudo -s << EOF
if [ ! -e /root/.config/nvim ]
then
    echo 'Symlinking Neovim commands to root'
    sudo mkdir -p /root/.config
    sudo ln -s $HOME/.config/nvim /root/.config/nvim
    pip3 install --user neovim
else
    echo 'Neovim configs already symlinked'
fi
EOF
