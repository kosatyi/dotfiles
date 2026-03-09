return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "elianiva/telescope-npm.nvim",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        npm = {
          terminal = "split",
        },
      },
    })
    telescope.load_extension("npm")
    vim.keymap.set("n", "<leader>./", ":Telescope npm scripts<CR>", { desc = "NPM Scripts" })
    vim.keymap.set("n", "<leader>,.", "@:", { desc = "Rerun last command" })
  end,
}