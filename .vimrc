set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'cSyntaxAfter'
Plugin 'gmarik/vundle'
Plugin 'haskell.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'martinhath/comments.vim'
Plugin 'luochen1990/rainbow'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'wting/rust.vim'

call vundle#end()

filetype plugin indent on

set backspace=indent,eol,start

set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch

set laststatus=2

let base16colorspace=256
set background=dark
set t_Co=256
colorscheme base16-chalk

syntax enable
set nu

hi Normal ctermbg=NONE

set listchars=nbsp:▋
set nolist

autocmd FileType make setlocal noexpandtab shiftwidth=2 softtabstop=0
autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()

let g:airline_powerline_fonts = 1

""" div. vim stuff
let mapleader=" "
nmap <Leader>p "*p
:command! Reload :so ~/.vimrc "chill
set autochdir "cd to file when opening files

""" auto-pairs
autocmd FileType {lisp} let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}
let g:AutoPairsShortcutToggle = ''

""" CtrlP
let g:ctrlp_max_files = 0
noremap <M-p> :CtrlPBuffer<CR>

""" NerdTree
nmap <C-n> :NERDTreeToggle<CR>

""" Astyle
noremap <F3> :%!astyle<CR>

""" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
            \ 'guifgs': ['gray40', 'gray60', 'gray80', 'rosybrown', 'steelblue1',
            \            'olivedrab3', 'paleturquoise3', 'bisque1',
            \            'tomato', 'goldenrod1', 'orchid1']
            \}

""" Vim hacks
nmap j gj
nmap k gk

"""" Make chillern
nmap æ :w !make<CR>

""" Syntastic
let g:syntastic_c_compiler_options = "-Wall -std=c99 -Wextra -wunused-variable"
let g:syntastic_cpp_compiler_options = "-Wall -std=c++14"

if has('gui_running')
    :set guioptions-=m  "remove menu bar
    :set guioptions-=T  "remove toolbar
    :set guioptions-=r  "remove right-hand scroll bar
    :set guioptions-=L  "remove left-hand scroll bar
    :set guioptions-=e  "default tab looks
    :set guifont=monospace\ 11 "normal size font
    colorscheme base16-tomorrow
else
    colorscheme base16-default
endif
