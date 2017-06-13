"Turn on syntax highliting
syntax on

"Highlight search
set hlsearch

set visualbell

"Make the command window two rows
set cmdheight=2

"Line numbers on
set number

"Set tab to three spaces
set shiftwidth=4
set softtabstop=4
set expandtab

filetype plugin indent on

" This will make F6 remove all tailing white spaces:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" " Press F6 to remove all trailing whitespace.
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Paste toggle shortcut
set pastetoggle=<F2>

colorscheme sudermanjr

