return {
  'cbochs/grapple.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    scope = 'git', -- Use git repo as default scope
    icons = true,
    status = true,
    quick_select = '123456789',
  },
  config = function(_, opts)
    local grapple = require 'grapple'
    grapple.setup(opts)

    vim.keymap.set('n', '<leader>m', function()
      grapple.toggle()
    end, { desc = 'Toggle Grapple tag' })

    vim.keymap.set('n', '<leader>M', grapple.toggle_tags, { desc = 'Toggle Grapple tags' })
    vim.keymap.set('n', '<leader>1', '<cmd>Grapple select index=1<cr>', { desc = 'Select Grapple tag 1' })
    vim.keymap.set('n', '<leader>sM', '<cmd>Telescope grapple tags<cr>', { desc = 'Telescope Grapple tags' })
  end,
}
