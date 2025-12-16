require("mason").setup()

local mason_lspconfig = require("mason-lspconfig").setup {
    automatic_enable = true
}


require('cmp').setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

--require("mason-lspconfig").setup_handlers({
  ---- default handler for every installed server
  --function(server_name)
    --lspconfig[server_name].setup({
    --capabilities = capabilities,
    --})
  --end
--})

-- vim.lsp.enable('lua_ls')
-- vim.lsp.enable('gleam')

