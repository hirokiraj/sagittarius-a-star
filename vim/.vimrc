set nocompatible
filetype off

execute pathogen#infect()
filetype plugin indent on

syntax enable
set encoding=utf-8
set showcmd

set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
