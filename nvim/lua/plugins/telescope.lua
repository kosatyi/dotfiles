return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-project.nvim",
      "vinnymeller/telescope-npm.nvim",
    },
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
      { "<leader>zp", "<cmd>Telescope project<cr>",     desc = "Projects" },
      { "<leader>zn", "<cmd>Telescope npm scripts<cr>", desc = "NPM Scripts" },
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
    opts = function(_, opts)
      local telescope = require("telescope")
      telescope.load_extension("project")
      telescope.load_extension("npm")
      opts.extensions = {
        project = {
          base_dirs = {
            { "~/flitt/projects", max_depth = 1 },
            { "~/projects", max_depth = 1 },
            { "~/www",      max_depth = 1 },
          },
          hidden_files = true, -- показувати .git, .env тощо
        },
      }
    end,
  }
}
