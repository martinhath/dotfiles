set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'cSyntaxAfter'
Plugin 'FuzzyFinder'
Plugin 'gmarik/vundle'
Plugin 'haskell.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'L9'
Plugin 'martinhath/comments.vim'
Plugin 'oblitum/rainbow'
Plugin 'sentientmachine/erics_vim_syntax_and_color_highlighting'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/Command-T.git'
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

let mapleader=","

"""set listchars=nbsp:▋
set nolist

autocmd FileType make setlocal noexpandtab shiftwidth=2 softtabstop=0
autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()

let g:airline_powerline_fonts = 1

""" NerdTree
""" autocmd vimenter * NERDTree
nmap <C-n> :NERDTreeToggle<CR>

""" Astyle 
noremap <F3> :%!astyle<CR>

""" Rainbow
au BufEnter *.{c,cpp,objc,objcpp} call rainbow#load()
let g:rainbow_active = 1

""" Vim hacks
nmap j gj
nmap k gk

"""" Scheme chillern
nmap æ :w !racket -f - <CR>

""" Syntastic
let g:syntastic_c_compiler_options = "-Wall -std=c99 -Wextra -wunused-variable"
let g:syntastic_cpp_compiler_options = "-Wall -std=c++14"
