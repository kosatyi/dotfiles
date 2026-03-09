return {
  {
    "nvim-telescope/telescope.nvim",
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--glob",
        "!node_modules/*",
      },
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--strip-cwd-prefix", "--exclude", "node_modules" },
      },
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>zc",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>zz",
        function()
          require("telescope.builtin").find_files({
            cwd = vim.fn.expand("%:p:h"),
          })
        end,
        desc = "Find Files (Current Buffer Dir)",
      },
    },
  }
}
