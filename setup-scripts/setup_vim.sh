#!/bin/bash

# ALIASES_FILE=~/.aliases

# Installs vim and a few plugins

######################
#### Install packages
######################

# Install git, vim, tmux, suckless-tools (includes dmenu), openssh-server,
# cmake, c
sudo apt install vim

## Install additional plugins for vim

# Ultimate vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
bash ~/.vim_runtime/install_awesome_vimrc.sh

# Install 'monokai' color scheme for vim
git clone https://github.com/sickill/vim-monokai.git ~/.vim_runtime/sources_non_forked/vim-monokai

# Set monokai as default colorscheme
echo "syntax enable" >> ~/.vim_runtime/my_configs.vim
echo "colorscheme monokai" >> ~/.vim_runtime/my_configs.vim