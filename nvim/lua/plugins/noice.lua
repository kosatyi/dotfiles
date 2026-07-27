return { {
  'folke/noice.nvim',
  opts = {
    cmdline = { enabled = false },
    messages = { enabled = false },
    popupmenu = {
      enabled = true,
      backend = 'nui',
    },
    presets = {
      bottom_search = true,
      command_palette = false,
    },
  },
} }
