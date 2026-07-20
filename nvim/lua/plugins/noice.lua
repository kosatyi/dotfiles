return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = false, -- DISABLED: Gives control back to native Neovim cmdline
      },
      messages = {
        enabled = false, -- REQUIRED: Keeps noice from auto-enabling the cmdline block
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
