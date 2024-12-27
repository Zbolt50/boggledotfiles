return {
  -- NVIM Formatting
  'stevearc/conform.nvim',
  event = { 'BufReadPre' },
  config = function()
    local conform = require 'conform'

    conform.setup {
      formatters_by_ft = {
        cpp = { 'clang-format' },
        c = { 'clang-format' },
        lua = { 'stylua' },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    }
    local keymap = vim.keymap
    keymap.set({ 'n', 'v' }, '<leader>mp', function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      }
    end, { desc = 'Format file or range (in visual mode)' })
  end,
}
