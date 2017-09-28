call plug#begin('~/.vim/plugged')
  " Base 16 color scheme
  Plug 'chriskempson/base16-vim'
  " File browser
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  " Async lint engine
  Plug 'w0rp/ale'
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " CtrlP
  Plug 'ctrlpvim/ctrlp.vim'
  " git diff signals in sidebar
  Plug 'airblade/vim-gitgutter'
  " Rust
  Plug 'rust-lang/rust.vim'
  " Auto pairs
  Plug 'jiangmiao/auto-pairs'

  " JS + JSX
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
call plug#end()

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs

set number
set ruler                         " Show the cursor position all the time
set colorcolumn=100               " Show vertical bar at column 80
set cursorline                    " Show current cursor line

" Searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

" enter -> no hlsearch
:nnoremap <CR> :nohlsearch<cr>
" leader is space
let mapleader=" "
" remove trailing space
map <Leader>$ :%s/\s\+$//g<CR>

" Toggle relative numbers
nnoremap <M-n> :let &rnu=!&rnu<CR>

set termguicolors
colorscheme base16-tomorrow-night
let g:airline_theme="base16_tomorrow"

" AutoPairs
let g:AutoPairsShortcutToggle = ''

" CTRLP don't look through certain folders
let g:ctrlp_max_files = 0
noremap <M-p> :CtrlPBuffer<CR>
set wildignore+=*/venv/*,*/target/*,*/node_modules/*,*/*.class,*/*.pyc,*/*.o

" NERD tree
map <C-n> :NERDTreeToggle<CR>

" Ale
let g:ale_fix_on_save = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" JS stuff
let g:jsx_ext_required = 0
let g:ale_javascript_prettier_options = '--single-quote'
let g:ale_fixers = {
\   'javascript': ['prettier'],
\}
