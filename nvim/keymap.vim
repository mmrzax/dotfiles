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

" Paste
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

" Telescope Keymaps
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fgf <cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fgc <cmd>lua require('telescope.builtin').git_commits(require('telescope.themes').get_ivy({}))<cr>
nnoremap <leader>fgs <cmd>lua require('telescope.builtin').git_status(require('telescope.themes').get_ivy({}))<cr>
nnoremap <leader>fl <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').grep_string(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>ftheme <cmd>lua require('telescope.builtin').colorscheme(require('telescope.themes').get_cursor({}))<cr>
nnoremap <leader>fts <cmd>lua require('telescope.treesitter').treesitter(require('telescope.themes').get_dropdown({}))<cr>
