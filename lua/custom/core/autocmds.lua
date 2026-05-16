local group = vim.api.nvim_create_augroup('custom-core', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight yanked text',
  group = group,
  callback = function()
    vim.highlight.on_yank()
  end,
})
