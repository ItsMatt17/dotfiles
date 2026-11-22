local opt = vim.opt

-- Indentiation
opt.smartindent = true
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.scrolloff = 8
-- opt.shifttabstop = 2

-- File
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false
opt.autowrite = true
opt.autoread = true
opt.undofile = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Completions
opt.completeopt = { "menu", "menuone", "noselect" }
opt.showcmd = true

-- Misc
vim.o.showmode = false
opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.list = true
opt.mouse = "a"

-- vim.diagnostic.config({
--   virtual_text = true,
--   signs = true,
--   underline = true,
--   severity_sort = true,
-- })
