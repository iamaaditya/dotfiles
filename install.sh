#!/bin/zsh

mv ~/.vim ~/.vim.bk
mv ~/.vimrc ~/.vimrc.bk
mv ~/.tmux.conf ~/.tmux.conf.bk

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Dir colors
eval `dircolors ~/dotfiles/dir_colors`
