set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'andweeb/presence.nvim'
Plug 'RedsXDD/neopywal.nvim', { 'as': 'neopywal' }

call plug#end()

syntax enable

colorscheme neopywal

set number
set relativenumber
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

