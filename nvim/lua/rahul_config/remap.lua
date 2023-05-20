-- vim.keymap.set("n", "<leader><leader>", function()
--   vim.cmd("so")
-- end)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", vim.cmd.NvimTreeFindFileToggle, { desc = 'Toggle File Explorer' })
vim.api.nvim_set_keymap('', '<C-\\>', ':vs<CR>', { noremap = true, desc = 'Split Vertical, VS code'})

--vim.keymap.set("n", "<leader>b", vim.cmd.Ex)

vim.keymap.set("n", "<Tab>", ":bnext<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", {noremap=true, silent=true})

--vim.api.nvim_set_keymap('', '<C-w>', ':q<CR>', {noremap = true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Alt + UP' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Alt + DOWN' })

vim.keymap.set("n", "J", "mzJ`z", { desc = '[J]oin without moving cursor' })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = '[D]own half page, cursor at middle' })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = '[U]p half page, cursor at middle' })
vim.keymap.set("n", "n", "nzzzv", { desc = 'Search next term in middle' })
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Search previous term in middle' })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = '[P]ut without overwriting buffer' })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = '[D]eleting to void register' })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = '[Y]ank to Clipboard' })
vim.keymap.set({ "n", "v" }, "<C-S-c>", [["+y]], { desc = 'Yank to Clipboard, Terminal style' })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = '[Y]ank whole line to Clipboard' })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-z>", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>;", vim.lsp.buf.format, { desc = '[F]ormat' })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = 'Quick fix, Up' })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = 'Quick fix, Down' })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
--   { desc = ' S]ubstitute word on cursor' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
