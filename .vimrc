set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/nerdtree.git'
Plugin 'wincent/Command-T.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


syntax enable
set background=light
colorscheme solarized
set nu

let g:solarized_termcolors=256

set rtp+=~/.vim/bundle/powerline/bindings/vim

let mapleader=" "
