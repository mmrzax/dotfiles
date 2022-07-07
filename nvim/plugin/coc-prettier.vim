command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>f :CocCommand prettier.formatFile<CR>
vmap <leader>fmt  <Plug>(coc-format-selected)
nmap <leader>fmt  <Plug>(coc-format-selected)
