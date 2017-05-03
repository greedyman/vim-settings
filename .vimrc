set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

let g:ycm_python_binary_path = '/usr/bin/python3' 	" YouCompleteMe setup


syntax on
set background=dark
colorscheme gruvbox
set t_Co=256
set t_ut=

