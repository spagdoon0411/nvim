return {
  'HakonHarnes/img-clip.nvim',
  opts = {
    filetypes = {
      codecompanion = {
        prompt_for_file_name = false,
        template = '[Image]($FILE_PATH)',
        use_absolute_path = true,
      },
    },
  },
}

-- Use :PasteImage to copy images from system clipboard into the chat buffer
