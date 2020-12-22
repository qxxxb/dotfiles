#!/usr/bin/env sh

sudo add-apt-repository universe
sudo apt install \
    fonts-firacode \
    fonts-font-awesome \
    fonts-cantarell

# For some reason only this specific file works properly.
dir=/usr/share/fonts/truetype/nerd_fonts/
sudo mkdir -p $dir
sudo cp ../bootstrap_assets/fura_code_nf.ttf $dir
sudo fc-cache $dir -v
