set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/nerdtree.git'
Plugin 'wincent/Command-T.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
Plugin 'jiangmiao/auto-pairs'


call vundle#end()

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set backspace=indent,eol,start

set tabstop=2
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

set laststatus=2
let g:Powerline_symbols = 'fancy'

syntax enable
set background=dark
colorscheme solarized
set t_Co=256
set nu

let mapleader=" "

set listchars=nbsp:▋
set nolist

autocmd FileType make setlocal noexpandtab shiftwidth=2 softtabstop=0
