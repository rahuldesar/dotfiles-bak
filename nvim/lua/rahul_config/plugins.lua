return {
  --  ========= MUST HAVE =============
  --  TELESCOPE
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or                              , branch = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive" },

  { "theprimeagen/harpoon" },
  "tpope/vim-rhubarb",
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  },


  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
    end
  },


  -- ======== Quality of Life ==========

  {
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },


  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },


  { "windwp/nvim-autopairs",   config = function() require("nvim-autopairs").setup {} end },

  {
    'akinsho/bufferline.nvim',
    version = "v3.*",
    dependencies =
    'nvim-tree/nvim-web-devicons'
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
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
  { 'akinsho/toggleterm.nvim', version = "*",                                             config = true },
  { 'numToStr/Comment.nvim' },

  -- Themes and Visuals
  --
  'navarasu/onedark.nvim',
  'olivercederborg/poimandres.nvim',
  { 'rose-pine/neovim', name = 'rose-pine' },
  { "catppuccin/nvim",  name = "catppuccin" },
  {
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
        --section_separators = { left = '', right = '' },
      },
    },
  },
  {
    'glepnir/dashboard-nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },


  { 'rcarriga/nvim-notify' },
  { 'metakirby5/codi.vim' },
  { 'NvChad/nvim-colorizer.lua' },
  { "folke/todo-comments.nvim" },
  { "dense-analysis/ale" },
  { "prettier/vim-prettier"},
  { "christoomey/vim-tmux-navigator",
  lazy = false,}
}
