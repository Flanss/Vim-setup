"" Remove those ugly buttons at the top
set guioptions=aAce

"" Set Command-T to actually use Command-T key binding
macmenu &File.New\ Tab key=<D-T>
map <D-t> :CommandT<CR>
imap <D-t> <Esc>:CommandT<CR>

"" Favorite font/size
set gfn=Menlo:h16
