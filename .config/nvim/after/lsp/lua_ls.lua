return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  settings = {
    Lua = {
      codeLens = { enable = true },
      hint = { enable = true, semicolon = 'Disable' },
      runtime = {
        version = 'LuaJIT',
      },
      workspace = {
        preloadFileSize = 10000,
        library = {
          vim.env.VIMRUNTIME,
        }
      }
    },
  },

}
