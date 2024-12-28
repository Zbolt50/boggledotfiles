-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  },
  config = function()
    local keymap = vim.keymap
    local builtin = require 'telescope.builtin'
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
    keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope find string in cwd' })
    keymap.set('n', '<leader>fc', builtin.grep_string, { desc = 'Telescope find string under cursor in cwd' })
  end,
}
