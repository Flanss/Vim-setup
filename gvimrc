"" Remove those ugly buttons at the top
set guioptions=aAce

"" Set Command-T to actually use Command-T key binding
macmenu &File.New\ Tab key=<D-T>
map <D-t> :CtrlP<CR>
imap <D-t> <Esc>:CtrlP<CR>

"" Favorite font/size
set gfn=Bitstream\ Vera\ Sans\ Mono:h24

" Command-/ to toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
