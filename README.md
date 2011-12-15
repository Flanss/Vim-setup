# My vim-setup

Only tested with MacVim setup, no idea if it works on something else

## Install

Clone it into ~/.vim folder

    git clone git://github.com/dabit/vim-setup.git .vim

Then go into that folder and init the submodules

    git submodule init && git submodule update

And create symlinks for the config files

    ln -s gvimrc ~/.gvimrc
    ln -s vimrc ~/.vimrc

## Your own settings

Add them to _~/.vimrc.local_

Done
