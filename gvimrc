"" Remove those ugly buttons at the top
set guioptions=aAce

"" Set Command-T to actually use Command-T key binding
macmenu &File.New\ Tab key=<D-T>
map <D-t> :CommandT<CR>
imap <D-t> <Esc>:CommandT<CR>
map <leader>r :CommandTFlush<CR>

"" Favorite font/size
set gfn=Menlo:h16

" Command-/ to toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
