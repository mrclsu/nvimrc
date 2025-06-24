" Load plugins
call plug#begin('~/.vim/plugged')

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }


" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}

" Theme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rose-pine/neovim'

" Tab bar
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Status bar
Plug 'nvim-lualine/lualine.nvim'

" File tree
Plug 'kyazdani42/nvim-tree.lua'

" ~~youtube~~ comments 
Plug 'preservim/nerdcommenter'

" Github Cockpilot
" Plug 'github/copilot.vim'

" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'          " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional

" Autocompletion
Plug 'hrsh7th/nvim-cmp'     " Required
Plug 'hrsh7th/cmp-nvim-lsp' " Required
Plug 'L3MON4D3/LuaSnip'     " Required

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

call plug#end()

" Enable line numbers
set number

" Configure theme
set background=dark
colorscheme rose-pine-moon 

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

lua require('lsp-zero-setup')

lua require('keybinds')

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

