return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black", "isort" },
      javascript = { "prettierd", "prettier", lsp_format = "fallback" },
      c = { "clang_format" },
      ocaml = { "ocamlformat" },
    },
    formatters = {
      clang_format = {
        prepend_args = { "--style=file", "--fallback-style=LLVM" },
      },

      ocamlformat = {
        prepend_args = {
          "--if-then-else",
          "vertical",
          "--break-cases",
          "fit-or-vertical",
          "--type-decl",
          "sparse",
        },
      },
    },

    default_format_opts = {
      lsp_format = "fallback",
    },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },
  log_level = vim.log.levels.DEBUG,
}
