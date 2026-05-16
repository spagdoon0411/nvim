local M = {}

function M.setup(capabilities)
  vim.lsp.config('ruff', {
    capabilities = capabilities,
    init_options = {
      settings = {
        lint = {
          preview = true,
        },
      },
    },
  })

  vim.lsp.config('pyright', {
    capabilities = capabilities,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = false,
          diagnosticMode = 'off',
          useLibraryCodeForTypes = false,
        },
      },
    },
  })

  vim.lsp.enable 'ruff'
  vim.lsp.enable 'pyright'
end

return M
