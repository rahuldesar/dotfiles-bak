-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("rahul_config.remap")
require("rahul_config.lazyVim")
require("rahul_config.set")
