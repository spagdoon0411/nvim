return {
  'olimorris/codecompanion.nvim',
  version = '^19.0.0',
  opts = {
    chat = {
      adapter = 'anthropic',
      model = 'claude-sonnet-4-20250514',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function(_, opts)
    require('codecompanion').setup(opts)
  end,
  keys = {
    { '<leader>ch', '<cmd>CodeCompanionChat<CR>', desc = 'Open CodeCompanion chat' },
  },
}

-- Plugin integrates with markview.
