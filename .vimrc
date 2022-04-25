" Basic settings
set number
set nocompatible              " required
set encoding=utf-8
filetype off                  " required
set t_Co=256
set autoread

" set the commands for split
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>  
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" case-insensitive search
set ignorecase

" highlight the search
" set hlsearch

" make code look pretty
let python_highlight_all=1
syntax on  " turn on syntax highlighting
set ruler  " show row, col in lower-right corner

" edit the indent line
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" disable folding configuration
let g:vim_markdown_folding_disabled = 1

" map the nerdtree toggle to the hot key F2
map <F2> :NERDTreeToggle<CR>

" Auto PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tell-k/vim-autopep8'

" For markdown files editing
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" For themes
Plugin 'altercation/vim-colors-solarized'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
