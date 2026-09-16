local langs = {
  "html",
  "javascript",
  "typescript",
  "tsx",
  "css",
  "python",
  "java",
  "c",
  "http",
  "json",
  "astro",
  "json5",
  "ocaml",
}

local filetypes = {
  "html",
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "css",
  "python",
  "java",
  "c",
  "json",
  "astro",
  "http",
  "ml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install(langs)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
