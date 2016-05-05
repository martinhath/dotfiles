set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'cSyntaxAfter'
Plugin 'derekwyatt/vim-scala'
Plugin 'fsharp/vim-fsharp'
Plugin 'gmarik/vundle'
Plugin 'haskell.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'martinhath/comments.vim'
Plugin 'luochen1990/rainbow'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/echodoc.vim'
Plugin 'tpope/vim-fugitive'
"""Plugin 'valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

set backspace=indent,eol,start

set tabstop=2
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set incsearch

set laststatus=2

let base16colorspace=256
set background=light
set t_Co=256
colorscheme base16-solarized

syntax enable
set nu

hi Normal ctermbg=NONE
""" Ban non blocking whitespace
set listchars=nbsp:▋
set nolist

""" Makefiles must use tabs
autocmd FileType make setlocal noexpandtab shiftwidth=2 softtabstop=0

""" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

""" div. vim stuff
let mapleader=" "
""" paste from clipboards
nmap <Leader>p "*p
nmap <Leader>P "+p
nmap <Leader>y "*y
nmap <Leader>Y "+y
""" remove trailing spaces, without moving cursor from line
nmap <Leader>$ mm:%s/\s\+$//g<CR>'m
""" case insensitive search
nmap <Leader>/ /\c
nmap <M-8> :set hlsearch!<CR>
:command! Reload :so ~/.vimrc "chill

""" auto-pairs
autocmd FileType {lisp,rust} let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}
let g:AutoPairsShortcutToggle = ''

""" CtrlP
let g:ctrlp_max_files = 0
noremap <M-p> :CtrlPBuffer<CR>
set wildignore+=*/venv/*,*/target/*,*/node_modules/*,*/*.class,*/*.pyc,*/*.o

""" NerdTree
nmap <C-n> :NERDTreeToggle<CR>

""" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
            \ 'guifgs': ['gray40', 'gray60', 'gray80', 'rosybrown', 'steelblue1',
            \            'olivedrab3', 'paleturquoise3', 'bisque1',
            \            'tomato', 'goldenrod1', 'orchid1']
            \}

""" Rust-vim
let g:rustfmt_autosave = 1

""" Racer
set hidden
let g:racer_cmd = '/home/martin/.cargo/bin/racer'
let g:racer_experimental_completer = 1
let $RUST_SRC_PATH = '/home/martin/src/rust/src/'

""" Vim hacks
nmap j gj
nmap k gk

"""" Make chillern
nmap <Leader>m :w !make<CR>

""" """ Syntastic
""" let g:syntastic_c_compiler_options = "-Wall -std=c99 -Wextra -wunused-variable"
""" let g:syntastic_cpp_compiler_options = "-Wall -std=c++14"

""" YouCompleteMe
let g:ycm_rust_src_path = '/usr/local/src/rustc-1.7.0/src'

if has('gui_running')
    :set guioptions-=m  "remove menu bar
    :set guioptions-=T  "remove toolbar
    :set guioptions-=r  "remove right-hand scroll bar
    :set guioptions-=L  "remove left-hand scroll bar
    :set guioptions-=e  "default tab looks
    :set guifont=Liberation\ Mono\ 11 "normal size font
    set background=light
    set lines=70 columns=180
endif

"hack, in order to show colors correctly ..
autocmd VimEnter * RainbowToggle
