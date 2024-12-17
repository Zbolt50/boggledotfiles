-- Neotree
vim.keymap.set('n', '<leader>n', function() vim.cmd [[Neotree toggle]] end)
require('neo-tree').setup {
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true,
        },
    },
}
