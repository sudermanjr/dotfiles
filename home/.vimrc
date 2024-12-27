"Turn on syntax highliting
syntax on

"Highlight search
set hlsearch

"Make the command window two rows
set cmdheight=2

"Line numbers on
set number

"Show tabs
set list
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

"Set tab to four spaces
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

au BufReadPost Jenkinsfile set syntax=groovy
au BufReadPost Jenkinsfile set filetype=groovy

execute pathogen#infect()

map <leader>b :Git blame<cr>
map <leader>d :Gdiff<cr>

" NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
map <leader>t :NERDTreeToggle<cr>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

map <F7> mzgg=G`z
