return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = false, cpp = false }
        local lsp_format_opt = disable_filetypes[vim.bo[bufnr].filetype] and 'never' or 'fallback'

        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        c = { 'clang-format' },
        rust = { 'rustfmt' },
        yaml = { 'prettier' },
        svelte = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },
        json = { 'prettierd', 'prettier' },
        markdown = { 'prettier' },
        javascript = { 'prettierd', 'eslint-lsp' },
        typescript = { 'prettierd', 'eslint-lsp' },
        cmake = { 'cmakelang' },
        python = { 'black' },
      },
    },
  },
}
