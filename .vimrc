python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup 

if has('gui_running')
  set guifont=Ubuntu\ Mono\ derivative\ Powerline\:h16
endif

set nocompatible      " We're running Vim, not Vi!
set encoding=utf-8
syntax enable         " Enable syntax highlighting
set number
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set rtp+=/Users/yaakovgamliel/.vim/powerline-develop/bindings/vim
colorscheme Tomorrow-Night

set showcmd     " show partial commands below the status line
set shell=bash  " avoids munging PATH under zsh
let g:is_bash=1 " default shell syntax
set history=200 " remember more Ex commands

"" Whitespace
set tabstop=2                     " a tab is two spaces
"set expandtab                     " use spaces, not tabs
set shiftwidth=2                  " 
set backspace=indent,eol,start
set laststatus=2
setlocal noexpandtab
let g:syntastic_python_flake8_args = '--ignore=W191,E501,E121,E122,E123,E128,E225,W291'
