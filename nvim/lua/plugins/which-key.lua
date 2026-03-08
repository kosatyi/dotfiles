return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 1000,
    -- other options...
    layout = {
      align = "center", -- or 'left', 'right'
      -- min_width = ...,
      -- max_width = ...,
      -- min_height = ...,
      -- max_height = ...,
    },
    preset = "classic", -- 'classic' displays the menu at the bottom
    -- other options...
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
