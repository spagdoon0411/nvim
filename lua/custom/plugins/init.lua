-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'github/copilot.vim',
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.api.nvim_create_user_command('Gv', 'vertical Git', {})
      vim.keymap.set('n', '<leader>gv', ':Gv<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional for file icons
    config = function()
      require('nvim-tree').setup {
        view = {
          width = 50, -- Width of the file explorer window
          side = 'left', -- Position: "left" or "right"
          relativenumber = true, -- Display line numbers
        },
        renderer = {
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },
        actions = {
          open_file = {
            quit_on_open = true, -- Close tree when opening a file
          },
        },
      }
      -- Keybinding for toggling nvim-tree
      vim.keymap.set('n', '<leader>oft', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    end,
    chat_autocomplete = true, -- Enable autocompletion for CopilotChat
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
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
      vim.keymap.set('n', '<leader>ch', ':CopilotChatToggle<CR>', { noremap = true, silent = true })
    end,
    opts = {},
    -- See Commands section for default commands if you want to lazy load on them
  },
  { 'ellisonleao/glow.nvim', config = true, cmd = 'Glow' },
}
