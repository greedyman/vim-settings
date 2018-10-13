""""""""""""""""""""""""""""
" Author: Mateusz Lamecki
""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required


" => Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'powerline/powerline'

call vundle#end()


" => General
syntax on " enable syntax
set history=500 " history length
let mapleader = ","

set background=dark
colorscheme gruvbox
set t_Co=256
set t_ut=

filetype plugin indent on

set wildmenu
set hlsearch


" => Shortcuts
nmap <leader>w :w!<cr>


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let g:filetype_pl="prolog" " Set *.py as prolog files


" => YouCompleteMe setup
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py" " YouCompleteMe support for C++
let g:ycm_python_binary_path = '/usr/bin/python3' 	" YouCompleteMe setup
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>t :YcmCompleter GetType<CR>
