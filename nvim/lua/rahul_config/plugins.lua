return {
  --  ========= LSP and  all the good stuff =============

  { "mbbill/undotree" },
  { "theprimeagen/harpoon" },
  { "tpope/vim-rhubarb" },
  { "nvim-treesitter/playground" },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      pcall(require("nvim-treesitter.install").update({ with_sync = true }))
    end,
  },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- Lsp
      { "neovim/nvim-lspconfig", },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  },

  { "lewis6991/gitsigns.nvim" },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  -- ======== Quality of Life ==========

  { "christoomey/vim-tmux-navigator",      lazy = false },
  { "sindrets/diffview.nvim" },
  { "akinsho/toggleterm.nvim",             version = "*",                                                    config = true },
  { "numToStr/Comment.nvim" },
  { "lukas-reineke/indent-blankline.nvim", opts = { char = "┊", show_trailing_blankline_indent = false, }, },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  {
    "akinsho/bufferline.nvim",
    version = "v3.*",
    dependencies = "nvim-tree/nvim-web-devicons",
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- ========== Themes and Visuals ===========

  { "catppuccin/nvim",            name = "catppuccin" },
  -- { "mhinz/vim-startify" },
  { "norcalli/nvim-colorizer.lua" },

  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },
    },
  },
  { "tpope/vim-fugitive" },


  -- ========== Debugger ===========
  --
  { "mfussenegger/nvim-dap" },
  { "mxsdev/nvim-dap-vscode-js" },
  -- {"leoluz/nvim-dap-go"},
  { "rcarriga/nvim-dap-ui" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "folke/todo-comments.nvim" },
}
