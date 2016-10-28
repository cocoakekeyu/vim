set nocompatible
syntax on
set shiftwidth=4
set nobackup 
set noswapfile
set incsearch
set hlsearch
set smartindent
set nu
set showcmd
colorscheme desert 
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1
set tabstop=4
set expandtab
filetype off
set pastetoggle=<f5>

let g:pyflakes_use_quickfix = 0
let g:vim_markdown_folding_disabled=1


nnoremap <C-i> :NERDTreeToggle<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/ctags.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
