set shell=/bin/bash

syntax on
set number
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')


Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
"Plugin 'catppuccin/vim'
Plugin 'itchyny/lightline.vim'
Plugin 'dracula/vim',{'name':'dracula'}

call vundle#end()            " required

"colorscheme catppuccin_macchiato
colorscheme dracula
let g:lightline = {'colorscheme': 'dracula'}
set noshowmode
set laststatus=2

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
