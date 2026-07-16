return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline",
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
      },
      presets = {
        bottom_search = true,
        command_palette = false,
      },
    },
  },
}
