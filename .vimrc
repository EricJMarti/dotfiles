" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'python-mode/python-mode'
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
set visualbell
set noerrorbells
set autowrite
set mouse=a
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

" CtrlP Settings
let g:ctrlp_map = '<c-f>'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'tomorrow'

" Tmuxline Settings
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}
