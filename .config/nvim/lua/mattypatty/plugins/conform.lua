return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'black', 'isort' },
      javascript = { 'prettierd', 'prettier', lsp_format = 'fallback' },
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
