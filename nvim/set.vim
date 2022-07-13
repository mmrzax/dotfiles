" Genereal Set
syntax on
set hidden
set encoding=UTF-8
set noswapfile " Disable swap file
set nobackup
set nowritebackup
set background=dark
set cmdheight=1
set noshowmode
set updatetime=50
set noerrorbells " Disable Beep or flash screen on errors
set visualbell " Use visual bell (no beeping)
set showtabline=2  " Show tabline
set shortmess+=c " " Don't pass messages to ins-completion-menu
set signcolumn=yes
set termguicolors

" Line Set
set number " Show line numbers
set nowrap " Disable line wrap
set relativenumber
set cursorline
set cursorcolumn

" Search Set
set nohlsearch " Disable highlight all search results
set smartcase " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally

" Line Indent Set
filetype plugin indent on
set autoindent " Auto-indent new lines
set smartindent " Enable smart-indent
set cindent " For new line indent
"set expandtab " Use spaces instead of tabs
set shiftwidth=4 " When indenting with '>', use 2 spaces width
set tabstop=4 " Show existing tab with 2 spaces width
"set softtabstop=2 " Number of spaces per Tab
