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
