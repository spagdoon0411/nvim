local keymap = vim.keymap.set

keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap('n', '<space>opf', vim.diagnostic.open_float, { desc = '[O]pen diagnostic [F]loat' })

keymap('n', '<leader>rsl', '<cmd>LspRestart<CR>', { desc = '[R]e[s]tart [L]SP' })

keymap('v', '>', '>gv', { desc = 'Indent and keep selection' })
keymap('v', '<', '<gv', { desc = 'Unindent and keep selection' })

keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap('n', '<leader>w', function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = 'Toggle line wrap' })
