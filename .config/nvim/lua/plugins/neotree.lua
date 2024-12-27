return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      source_selector = {
        winbar = true,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            -- add extensions to explicitly hide
          },
          never_show = {},
        },
      },
      default_component_configs = {
        name = {
          use_git_status_colors = false,
        },
      },
      window = {
        color_set = 'reddish',
      },
    }
    vim.keymap.set('n', '<leader>n', function()
      vim.cmd [[Neotree toggle]]
    end)
  end,
}
