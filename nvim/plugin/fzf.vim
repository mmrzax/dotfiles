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
