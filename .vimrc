execute pathogen#infect()
syntax on
filetype plugin indent on

" THIS IS MY ADDED STUFF
" 
set number
color hybrid
set tabstop=2      " a tab is two spaces
set expandtab     " use spaces, not tabs
set guifont=Inconsolata\ for\ Powerline:h18
let ruby_space_error = 1
let c_space_errors = 1
set colorcolumn=90
set t_Co=256 "gives nice colors to the terminal

set showcmd        " show partial commands below the status line
set shell=bash     " avoids munging PATH under zsh
let g:is_bash=1    " default shell syntax
set history=200    " remember more Ex commands

"Status bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set ruler
set laststatus=2

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
