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
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
let g:Powerline_symbols = 'fancy'

syntax enable
set background=dark
colorscheme solarized
set t_Co=256
set nu

let mapleader=" "

