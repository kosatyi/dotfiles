return {
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "nvim-mini/mini.tabline",
    enabled = false,
    version = false,
    event = "VeryLazy",
    opts = { show_icons = true },
    config = function(_, opts)
      require("mini.tabline").setup(opts)
    end,
  },
}
