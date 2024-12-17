vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:airline_theme='blood_red'")
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- python. only reason this is here		i
-- Window Options
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Essentials
vim.opt.number = true
--
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered
vim.opt.termguicolors = true

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
