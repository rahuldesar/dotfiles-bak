local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = '[G]o to [D]efinition' })
  vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, { desc = '[G]o to [D]efinition' })
  vim.keymap.set("n", "<leader>gD", function() vim.cmd('vsplit | lua vim.lsp.buf.definition()') end,
    { desc = '[G]o to [D]efinition in vertical split', noremap = true })
  vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, { desc = '[G]o to [R]eferences' })
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  vim.keymap.set('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
end)

-- vim.keymap.set("n", "<leader>b", vim.cmd.NvimTreeFindFileToggle, { desc = 'Toggle File Explorer' })
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
