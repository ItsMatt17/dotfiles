return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = {
        transparent = true,
      },
      auto_integrations = true,
      blink_cmp = {
        style = "bordered",
      },
    })

    vim.cmd([[colorscheme catppuccin-nvim]])
  end,
}
