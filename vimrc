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

"" Powerline
set laststatus=2

"" Search configuration
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Start pathogen
call pathogen#infect()

"" Command-T
set wildignore+=coverage*
set wildignore+=tmp/*
set wildignore+=public/*
let g:CommandTMaxHeight=15


"" Store all .swp files on /tmp
set dir=/tmp

"" NERDTree
map <leader>n :NERDTreeToggle<CR>
"" Open if no file is provided
autocmd vimenter * if !argc() | NERDTree | endif
"" Close it if its the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"" Load user configuration
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" ARROW KEYS ARE UNACCEPTABLE
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" A few CTRL commands
map <C-S> :w<cr>
map <C-L> =>

" Numbers
nnoremap <F3> :NumbersToggle<CR>

nmap <D-r> :execute 'ConqueTermSplit rspec '.expand('%:p')<cr>
