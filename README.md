# My vim-setup

Only tested with MacVim setup, no idea if it works on something else

## Install

Clone it into ~/.vim folder

    git clone git@github.com:Flanss/Vim-setup.git .vim

Then go into that folder and init the submodules

    cd ~/.vim
    git submodule init && git submodule update

And create symlinks for the config files

    cd
    ln -s ~/.vim/zshrc .zshrc
    ln -s ~/.vim/vimrc .vimrc

## Your own settings

Add them to _~/.vimrc.local_

Done
