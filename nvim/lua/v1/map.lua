vim.g.mapleader = " "

vim.keymap.set("n", "<leader><CR>", function()
	vim.cmd("so")
end)

-- move highlights to top/bottom line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- toggle for switch between last file
vim.keymap.set("n", "<leader><leader>", "<C-^>")

-- for better expirence in movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- for exit from insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- for saveing files
vim.keymap.set("n", "<C-s>", vim.cmd.update)
vim.keymap.set("i", "<C-s>", vim.cmd.update)
vim.keymap.set("n", "<leader>s", vim.cmd.update)

-- greatest remap ever
vim.keymap.set("x", "p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- for iterate between quickfix
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- for better window navigation
vim.keymap.set("n", "<leader>wj", ":TmuxNavigateDown<cr>")
vim.keymap.set("n", "<leader>wl", ":TmuxNavigateRight<cr>")
vim.keymap.set("n", "<leader>wk", ":TmuxNavigateUp<cr>")
vim.keymap.set("n", "<leader>wh", ":TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<leader>wq", "<C-w>q")
vim.keymap.set("n", "<leader>wo", "<C-w>o")
vim.keymap.set("n", "<leader>wv", "<C-w>v")
vim.keymap.set("n", "<leader>ws", "<C-w>s")

-- file explore
-- vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeFocus<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
vim.keymap.set("n", "<A-1>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Plugin Telescope
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })

vim.keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set({ "n", "i", "v" }, "<C-p>", require("telescope.builtin").git_files, { desc = "Search Git Files" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { desc = "[S]earch [R]resume" })

vim.keymap.set({ "n", "i" }, "<A-i>", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>n", ":Neogit<CR>")
vim.keymap.set(
	"n",
	"<leader>ci",
	[[<cmd>lua require'telescope'.extensions.goimpl.goimpl{}<CR>]],
	{ noremap = true, silent = true }
)

-- init_selection = "<A-p>", -- set to `false` to disable one of the mappings
-- node_incremental = "<A-p>",
-- scope_incremental = "W",
-- node_decremental = "<A-o>",
