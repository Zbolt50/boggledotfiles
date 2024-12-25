return {
    "vim-airline/vim-airline",
    dependencies = {
    "vim-airline/vim-airline-themes"
    },
    config = function()
    vim.cmd("let g:netrw_liststyle = 3")
    vim.cmd("let g:airline_theme='blood_red'")
    end
}

