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

" setup for fzy
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("find . -type f", ":e")<cr>
nnoremap <leader>v :call FzyCommand("find . -type f", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("find . -type f", ":sp")<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'itchyny/vim-gitbranch'

call vundle#end()
filetype plugin indent on

autocmd vimenter * ++nested colorscheme gruvbox

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ],
    \   'right': [['lineinfo']],
    \ },
    \ 'component_function': {
    \ 'gitbranch': 'gitbranch#name'   
    \ },
    \ }
