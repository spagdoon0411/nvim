return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    opts = {
      install_dir = vim.fn.stdpath 'data' .. '/site',
    },
    config = function(_, opts)
      require('nvim-treesitter').setup(opts)
      require('nvim-treesitter').install {
        'bash',
        'c',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc',
        'rust',
      }

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'bash', 'c', 'diff', 'html', 'lua', 'markdown', 'query', 'vim', 'rust' },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
