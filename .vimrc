" Plugins
set nocompatible
filetype off
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'python-mode/python-mode'
Plugin 'rust-lang/rust.vim'
call vundle#end()

" Basic Settings
filetype plugin indent on
syntax enable
set t_Co=256
set showmode
set nowrap
set tabstop=4
set smarttab
set tags=tags
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set ignorecase
set smartcase
set timeout timeoutlen=200 ttimeoutlen=100
set noerrorbells
set autowrite
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set foldenable
set foldmethod=marker
set foldlevel=0
set modelines=0
set hidden
set ttyfast
set laststatus=2
set autoread
set noswapfile
set nobackup
set nowb
set history=100

" Leader Key
let mapleader=","

" Reload Config
map <leader>s :source ~/.vimrc<cr>

" Colors
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Disable Highlighting
map <silent> <leader><cr> :noh<cr>

" Better Esc Key
imap jk <Esc>
imap kj <Esc>

" Better Window Switching Keys
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Better Buffer Switching Keys
nmap <Left> :bp<cr>
nmap <Right> :bn<cr>

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'dark_minimal'

" FZF Settings
map <C-f> :FZF<cr>
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }
let g:fzf_layout = { 'down': '~40%' }

" Tmuxline Settings
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left':      '',
    \ 'left_alt':  '>',
    \ 'right':     '',
    \ 'right_alt': '<',
    \ 'space':     ' ' }
