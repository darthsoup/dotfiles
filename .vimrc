" -----------------------
" General settings
" -----------------------

set nocompatible				" disable compatible mode, be improved boy

" Basic Settings
syntax on						" Enable syntax highlight

if has('autocmd')
	filetype plugin indent on
endif

behave xterm
set ttyfast						" faster screen updates
set ffs=unix,dos,mac			" use unix as standard
set encoding=UTF-8
set noswapfile
set term=xterm-256color
set shortmess+=I
set shell=zsh

" -----------------------
" Editor settings
" -----------------------

" Backups & Temp
set backup
set backupdir=~/.vim/backups

if has('cmdline_hist')
	set history=5000			" Increase command line history.
endif

" Search
set noshowmode
set hlsearch
set ignorecase
set gdefault

" Theme
set title
set number
set laststatus=2

set t_Co=256
set background=dark
colorscheme molotov

" Text Format
set nolist
set listchars=tab:\ \ ,trail:\.
set autoindent
set tabstop=4
set softtabstop=4

" Flow Handling
set scroll=10
set scrolloff=5
set sidescroll=8
set showcmd
set showmatch
" set noerrorbells
set mouse=

" Key
set backspace=indent,eol,start	" Makes backspace key more powerful.

" -----------------------
" Plugins
" -----------------------

function! InitMinpac() abort

	packadd minpac

	call minpac#init()
	call minpac#add('k-takata/minpac', { 'type': 'opt' })

	" Basics
	call minpac#add('vim-airline/vim-airline')
	call minpac#add('vim-airline/vim-airline-themes')
	call minpac#add('mhinz/vim-startify')
	call minpac#add('sheerun/vim-polyglot', { 'type': 'opt' })
	call minpac#add('ciaranm/securemodelines')
	call minpac#add('preservim/nerdtree')
	call minpac#add('tpope/vim-fugitive')

	" Themes
	call minpac#add('gf3/molotov')
	call minpac#add('joshdick/onedark.vim')

	" Others
	call minpac#add('editorconfig/editorconfig-vim')
	call minpac#add('chr4/nginx.vim')

endfunction

command! PacSetup		call InitMinpac() | call minpac#update('', { 'do': 'quit! | quit!' })
command! PacStatus		call InitMinpac() | call minpac#status()
command! PacPackages	call InitMinpac() | call minpac#getpackages()
command! PacClean		call InitMinpac() | call minpac#clean()
command! PacUpdate		call InitMinpac() | call minpac#update()

" -----------------------
" Plugin Settings
" -----------------------

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline_theme='molokai'
