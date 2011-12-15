"" Enable sythax highlighting
syntax enable

"" Ruler and numbers
set ruler
set number

"" Remove whitespace after saving
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre * :%s/\t/  /e

"" Favorite color scheme
color molokai

"" whitespace
set expandtab
set tabstop=2 shiftwidth=2
set nowrap
set backspace=indent,eol,start

"" That red marker for 80 characters
set colorcolumn=81

set nocompatible
set encoding=utf-8
set showcmd
filetype plugin indent on

"" Search configuration
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Start pathogen
call pathogen#infect()

"" Command-T ignores
set wildignore+=coverage*
set wildignore+=tmp/*
set wildignore+=public/*

"" Store all .swp files on /tmp
set dir=/tmp

"" Load user configuration
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
