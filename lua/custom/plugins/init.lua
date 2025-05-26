-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
  { 'ellisonleao/glow.nvim', config = true, cmd = 'Glow' },
}
