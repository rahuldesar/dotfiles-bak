local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

vim.keymap.set('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
