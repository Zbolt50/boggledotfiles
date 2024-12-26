-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope find string in cwd' })
        vim.keymap.set('n', '<leader>fc', builtin.grep_string, { desc = 'Telescope find string under cursor in cwd' })
    end
}
