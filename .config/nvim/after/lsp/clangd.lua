return {
  cmd = {
    "clangd",
    "--background-index",          -- Index codebase in the background
    "--clang-tidy",                -- Enable clang-tidy diagnostics
    "--header-insertion=never",    -- Important for C: Prevents clangd from accidentally inserting C++ headers
    "--completion-style=detailed", -- Detailed autocomplete details
    "--function-arg-placeholders", -- Insert placeholders for function arguments
    "--fallback-style=llvm",
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    clangdFileStatus = true,
    fallbackFlags = { "--std=c99" },
  },
}
