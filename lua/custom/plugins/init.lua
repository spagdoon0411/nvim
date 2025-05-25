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
  {
    'm4xshen/hardtime.nvim',
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {},
  },
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = {
        enabled = true,
      },
      input = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 3000,
      },
      picker = {
        enabled = true,
        sources = {
          explorer = {
            win = {
              list = {
                wo = {
                  wrap = true,
                  relativenumber = true,
                },
              },
            },
          },
        },
      },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      styles = {
        notification = {
          -- wo = { wrap = true } -- Wrap notifications
        },
      },
    },
    vim.keymap.set('n', '<leader>ft', function()
      require('snacks.explorer').open {}
    end, { noremap = true, silent = true, desc = 'Open Snacks Explorer' }),
  },
}
