return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "elianiva/telescope-npm.nvim",
      config = function()
        require("telescope").load_extension("npm")
      end,
    },
  },
  keys = {
    { "<leader>ns", "<cmd>Telescope npm scripts<cr>", desc = "NPM Scripts" },
  },
}
