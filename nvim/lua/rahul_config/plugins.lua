return {

  -- Themes and Visuals
  'navarasu/onedark.nvim',
  'olivercederborg/poimandres.nvim',
  { -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = false,
      theme = 'auto',
      component_separators = '|',
      section_separators = '',
    },
  },
},
-- {
--   "nvim-tree/nvim-tree.lua",
--   version = "*",
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     require("nvim-tree").setup {}
--   end,
-- },

{ -- Add indentation guides even on blank lines
'lukas-reineke/indent-blankline.nvim',
-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
opts = {
  char = '┊',
  show_trailing_blankline_indent = false,
},
  },



  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},

  'tpope/vim-rhubarb',
  { -- Autocompletion
  'hrsh7th/nvim-cmp',
  dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
},

}
