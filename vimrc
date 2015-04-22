" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .myvimrc                                           :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: aleger <aleger@student.42.fr>              +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2014/03/14 02:04:10 by aleger            #+#    #+#              "
"    Updated: 2015/04/22 13:58:34 by aleger           ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

execute pathogen#infect()
set nocompatible
set notimeout
let mapleader = ","
set autoread
set ruler
set number
set mouse=a
set lazyredraw
set encoding=utf-8
set termencoding=utf-8
set matchtime=0
set visualbell
set ttyfast
set backspace=indent,eol,start
au BufNewFile *.c,*.h,*.cpp,*.cc,*.hpp exe "Stdheader"
set laststatus=2
syntax on
set scrolloff=5
set autoindent
set smartindent
set colorcolumn=80

filetype plugin indent on

set showcmd
set showmode
set showmatch
set hidden
set ignorecase

colo solarized
so /usr/share/vim/vim73/ftplugin/man.vim

set nobackup
set noswapfile

set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=node_modules "Node modules"
set wildignore+=bower_components "Bower components"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"


" Prevent cursor going back when pressing escape
let CursorColumnI = 0
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

" WEB | JS | PHP
autocmd FileType htmldjango,html,css,js,php,javascript set tabstop=2
autocmd FileType htmldjango,html,css,js,php,javascript set shiftwidth=2
autocmd FileType htmldjango,html,css,js,php,javascript set softtabstop=2
autocmd FileType htmldjango,html,css,js,php,javascript set expandtab

" JS
let g:used_javascript_libs = 'jquery,angularjs,angularui'

" Python | Ruby | Coffee
autocmd FileType python,ruby,coffee set tabstop=4
autocmd FileType python,ruby,coffee set shiftwidth=4
autocmd FileType python,ruby,coffee set softtabstop=4
autocmd FileType python,ruby,coffee set expandtab

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType htmldjango,html,php EmmetInstall
let g:user_emmet_expandabbr_key = '<silent> <Leader>e'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'

" NerdTree
map <C-t> :NERDTreeToggle<CR>

" Airline
let g:airline_theme="solarized"

imap <silent> jj <Esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

map Q @@

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

vnoremap < <gv
vnoremap > >gv

nmap <silent> <Leader><space> :nohl<Cr>
