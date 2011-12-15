syntax enable

"" Remove whitespace after saving
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre * :%s/\t/  /e

color molokai

"" whitespace
set expandtab
set tabstop=2 shiftwidth=2
set nowrap
set backspace=indent,eol,start

set colorcolumn=80

set nocompatible
set encoding=utf-8
set showcmd
filetype plugin indent on

"" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

call pathogen#infect()

"" Command-T ignores
set wildignore+=coverage*
set wildignore+=tmp/*
set wildignore+=public/*

set dir=/tmp

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
