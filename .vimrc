set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"""Plugin 'Lokaltog/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'chriskempson/base16-vim'
Plugin 'comments.vim'
Plugin 'cSyntaxAfter'
Plugin 'FuzzyFinder'
Plugin 'gmarik/vundle'
Plugin 'jiangmiao/auto-pairs'
Plugin 'L9'
Plugin 'sentientmachine/erics_vim_syntax_and_color_highlighting'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'wincent/Command-T.git'

call vundle#end()

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set backspace=indent,eol,start

set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4

set laststatus=2

let base16colorspace=256 
colorscheme base16-default

syntax enable
set nu

hi Normal ctermbg=NONE

let mapleader=","

set listchars=nbsp:▋
set nolist

autocmd FileType make setlocal noexpandtab shiftwidth=2 softtabstop=0
autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()

let g:airline_powerline_fonts = 1

""" NerdTree
autocmd vimenter * NERDTree
nmap <C-n> :NERDTreeToggle<CR>

""" Vim Autoformat 
noremap <F3> :Autoformat<CR><CR>

