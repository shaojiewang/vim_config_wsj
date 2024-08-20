#/bin/bash

set -x
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
yum install ctags
cp vimrc.vimrc ~/.vimrc
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
vim +PluginInstall +qall

