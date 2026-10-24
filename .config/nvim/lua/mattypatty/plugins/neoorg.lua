return {
  "https://github.com/nvim-orgmode/orgmode",
  dependencies = { "akinsho/org-bullets.nvim", opts = {} },
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/orgfiles/**/*",
      org_default_notes_file = "~/orgfiles/refile.org",
    })

    vim.lsp.enable("org")
  end,
}
