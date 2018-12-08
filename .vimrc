"  Spocino's vimrc

" TABS {{{
"
" tabs are 8 spaces

set tabstop=8
set softtabstop=8
set listchars=tab:\|\ 
set list " indentation marks
" }}}
" UI {{{
let g:powerline_pycmd="py3"
set laststatus=2                        " show powerline
set showcmd                             " show command
syntax enable                           " syntax highlighting
set number relativenumber               " show line numbers
augroup numbertoggle                    " relative numbers when focused in normal mode
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
set scrolloff=999                       " text centered around cursor
set cursorline                          " highlit line with cursor
filetype indent on                      " load filetype-specific indentation
set lazyredraw
set showmatch                           " show matching brackets
set cc=80                               " marking at 80 characters
execute pathogen#infect()
" }}}
" SEARCH {{{

set incsearch                           " search as characters are entered
set hlsearch                            " highlight search matches
                                        " <leader> space unhighlights
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" FOLDING {{{

set foldenable
set foldlevelstart=10 " fold after 10 levels
set foldnestmax=10    " max 10 folds
                      " space toggles folds
nnoremap <space> za
set foldmethod=indent " fold based on indent
" }}}
" MOVEMENT {{{

"move vertically by visual lines
nnoremap j gj
nnoremap k gk
"visually select text written in last insert
nnoremap gV `[v`]
" }}}

set modelines=1

" vim:foldmethod=marker:foldlevel=0
