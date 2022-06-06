set nocompatible

" ********************************** Plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'morhetz/gruvbox'
"Plug 'sainnhe/gruvbox-material'
"Plug 'mangeshrex/uwu.vim'
"Plug 'ayu-theme/ayu-vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'projekt0n/github-nvim-theme'
"Plug 'cocopon/iceberg.vim'

Plug 'sheerun/vim-polyglot'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
"Plug 'jiangmiao/auto-pairs'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'ap/vim-buftabline'
"Plug 'preservim/nerdtree' |
            "\ Plug 'Xuyuanp/nerdtree-git-plugin' |
            "\ Plug 'ryanoasis/vim-devicons'
            
call plug#end()

" ********************************** Settings
syntax on
set hidden
set encoding=UTF-8
set number " Show line numbers
set relativenumber
set noswapfile " Disable swap file
set nohlsearch " Disable highlight all search results
set nobackup
set nowritebackup
set smartcase " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally
set nowrap " Disable line wrap
set background=dark
set cmdheight=1
set cursorline
"set cursorcolumn
set noshowmode
set updatetime=50
set noerrorbells " Disable Beep or flash screen on errors
set visualbell " Use visual bell (no beeping)
set showtabline=2  " Show tabline
let mapleader = " "
inoremap jk <ESC>
tnoremap jk <C-\><C-n> 
nnoremap <leader>conf :vi ~/.config/nvim/init.vim<CR>
nnoremap <leader>zsh :vi ~/.zshrc<CR>
nnoremap <leader>` :terminal<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-c> :bd<CR>
nnoremap <C-c>jj :bd!<CR>
vnoremap . :norm.<CR>

" ********************************** Keymaps
" Paste Keymaps
inoremap <C-p>j <C-r>"
inoremap <C-p>k <C-r>*

" Moving Between Windows
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Moving Between Buffers
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprev<CR>
" ********************************** Indent Configuration
filetype plugin indent on
set autoindent " Auto-indent new lines
set smartindent " Enable smart-indent
set cindent " For new line indent
set expandtab " Use spaces instead of tabs
set shiftwidth=2 " When indenting with '>', use 2 spaces width
set tabstop=2 " Show existing tab with 2 spaces width
set softtabstop=2 " Number of spaces per Tab

" ********************************** Coc.Nvim
let g:coc_node_path = '/home/mmrza/.nvm/versions/node/v16.14.2/bin/node' " Nodejs path for coc-nvim
let g:coc_global_extensions = ['coc-prettier', 'coc-eslint', 'coc-yaml', 'coc-tsserver', 'coc-json', 'coc-explorer', 'coc-html', 'coc-go', 'coc-deno']
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
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" ********************************** Coc.Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>f :CocCommand prettier.formatFile<CR>
vmap <leader>ff  <Plug>(coc-format-selected)
nmap <leader>ff  <Plug>(coc-format-selected)
" ********************************** Coc.Explorer
nmap <leader>nn :CocCommand explorer<CR>
let g:indentLine_fileTypeExclude = ['coc-explorer']
" ********************************** NerdTree

" ********************************** Nerd Commenter
let g:NERDCreateDefaultMappings = 1

" ********************************** ColorSchemes

" ********** Gruvbox
let g:gruvbox_italicize_comments=1
let g:gruvbox_underline=1
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" ********** Ayu
"let ayucolor="dark"
"colorscheme ayu

" ********** Nord
"let g:nord_italic_comments = 1
"let g:nord_italic = 1
"let g:nord_underline = 1
"let g:nord_bold_vertical_split_line = 1
"let g:nord_cursor_line_number_background = 1
"let g:nord_uniform_status_lines = 1
"let g:nord_uniform_diff_background = 1
"colorscheme nord

" ********** UWU
"colorscheme uwu

" ********** Github
"let g:github_sidebars = ['qf', 'vista_kind', 'terminal', 'packer']
"let g:github_comment_style = 'italic'
"let g:github_keyword_style = 'italic'
"let g:github_function_style = 'italic'
"let g:github_variable_style = 'italic'
"colorscheme github_dark_default

" ********** Gruvbox_Material
"if has('termguicolors')
  "set termguicolors
"endif
"let g:gruvbox_material_background = 'hard'
"let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_enable_bold = 1
"let g:gruvbox_material_sign_column_background = 'none'
"colorscheme gruvbox-material

" ********* Iceberg
"colorscheme iceberg

" *********************************** Fix colors in tmux
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" ********************************** FZF
nnoremap <leader>o :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>gh :History<CR>
nnoremap <leader>df :Commits<CR>
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" ********************************** Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': '%3l:%-2v',
      \ },
      \ 'component_function': {
      \   'mybranch' : 'MyBranch',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['mybranch'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}

function! MyBranch()
  return FugitiveHead() . ' '
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" ********************************** Lightline-BufferLine
let g:lightline#bufferline#enable_devicons=1
let g:lightline#bufferline#unicode_symbols=1
let g:lightline#bufferline#icon_position='first'
let g:lightline#bufferline#unicode_symbols=1

" ********************************** IndentLine Guides
"let g:indentLine_enabled = 0
"let g:indentLine_char = '|'
"let g:indentLine_char = '│'
let g:indentLine_char = '▏'

" ********************************** Other Configs
" Fix Terminal Colors
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
