local lsp = require('lsp-zero').preset({})
local lsp_conf = require('lspconfig')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
lsp_conf.lua_ls.setup(lsp.nvim_lua_ls())
lsp_conf.gleam.setup({})

lsp.setup()
