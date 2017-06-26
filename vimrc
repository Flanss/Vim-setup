set nocompatible

"" Leader Key
:let mapleader = ","

"" Enable sythax highlighting
syntax enable

"" Ruler and numbers
set ruler
set number

"" 256 Colors
set t_Co=256

"" Remove whitespace after saving
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre * :%s/\t/  /e

"" Favorite color scheme
color wombat256mod

"" Set vertical cursor column
set cursorcolumn

"" Set horizontal cursor
set cursorline

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

"" Powerline
set laststatus=2

"" Search configuration
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Start pathogen
call pathogen#infect()

"" Command-P
set wildignore+=coverage*
set wildignore+=*/tmp/*
set wildignore+=*/node_modules/*
set wildignore+=public/*
let g:CommandTMaxHeight=15

let g:ctrlp_custom_ignore = 'node_modules'

"" Store all .swp files on /tmp
set dir=/tmp

"" NERDTree
map <leader>n :NERDTreeToggle<CR>
"" Open if no file is provided
autocmd vimenter * if !argc() | NERDTree | endif
"" Close it if its the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""" IdentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

"" Load user configuration
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" A few CTRL commands
map <C-S> :w<cr>
map <C-L> =>
map <C-t> :CtrlP<cr>

" Numbers
nnoremap <F3> :NumbersToggle<CR>

nmap <D-r> :!ruby %<cr>
let g:go_fmt_autosave = 0

set runtimepath^=~/.vim/bundle/ag
let g:UltiSnipsExpandTrigger="<c-j>"

"" Resize split
nnoremap <Leader>w :10winc -<CR>
nnoremap <Leader>s :10winc +<CR>

"" Git gutter config
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
