"setting up vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
"end vundle setup

"security
set exrc
set secure

"setting mapleader
let mapleader = " "

"indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

"max line length
set colorcolumn=100
highlight ColorColumn ctermbg=darkblue

"syntax highlighting
let python_highlight_all=1
syntax on

"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"setup code folding
set foldmethod=indent
set foldlevel=99

"remap folding to spacebar
nnoremap <space> za

"configuring YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"configuring NERDTree
autocmd vimenter * NERDTree

"setting color scheme
"colorscheme zenburn
colorscheme solarized
call togglebg#map("<F5>")

"setting line numbers
set nu
