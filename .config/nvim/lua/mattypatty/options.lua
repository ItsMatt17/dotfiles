local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false

-- Indentiation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- File
opt.autowrite = true
opt.autoread = true
opt.undofile = true

-- Splits
opt.splitright = true

opt.ignorecase = true
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
