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
    local telescope = require 'telescope'
    local builtin = require 'telescope.builtin'
    telescope.setup {
      pickers = {
        find_files = {
          hidden = true,
          -- needed to exclude some files & dirs from general search
          -- when not included or specified in .gitignore
          find_command = {
            'rg',
            '--files',
            '--hidden',
            '--glob=!**/.git/*',
            '--glob=!**/.gitignore',
            '--glob=!**/.github',
            '--glob=!**/.idea/*',
            '--glob=!**/.vscode/*',
            '--glob=!**/build/*',
            '--glob=!**/dist/*',
            '--glob=!**/yarn.lock',
            '--glob=!**/package-lock.json',
          },
        },
        live_grep = {
          additional_args = function()
            return { '--hidden', '--glob', '!**/.git/*' }
          end,
        },
        grep_string = {
          additional_args = function()
            return { '--hidden', '--glob', '!**/.git/*' }
          end,
        },
        projects = {
          additional_args = function()
            return { '--hidden', '--glob', '!**/.git/*' }
          end,
        },
      },
    }
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
    keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope find string in cwd' })
    keymap.set('n', '<leader>fc', builtin.grep_string, { desc = 'Telescope find string under cursor in cwd' })
  end,
}
