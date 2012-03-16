# My vim-setup

Only tested with MacVim setup, no idea if it works on something else

## Install

Clone it into ~/.vim folder

    git clone git://github.com/dabit/vim-setup.git .vim

Then go into that folder and init the submodules

    cd ~/.vim
    git submodule init && git submodule update

And create symlinks for the config files

    cd
    ln -s ~/.vim/gvimrc .gvimrc
    ln -s ~/.vim/vimrc .vimrc

### Compile Command-t

You have to compile the Command-t extension

    cd ~/.vim/bundle/command-t
    bundle
    rake make

## Your own settings

Add them to _~/.vimrc.local_

Done
