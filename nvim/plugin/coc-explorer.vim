nmap <leader>nn :CocCommand explorer<CR>
let g:indentLine_fileTypeExclude = ['coc-explorer']

" auto close vim when coc-explorer is last window
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
