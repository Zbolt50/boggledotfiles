local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- Add Plugins here
-- vim practice
Plug('ThePrimeagen/vim-be-good')

-- Git related Plugins
Plug('https://github.com/tpope/vim-fugitive')
Plug('lewis6991/gitsigns.nvim')

-- NeoTree
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-neo-tree/neo-tree.nvim')
Plug('MunifTanjim/nui.nvim')
Plug('nvim-tree/nvim-web-devicons')

-- Treesitter
Plug('nvim-treesitter/nvim-treesitter')

-- Misc
Plug('tpope/vim-eunuch')
Plug('stevearc/overseer.nvim')
Plug('ThePrimeagen/harpoon')
Plug('s1n7ax/nvim-window-picker')

-- Notifications
Plug('rcarriga/nvim-notify')
-- Vim Airline Status Bar
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')

-- Themeing
Plug('paulfrische/reddish.nvim')

-- UndoTree
Plug('mbbill/undotree')

-- LSP
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
-- CMP
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('rafamadriz/friendly-snippets')


vim.call('plug#end')
require('lspconfig').lua_ls.setup({})
vim.cmd('silent! colorscheme reddish')


    


