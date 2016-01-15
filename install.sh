#!/bin/zsh

mv ~/.vim ~/.vim.bk
mv ~/.vimrc ~/.vimrc.bk
mv ~/.tmux.conf ~/.tmux.conf.bk
# mv ~/.screenrc ~/.screenrc.bk

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/
ln -s ~/dotfiles/theanorc ~/.theanorc
# ln -s .screenrc ~/
# ln -s ~/dotfiles/vim/ftplugin ~/ftplugin
