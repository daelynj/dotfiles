" this is redundant, but prefer explicit settings over implicit
set nocompatible

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
