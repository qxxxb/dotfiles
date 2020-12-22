#!/usr/bin/env sh

sudo add-apt-repository universe
sudo apt install \
    fonts-firacode \
    fonts-font-awesome \
    fonts-cantarell

# For some reason only this specific file works properly.
dst_dir=/usr/share/fonts/truetype/nerd_fonts
src_dir=$HOME/.config/yadm/bootstrap_assets
sudo mkdir -p $dst_dir
sudo cp $src_dir/fura_code_nf.ttf $dst_dir
sudo fc-cache $dst_dir -v
