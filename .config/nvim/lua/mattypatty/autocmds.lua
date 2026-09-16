local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Yank Highlighting
autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Default split to vertical
autocmd("FileType", { pattern = "help", command = "wincmd L" })

autocmd("LspAttach", {
  callback = function(ev)
    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end, { buffer = ev.buf, desc = "Go to Definition" })

    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover({ border = "rounded" })
    end, { buffer = ev.buf, desc = "Show definition" })

    vim.keymap.set("n", "<leader>vd", function()
      vim.diagnostic.open_float()
    end, { buffer = ev.buf, desc = "Show definition" })
  end,
})
