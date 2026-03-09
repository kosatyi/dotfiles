return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "elianiva/telescope-npm.nvim", -- Додаємо npm плагін як залежність
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        npm = {},
      },
    })
    telescope.load_extension("npm")
    vim.keymap.set("n", "<leader>ns", ":Telescope npm scripts<CR>", { desc = "NPM Scripts" })
  end,
}