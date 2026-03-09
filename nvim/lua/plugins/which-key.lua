return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 1000,
    layout = {
      align = "center", -- or 'left', 'right'
    },
    preset = "classic", -- 'classic' displays the menu at the bottom
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
