return {
  'nvim-telescope/telescope.nvim',
  version = '0.2.2',
  opts = {
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  config = function()
    require('telescope').setup {
      defaults = {
        file_ignore_patterns = {
          "node%_modules/.*",
          "%.git/",
          "build/",
          "dist/",
        } },
      pickers = {
        find_files = {
          theme = "ivy"
        },

      }
    }

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope normal mode keymaps' })
  end,

}
