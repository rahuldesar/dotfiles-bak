local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Remove key mappings for <C-w>h, <C-w>l, <C-w>j, and <C-w>k in normal mode

-- vim.keymap.set("n", "<C-t>", function()
-- 	ui.nav_file(1)
-- end)
-- vim.keymap.set("n", "<C-n>", function()
-- 	ui.nav_file(2)
-- end)
-- vim.keymap.set("n", "<C-s>", function()
-- 	ui.nav_file(3)
-- end)
-- vim.keymap.set("n", "<C-->", function()
-- 	ui.nav_file(4)
-- end)


vim.keymap.set("n", "<leader>1", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
	ui.nav_file(4)
end)
