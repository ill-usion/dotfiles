set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'andweeb/presence.nvim'
Plug 'RedsXDD/neopywal.nvim', { 'as': 'neopywal' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sphamba/smear-cursor.nvim'
Plug 'm4xshen/autoclose.nvim'
Plug 'sainnhe/everforest'

call plug#end()
lua require('smear_cursor').setup({
    \enabled = true,
    \stiffness = 0.8,                      
    \trailing_stiffness = 0.6,             
    \stiffness_insert_mode = 0.7,         
    \trailing_stiffness_insert_mode = 0.7,
    \damping = 0.95,                     
    \damping_insert_mode = 0.95,         
    \distance_stop_animating = 0.5,     
\})

syntax enable

" colorscheme neopywal
colorscheme everforest

set number
set relativenumber
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si
set wrap
