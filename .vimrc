" vim:fdm=marker

" disable compatible mode, be improved boy
set nocompatible

" Basic Settings
syntax enable                   " Enable Syntax Highlight
filetype plugin on
behave xterm
set ttyfast                     " more screen updates
set encoding=utf-8
set noswapfile
set term=xterm-256color
set shortmess+=I

" Editor settings
    " Backups & Temp
    set backup
    set backupdir=~/.vim/vbackup
    set history=2048

    " Search
    set hlsearch
    set ignorecase
    set gdefault

    " Theme
    set title
    set number
    set laststatus=2

    " ColorScheme
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
    set noerrorbells visualbell t_vb=
    set mouse=

" End Settings

" Plugin Settings
    " Nerdtree
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    map <C-n> :NERDTreeToggle<CR>

    " Airline
    augroup airline_config
        autocmd!
        let g:airline_theme='molokai'
        " let g:airline_powerline_fonts = 1
        " let g:airline_enable_syntastic = 1
    augroup END

" Plugins
call plug#begin('~/.vim/plugged')
        " Basics
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'mhinz/vim-startify'
        Plug 'sheerun/vim-polyglot'

        " Themes
        Plug 'gf3/molotov'
        Plug 'preservim/nerdtree'
        Plug 'editorconfig/editorconfig-vim'
        Plug 'ciaranm/securemodelines'
call plug#end()
