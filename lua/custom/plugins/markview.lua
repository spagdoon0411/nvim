return {
  'OXY2DEV/markview.nvim',
  lazy = false,
  opts = {
    preview = {
      filetypes = { 'markdown', 'codecompanion' },
      ignore_buftypes = {},
    },
    latex = {
      enable = true,
      inlines = { enable = true },
      blocks = { enable = true },
    },
  },
  -- Completion for `blink.cmp`
  -- dependencies = { "saghen/blink.cmp" },
}
