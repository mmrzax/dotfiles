set nocompatible

" Main Config
source ~/.config/nvim/plug.vim
source ~/.config/nvim/set.vim
source ~/.config/nvim/keymap.vim
source ~/.config/nvim/colorscheme.vim
source ~/.config/nvim/fix-colors.vim

" Plugin Config
source ~/.config/nvim/plugin/coc-nvim.vim
source ~/.config/nvim/plugin/coc-prettier.vim
source ~/.config/nvim/plugin/coc-explorer.vim
source ~/.config/nvim/plugin/lightline.vim
source ~/.config/nvim/plugin/lightline-bufferline.vim
source ~/.config/nvim/plugin/nerdcommenter.vim
source ~/.config/nvim/plugin/fzf.vim
source ~/.config/nvim/plugin/indentline.vim

" Lua Config
lua require("arya/telescope")
lua require("arya/treesitter")
lua require('go').setup()
