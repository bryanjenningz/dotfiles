syntax on
filetype on
filetype plugin indent on
set incsearch
set hlsearch
set ignorecase

set expandtab
set tabstop=2
set shiftwidth=2

set autoindent
set smartindent
set number

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'sukima/xmledit'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'othree/html5.vim'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'Valloric/MatchTagAlways'
Plugin 'kien/ctrlp.vim'
Plugin 'blueyed/vim-diminactive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mindriot101/vim-yapf'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required


let g:yapf_format_yapf_location = 'virtualenv/formatting/bin/yapf'
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" The encoding displayed
set encoding=utf-8
" The encoding written to file.
set fileencoding=utf-8
" insert 4 spaces for a tab key press
:set tabstop=4
" change number of space characters inserted for indentation
:set shiftwidth=4
" insert space characters whenever the tab key is pressed
set expandtab
colors koehler
set background=dark
:set mouse=a
:set number
set laststatus=2
noremap <Up> 5k
noremap <Down> 5j

:hi ColorColumn ctermbg=0 guibg=#FF0000
let g:airline#extensions#tabline#enabled = 1

 

"exit out of insert mode using ii
:imap ii <Esc>
"settings for python autoindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
filetype plugin indent on

"set window navigation to alt + arrow
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
