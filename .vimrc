syntax on
colorscheme slate

set nu! 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set nocp
filetype plugin on

au FileType cpp let b:dlimitMate_autoclose = 1
au FileType hpp let b:dlimitMate_autoclose = 1
au FileType txt let b:dlimitMate_autoclose = 1

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l <CR>
nmap <silent> <F2> :NERDTreeToggle <CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

