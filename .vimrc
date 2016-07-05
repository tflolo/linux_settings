set nocompatible 
filetype off
set nu
set relativenumber
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'VundleVim/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'pangloss/vim-javascript'
call vundle#end() 
filetype plugin indent on



autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

