-- install lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- add plugins
require("lazy").setup({
	{
		"morhetz/gruvbox",
		config = function()
			vim.cmd.colorscheme("gruvbox")
			vim.opt.background = "dark"
		end,
	},
	-- Fuzzy Finder (files, lsp, etc)
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built.
			-- Only load if `make` is available. Make sure you have the system
			-- requirements installed.
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				-- NOTE: If you are having trouble with this installation,
				--       refer to the README for telescope-fzf-native for more instructions.
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{ import = "v1.configs.cmp" },
	{ import = "v1.configs.lspconfig" },
	{ import = "v1.configs.lsp" },
	{ import = "v1.configs.nullls" },
	{ import = "v1.configs.treesitter" },
	{ import = "v1.configs.nvim-tree" },
	{ import = "v1.configs.gitsigns" },
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		lazy = false,
	},
})

require("v1.configs.telescope")
