return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
    },

  },
  dependencies = {
    {
      "nvim-mini/mini.icons",
      opts = {},
      verison = "*",
      config = function()
        require("mini.icons").setup({})
      end,

    }
  },
  lazy = false,
  config = function()
    require("oil").setup({})
    vim.keymap.set("n", "<leader>ce", "<CMD>Oil ~/.config/nvim/<CR>")
    vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")
  end

}
