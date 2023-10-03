o = vim.opt -- alias

o.scrolloff = 8
o.sidescrolloff = 8

o.number = true
o.relativenumber = true

o.expandtab = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

o.smartindent = true
-- for better search expirence
o.ignorecase = true
o.smartcase = true

o.hlsearch = false

o.signcolumn = "yes"
o.wrap = false
-- o.fileencoding = "utf-8"

o.swapfile = false

-- for all mode enabled
o.mouse = "a"
-- pop menu height
o.pumheight = 10
-- for horizental split on right
o.splitright = true
-- for vertical split  on bellow
o.splitbelow = true
-- enable persistent undo
o.undofile = true
-- for update on disk default is 4000
o.updatetime = 300
-- for hightlight the current line
o.cursorline = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
o.termguicolors = true
