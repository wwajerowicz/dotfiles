#/usr/bin/env bash
cd ~/dotfiles
git submodule init
git submodule update
ln -sv ~/dotfiles/.vim/  ~/.vim
ln -sv ~/dotfiles/.vimrc ~/.vimrc
ln -sv ~/dotfiles/.bashrc ~/.bashrc
ln -sv ~/dotfiles/.ackrc ~/.ackrc
ln -sv ~/dotfiles/.gitconfig ~/.gitconfig
vim +BundleInstall +qall
