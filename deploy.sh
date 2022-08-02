#!/bin/bash
set -e

ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/nvim/init.lua ~/.config/nvim/init.lua
# ln -sf $(pwd)/nvim/init.vim ~/.config/nvim/init.vim
ln -sf $(pwd)/tmux.conf ~/.config/tmux/tmux.conf
ln -sf $(pwd)/alacritty.yml ~/.config/alacritty/alacritty.yml

# ln -sf $(pwd)/i3/config ~/.config/i3/config
# ln -sf $(pwd)/i3/i3status-config ~/.config/i3status/config

echo OK
