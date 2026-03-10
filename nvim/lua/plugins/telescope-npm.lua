return {
  {
    "elianiva/telescope-npm.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    defaults = {},
    keys = {
      {
        "<leader>zn",
        "<cmd>Telescope npm scripts<cr>",
        desc = "NPM Scripts",
      },
    },
  }
}
