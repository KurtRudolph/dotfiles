" Loads current verson of vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
" Loads all vim plugins stored in .vim/bundle
call pathogen#infect()

" Recognize upc files as C files
au BufNewFile,BufRead *.upc set filetype=c 
" Recognize cuda files as C files
au BufNewFile,BufRead *.cu set filetype=c 

"" Make vim more useful
"set nocompatible
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
"" Add the g flag to search/replace by default
"set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol

" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Set the maximum columns scanned for syntax highlight, default (3000) very slow make vim sluggish
set synmaxcol=200
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Make tabs spaces
set expandtab
set softtabstop=2
set shiftwidth=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
"" Ignore case of searches
"set ignorecase
"I like this next feature but I think it is making vim sluggish
"" Highlight dynamically as pattern is typed
"set incsearch
"" Always show status line
"set laststatus=2
"" Enable mouse in all modes
"set mouse=a
" Disable error bells
"set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Use relative line numbers
"set relativenumber
"au BufReadPost * set relativenumber
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>



