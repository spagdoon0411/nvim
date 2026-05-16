return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'main',
  cmd = {
    'CopilotChat',
    'CopilotChatOpen',
    'CopilotChatClose',
    'CopilotChatToggle',
    'CopilotChatStop',
    'CopilotChatReset',
    'CopilotChatSave',
    'CopilotChatLoad',
    'CopilotChatDebugInfo',
    'CopilotChatModels',
    'CopilotChatAgents',
  },
  dependencies = {
    { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
    { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
  },
  build = 'make tiktoken', -- Only on MacOS or Linux
  config = function()
    require('CopilotChat').setup {
      -- Your configuration comes here
    }

    -- Keybinding for toggling CopilotChat
    -- vim.keymap.set('n', '<leader>ch', ':CopilotChatToggle<CR>', { noremap = true, silent = true })
  end,
  opts = {},
  -- See Commands section for default commands if you want to lazy load on them
}
