call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Colorscheme
Plug 'sainnhe/everforest'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'

" Appearance
Plug 'mengelbrecht/lightline-bufferline'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

" LSP - Linter - Syntax Highlight
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'


" Coding Tools
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'

" Tools
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
            
call plug#end()
