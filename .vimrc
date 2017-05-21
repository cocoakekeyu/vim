syntax on

set nocompatible 
set shiftwidth=4
set tabstop=4
set expandtab
set tabstop=4
set expandtab
set nobackup 
set noswapfile
set incsearch
set hlsearch
set smartcase
set smartindent
set nu
set showcmd
set showmode
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1
set pastetoggle=<f5>

colorscheme desert 

"python code cant exceed 80 char
autocmd FileType python call Highlight_80()
fun Highlight_80()
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
  match OverLength /\%81v.\+/
endfun

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

let mapleader = ';'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>l :nohlsearch<CR>
nnoremap <leader>s :Ack 

nnoremap <C-i> :NERDTreeToggle<CR>
nnoremap <leader>p "+p
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>c  :!pandoc -f markdown --css=$HOME/markdown-css/github.css -t html -o /tmp/mdconvtmp.html %;google-chrome /tmp/mdconvtmp.html<CR>

"Vundle plugin
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/ctags.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
call vundle#end()
filetype plugin indent on

"use the_silver_searcher(ag) replace ack
let g:ackprg = 'ag --nogroup --nocolor --column'

"let g:pyflakes_use_quickfix = 0
let g:vim_markdown_folding_disabled=1
let g:ycm_python_binary_path = 'python'
let python_highlight_all = 1

"syntastic setting
let g:syntastic_error_symbol='>>'       " 错误行使用'>>' 标记
let g:syntastic_warning_symbol='>'      " 警告行使用'>' 标记
let g:syntastic_check_on_open=1     " 打开文件时即开启语法检查
let g:syntastic_check_on_wq=0       " 保存时进行语法检查
let g:syntastic_enable_highlighting=1   " 提示内容高亮显示
let g:syntastic_python_checkers=['pyflakes', 'pep8']     " 设置Python检查规则为pyflakes和pep8
let g:syntastic_always_populate_loc_list = 0   " 提示内容显示相关
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
