return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = {
      enabled = true,
    },
    input = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          win = {
            list = {
              wo = {
                wrap = true,
                relativenumber = true,
              },
            },
          },
        },
      },
    },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    styles = {
      notification = {
        -- wo = { wrap = true } -- Wrap notifications
      },
    },
  },
  vim.keymap.set('n', '<leader>ft', function()
    require('snacks.explorer').open {}
  end, { noremap = true, silent = true, desc = 'Open Snacks Explorer' }),

  -- Show notifications
  vim.keymap.set('n', '<leader>fn', function()
    require('snacks.notifier').show_history()
  end, { noremap = true, silent = true, desc = 'Show Snacks Notifications' }),
}
