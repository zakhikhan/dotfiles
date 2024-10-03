set nu rnu
set tabstop=4
set so=3
set undofile
set report=0
set autoindent
set expandtab
set laststatus=2
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set showcmd
set nowrap
set showmode
set noshowmatch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.xlsx,*.pdf
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set history=500
set autoread
let g:python_highlight_all = 1
let mapleader = " " 
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation for GitHub; translates to https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/seoul256.vim.git'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Using a non-default branch
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tpope/vim-sensible'
" Use 'dir' option to install plugin in a non-default directory
" Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Post-update hook: run a shell command after installing or updating the plugin
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Post-update hook can be a lambda expression
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
" Plug 'nsf/gocode', { 'rtp': 'vim' }

" On-demand loading: loaded when the specified command is executed
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdtree' 
" On-demand loading: loaded when a file with a specific file type is opened
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
" Plug 'vim-python/python-syntax'
Plug 'dense-analysis/ale'
Plug 'dahu/learnvim'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end() 
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
let g:ale_linters = {'python': ['pyflakes','unimport']}
