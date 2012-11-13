" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
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
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable 256 colors
"set t_Co=256
" Enable syntax highlighting
syntax on
" Set the maximum columns scanned for syntax highlight, default (3000) very slow make vim sluggish
set synmaxcol=1000
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
set ignorecase
"I like this next feature but I think it is making vim sluggish
"" Highlight dynamically as pattern is typed
"" Always show status line
set laststatus=2
"" Enable mouse in all modes
"set mouse=a
" Disable error bells
"set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
" Strip white spaces (,ss)
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Recognize upc files as C files
  autocmd BufNewFile,BufRead *.upc setfiletype upc syntax=c
  " Recognize cuda files as C files
  autocmd BufNewFile,BufRead *.cu setfiletype cuda syntax=c
  " Add hamlc file syntax highlighting
  autocmd BufRead,BufNewFile *.hamlc setfiletype hamlc syntax=haml
endif

" Loads current verson of vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
" Loads all vim plugins stored in .vim/bundle
call pathogen#infect()

" Set the colorscheme
colorscheme desert

"make vim save and load the folding of the document each time it loads
"also places the cursor in the last place that it was left.
au BufWinLeave * mkview
au BufWinEnter * silent loadview
