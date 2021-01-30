set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set visualbell
set nobackup
set cindent
set autoindent
set enc=utf-8
set incsearch
syntax on

hi clear
if exists("syntax_on")
	  syntax reset
endif
highlight Normal ctermfg=grey ctermbg=none

set history=1000
set hlsearch
set ignorecase
set showmatch
set title 
set nu
let Tlist_WinWidth = 20

" vim 화면
set number
set ruler
set novisualbell
set nowrap
set scrolloff=30
set equalalways

" Print 설정
set printencoding=utf-8
set printmbcharset=ISO10646

" 들여쓰기 설정
set autoindent
set smartindent
set cindent

" 자동완성
set showcmd
set complete=w,b,u,t,i
set completeopt=menu

" 문자열 검색 - 대소문자 구별, 하일라이팅, 검색수준
set ignorecase
set hlsearch
set report=0

" 백업
set backupdir=~/.vim
set directory=~/.vim

" 폴딩 설정
set foldmethod=marker
set foldlevel=0
let g:is_bash = 1

" Cuesor
set viewoptions=cursor
autocmd BufWinLeave * mkview 
autocmd BufWinEnter * silent loadview

" 아래 바.
set laststatus=2

" 플러그인들..
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'https://github.com/Lokaltog/vim-powerline.git' 
Bundle 'neocomplcache'
Bundle 'ctags.vim'
Bundle 'snipMate'
Bundle 'c.vim'
Bundle 'tComment'
filetype plugin indent on

set pastetoggle=<F3>
