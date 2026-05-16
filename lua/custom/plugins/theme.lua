return {
  -- 'rose-pine/neovim',
  -- name = 'rose-pine',
  -- config = function()
  --   vim.cmd 'colorscheme rose-pine'
  -- end,
  'vague-theme/vague.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other plugins
  config = function()
    -- NOTE: you do not need to call setup if you don't want to.
    require('vague').setup {
      transparent = true,
    }
    vim.cmd 'colorscheme vague'
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE', ctermbg = 'NONE' })
  end,
}
