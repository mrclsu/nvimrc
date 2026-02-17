local k, l, api = vim.keymap.set, vim.lsp, vim.api

k({'n', 'v', 'o'}, '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


local telescope_builtin = require('telescope.builtin')
k('n', '<C-p>', telescope_builtin.find_files, {})
k('n', '<leader>fg', telescope_builtin.live_grep, {})
k('n', '<leader>fb', telescope_builtin.buffers, {})
k('n', '<leader>fh', telescope_builtin.help_tags, {})

-- buf keybindings
local keys_on_attach = function(_, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        k("n", "gD", l.buf.declaration, bufopts)
        k("n", "gd", l.buf.definition, bufopts)
        k("n", "gi", l.buf.implementation, bufopts)
        k("n", "<leader>D", l.buf.type_definition, bufopts)
        k("n", "gr", l.buf.references, bufopts)
        k("n", "<leader>ca", l.buf.code_action, bufopts)
        k("v", "<leader>ca", l.buf.code_action, bufopts)
end
