local servers = {
  "lua_ls",
  "vtsls",
  "pyright",
  "html",
  "cssls",
  "clangd",
  "eslint",
  "tailwindcss",
  "astro",
  "ocamllsp",
  "jsonls",
  "yamlls",
}

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim",           opts = {} },
    { "mason-org/mason-lspconfig.nvim", opts = { ensure_installed = servers } },
    {
      "nvim-java/nvim-java",
      config = function()
        require("java").setup()
      end,
    },
  },
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    vim.lsp.config("*", { capabilities = capabilities })
    vim.lsp.enable(servers)
    vim.lsp.enable("jdtls")

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if not client then
          return
        end

        if client:supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = ev.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
            end,
          })
        end
      end,
    })
  end,
}
