return {
  'coffebar/neovim-project',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    -- optional picker
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
    -- optional picker
    { 'ibhagwan/fzf-lua' },
    { 'Shatur/neovim-session-manager' },
  },
  opts = {
    projects = { -- define project roots
      '~/Projects/*',
      '~/.config/*',
    },
    datapath = vim.fn.stdpath 'data', -- ~/.local/share/nvim/
    picker = {
      type = 'telescope', -- or "fzf-lua"
    },
  },
  init = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>pd', ':NeovimProjectDiscover<CR>', { desc = 'Find project directories' })
    keymap.set('n', '<leader>ph', ':NeovimProjectHistory<CR>', { desc = 'Load project directories history' })
    keymap.set('n', '<leader>pl', ':NeovimProjectLoadRecent<CR>', { desc = 'Load project directory' })
  end,
  lazy = false,
  priority = 100,
}
