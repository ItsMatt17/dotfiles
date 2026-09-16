-- LSP
-- vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>")
-- vim.keymap.set("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>")
-- vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
-- vim.keymap.set("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>")


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>s", ":%s//g<Left><Left>")                  -- Replace all
vim.keymap.set("n", "<A-a>", "ggVG", { noremap = true, silent = true }) -- Select all
vim.keymap.set("n", "<leader>te", ":term<CR>")                          -- Open terminal

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Copying
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Copy to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])          -- Copy
