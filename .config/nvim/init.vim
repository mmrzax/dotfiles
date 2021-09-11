call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'ap/vim-buftabline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
            
call plug#end()

syntax on
set encoding=UTF-8
set number " Show line numbers
set noswapfile " Disable swap file
set nohlsearch " Disable highlight all search results
set nobackup
set nowritebackup
set smartcase " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally
set nowrap " Disable line wrap
set background=dark
"set clipboard=unnamedplus
set cmdheight=2
set noshowmode
set updatetime=50
set noerrorbells " Disable Beep or flash screen on errors
set visualbell " Use visual bell (no beeping)
let mapleader = " "
inoremap jk <ESC>
tnoremap jk <C-\><C-n> 
nnoremap <leader>conf :vi ~/.config/nvim/init.vim<CR>
nnoremap <leader>zsh :vi ~/.zshrc<CR>
nnoremap <leader>` :terminal<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-c> :bd<CR>
nnoremap <C-c>jj :q<CR>

" Paste Configuration
inoremap <C-p>j <C-r>"
inoremap <C-p>k <C-r>*

" INDENT CONFIG
filetype plugin indent on
set autoindent " Auto-indent new lines
set smartindent " Enable smart-indent
set cindent " For new line indent
set expandtab " Use spaces instead of tabs
set shiftwidth=2 " When indenting with '>', use 2 spaces width
set tabstop=2 " Show existing tab with 2 spaces width
set softtabstop=2 " Number of spaces per Tab

" COC.NVIM CONFIG
" ****************************************************************************************************
let g:coc_node_path = '/home/mmrza/.nvm/versions/node/v14.17.6/bin/node' " Nodejs path for coc-nvim
set shortmess+=c " " Don't pass messages to ins-completion-menu
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" COC.PRETTIER CONFIG
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>f :CocCommand prettier.formatFile<CR>
vmap <leader>ff  <Plug>(coc-format-selected)
nmap <leader>ff  <Plug>(coc-format-selected)

" **************************************************************************************************

" NERDTREE CONFIG
" Mirror the NERDTree before showing it this makes it the same on all tabs
nnoremap <leader>n :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" NERTTREE_GIT_STATUS CONFIG
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusWithFlags = 1
"let g:NERDTreeGitStatusShowClean = 1

" NERDCOMMENTER CONFIG
let g:NERDCreateDefaultMappings = 1


" FZF CONFIG
nnoremap <leader>o :Files<CR>

" LIGHTLINE CONFIG
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v', 
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}
" Uncomment these lines and uninstall buftabline plugin to using lightabline
"let g:lightline.tabline = {
  "\   'left': [ ['tabs'] ],
  "\   'right': [ ['close'] ]
  "\ }
"set showtabline=2  " Show tabline
"set guioptions-=e  " Don't use GUI tabline
" Functions for using nerdfont icons in the lightline
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" THEME CONFIG
"let g:gruvbox_contrast_dark = 'hard'
"autocmd vimenter * ++nested colorscheme gruvbox
let ayucolor="dark"
colorscheme ayu

" INDENT-LINE CONFIG (replace your favorite character with c)
"let g:indentLine_char = 'c'

" FIX TERMINAL COLORS
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" BUFTABLINE SETUP
set hidden
nnoremap <C-n> :bnext<CR>
"nnoremap <C-p> :bprev<CR>
