-- See `:help nvim-treesitter`
require("nvim-treesitter.configs").setup({
	-- Add languages to be installed here that you want installed for treesitter
	ensure_installed = { "c", "cpp", "lua", "python", "rust", "tsx", "javascript", "typescript", "help", "vim", "ruby" },

	-- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
	auto_install = true,

	highlight = { enable = true },
	indent = { enable = true, disable = { "python" } },
	 incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  textobjects = {
		select = {
			enable = false,
			-- lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			-- keymaps = {
			--   -- You can use the capture groups defined in textobjects.scm
			--       ['aa'] = '@parameter.outer',
			--       ['ia'] = '@parameter.inner',
			--       ['af'] = '@function.outer',
			--       ['if'] = '@function.inner',
			--       ['ac'] = '@class.outer',
			--       ['ic'] = '@class.inner',
			-- },
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				--           ['<leader>a'] = '@parameter.inner',
			},
			swap_previous = {
				["<leader>A"] = "@parameter.inner",
			},
		},
	},
})
