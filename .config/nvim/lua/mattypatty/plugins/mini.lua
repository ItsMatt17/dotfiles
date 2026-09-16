return {
  "nvim-mini/mini.nvim",
  version = "*",
  opts = {},
  config = function()
    require("mini.ai").setup({ n_lines = 200 })
    require("mini.pairs").setup()
    require("mini.surround").setup()
    require("mini.move").setup()
    require("mini.splitjoin").setup()

    -- local miniclue = require("mini.clue")
    -- miniclue.setup({
    --   triggers = {
    --     { mode = "n", keys = "<Leader>" },
    --     { mode = "n", keys = "g" },
    --     { mode = "n", keys = "<C-w>" },
    --     { mode = "n", keys = "]" },
    --     { mode = "n", keys = "[" },
    --   },
    --   clues = {
    --     miniclue.gen_clues.g(),
    --     miniclue.gen_clues.windows({ submodule = true }),
    --     miniclue.gen_clues.builtin_completion(),
    --     miniclue.gen_clues.registers(),
    --   },
    --   window = {
    --     delay = 100,
    --     config = {
    --       width = "auto",
    --       border = "border"
    --     }

    --   }
    -- })
  end,
}
