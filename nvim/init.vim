" this is redundant, but prefer explicit settings over implicit
set nocompatible

" disable insert line since we have lightline
set noshowmode

" Basic syntax highlighting
syntax on

" vim copies to system clipboard
set clipboard=unnamed

" spaces instead of tabs
set expandtab

" auto-indent code lines
set shiftwidth=2

" set tab size
set tabstop=2

" Relative line numbers
set relativenumber
set rnu

" Fixes IntelliJ built-in terminal colors
set background=dark

" Disable arrow keys
noremap! <Up> <NOP>
noremap <Up> <NOP>
noremap! <Down> <NOP>
noremap <Down> <NOP>
noremap! <Left> <NOP>
noremap <Left> <NOP>
noremap! <Right> <NOP>
noremap <Right> <NOP>

" Enable mouse
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'jungegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jungegunn/fzf.vim'

call plug#end()

filetype plugin indent on

colorscheme gruvbox
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \ 'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ],
      \ 'right': [['lineinfo']],
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'gitbranch#name'
      \ },
      \ }
set t_Co=256

nnoremap <leader>e :FZF<CR>
