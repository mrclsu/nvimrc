" Load plugins
call plug#begin('~/.vim/plugged')

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}

" Rainbow parantheses
Plug 'p00f/nvim-ts-rainbow'

" Theme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jeffkreeftmeijer/vim-dim'

" Tab bar
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Status bar
Plug 'nvim-lualine/lualine.nvim'

" File tree
Plug 'kyazdani42/nvim-tree.lua'

" ~~youtube~~ comments 
Plug 'preservim/nerdcommenter'

call plug#end()

" Enable line numbers
set number

" Configure theme
set background=dark
colorscheme dim

"if (has("termguicolors"))
  "set termguicolors
"endif

" Load statusline
lua require('lualine').setup({options = {icons_enabled = true, theme = 'palenight', component_separators = {'|', '|'},section_separators = {'', ''}}})

" Load filetree
lua require('nvim-tree-setup')

" Load tabline
lua require('barbar-setup')

" Enable rainbow brackets
let g:rainbow_active = 1

" Treesitter setup
lua require('treesitter-setup')

" Terminal setup
lua require("toggleterm").setup{ size = vim.o.columns * 0.4, open_mapping = [[<c-`>]], direction = 'vertical',}

" Remove the themes background color
highlight Normal guibg=NONE ctermbg=NONE
" highlight NonText ctermbg=none

" Configure tab stop
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 

" Configure 
" Restore vertical bar cursor shape on exit
au VimLeave * set guicursor=n-c-v:ver2-iCursor

" Enable mouse mode
set mouse=a

" Configure ctrl+space  
set nocompatible
set hidden
set encoding=utf-8

