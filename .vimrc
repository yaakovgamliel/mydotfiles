set nocompatible      " We're running Vim, not Vi!
syntax enable         " Enable syntax highlighting
set number
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins


colorscheme Tomorrow-Night

set showcmd     " show partial commands below the status line
set shell=bash  " avoids munging PATH under zsh
let g:is_bash=1 " default shell syntax
set history=200 " remember more Ex commands

"" Whitespace
set tabstop=2                     " a tab is two spaces
set expandtab                     " use spaces, not tabs
set shiftwidth=2                  " 
set backspace=indent,eol,start

