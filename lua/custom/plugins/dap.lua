local dap = require 'dap'

dap.adapters.python = {
  type = 'executable',
  command = os.getenv 'HOME' .. '/.virtualenvs/tools/bin/python',
  args = { '-m', 'debugpy.adapter' },
}

return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'mfussenegger/nvim-dap-python',
  },
  config = function()
    -- Python debugging setup
    -- Better Python path detection
    local function get_python_path()
      -- Try to use the current virtual environment first
      local venv_python = vim.fn.glob(vim.fn.getcwd() .. '/.venv/bin/python')
      if venv_python ~= '' then
        return venv_python
      end

      -- Fall back to system python3
      return 'python3'
    end

    require('dap-python').setup(get_python_path())

    -- Key mappings
    vim.keymap.set('n', '<leader>db', function()
      require('dap').toggle_breakpoint()
    end)
    vim.keymap.set('n', '<leader>dc', function()
      require('dap').continue()
    end)
    vim.keymap.set('n', '<leader>do', function()
      require('dap').step_over()
    end)
    vim.keymap.set('n', '<leader>di', function()
      require('dap').step_into()
    end)
    vim.keymap.set('n', '<leader>dO', function()
      require('dap').step_out()
    end)

    -- DAP UI setup
    local dapui = require 'dapui'
    dapui.setup()

    -- Auto-open UI when debugging starts
    require('dap').listeners.after.event_initialized['dapui_config'] = function()
      dapui.open()
    end

    -- Auto-close UI when debugging ends
    require('dap').listeners.before.event_terminated['dapui_config'] = function()
      dapui.close()
    end
  end,
}
