return {
  texlab = {},
  clangd = {},
  rust_analyzer = {},
  eslint = {
    settings = {
      workingDirectories = { mode = 'auto' },
      format = true,
    },
  },
  cmake = {},
  lua_ls = {
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
}
