" .vimrc
syntax on
let python_highlight_all=1

set number
set nocompatible
set encoding=utf-8
set backspace=indent,eol,start
filetype off

set clipboard=unnamed

" Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"" Vundle Plugins List
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'gmarik/Vundle.vim'
"Plugin 'php.vim'
"Plugin 'neocomplcache'
"Plugin 'rails.vim'
"Plugin 'bling/vim-airline'
"
call vundle#end()
filetype plugin indent on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with space bar
nnoremap <space> za

" Flag unnecessary whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" NERDTree ignore .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

