return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',

      config = {
        week_header = {
          enable = true,
        },
      },
      hide = {
        statusline = false,
        winbar = true,
      },
    }
  end,
}
