" ------- Vundle stuff ----------
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic.git'

call vundle#end()
filetype plugin indent on
"  ------ End Vundle stuff ------

" Powerline configurations
" set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" vim airline configurations
let g:airline#extensions#tabline#enabled = 1

" vim-syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Use the OS clipboard by default
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
"set encoding=utf-8 nobomb
" Don't add empty newlines at the end of files
set binary
set noeol

set viminfo+=! " make sure vim history works

" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as four spaces
set tabstop=4
" Enable line numbers
set number
" Highlight searches
set hlsearch
" Highlight dynamically as pattern is typed
set incsearch
" Respect modeline in files
set modeline
set modelines=4
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don't reset cursor to start of line when moving around
set nostartofline
" Show the cursor position
set ruler
" Show the filename in the window titlebar
set title
" Show the partial command as it's being typed
set showcmd
