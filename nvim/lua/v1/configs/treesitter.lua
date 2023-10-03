return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"cpp",
				"python",
				"go",
			},
			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			-- auto install above language parsers
			auto_install = true,

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<A-p>", -- set to `false` to disable one of the mappings
					node_incremental = "<A-p>",
					scope_incremental = "W",
					node_decremental = "<A-o>",
					-- init_selection = "gnn", -- set to `false` to disable one of the mappings
					-- node_incremnntal = "grn",
					-- scope_incremental = "grc",
					-- node_decremental = "grm",
				},
			},
		})
	end,
}
