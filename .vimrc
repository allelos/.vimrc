" vIM
set nocompatible

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Plugin Management """"""""""""""""""

" Initialize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'marcweber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'Kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'mattn/emmet-vim'
"Plugin 'Raimondi/delimitMate'
call vundle#end()

" Turn filetype back on
filetype plugin indent on

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" The Looks """"""""""""""""""""""""""
set t_Co=256
set background=dark
colorscheme base16-monokai

syntax enable
set relativenumber
set nowrap

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure CtrlP """""""""""""""""""""
let g:ctrlp_working_path_mode=0

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure Airline """""""""""""""""""""

" Show status line for single windows
set laststatus=2

" Set airline theme
let g:airline_theme='molokai'

" Disable airline separators
let g:airline_left_sep=''
let g:airline_right_sep=''

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set tabstop=2           " Tabs take 4 spaces
set shiftwidth=2        " Autoindentation depth
set softtabstop=2
set expandtab           " Convert all tabs to spaces

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""" Configure VIm """"""""""""""""""""""""""

" Do not create backups
set nobackup
set omnifunc=syntaxcomplete#Complete

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""" Python Specific """"""""""""""""""""""""
autocmd FileType python set autoindent expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType python set textwidth=79
autocmd FileType python set foldmethod=indent

" Searching configurations
set ignorecase
set smartcase
set incsearch

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Key Bindings """"""""""""""""""""""""
" Use to jj to escape in insert mode
inoremap jj <ESC>

" Push down and insert new line
inoremap {<CR> {<CR>}<ESC>O

" Remap window movements
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
