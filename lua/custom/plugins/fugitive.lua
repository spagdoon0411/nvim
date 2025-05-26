return {
  'tpope/vim-fugitive',
  config = function()
    vim.api.nvim_create_user_command('Gv', 'vertical Git', {})
    vim.keymap.set('n', '<leader>gv', ':Gv<CR>', { noremap = true, silent = true })
  end,
}
