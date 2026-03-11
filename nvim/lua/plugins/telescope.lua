return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-project.nvim",
    "vinnymeller/telescope-npm.nvim",
  },
  keys = {
    { "<leader>zp", "<cmd>Telescope project<cr>",     desc = "Projects" },
    { "<leader>zn", "<cmd>Telescope npm scripts<cr>", desc = "NPM Scripts" },
    {
      "<leader>zz",
      function()
        require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })
      end,
      desc = "Find Files (Buffer Dir)",
    },
  },
  opts = {
    defaults = {
      -- vimgrep використовується для live_grep
      vimgrep_arguments = {
        "rg", "--color=never", "--no-heading", "--with-filename",
        "--line-number", "--column", "--smart-case", "--glob", "!node_modules/*",
      },
    },
    pickers = {
      find_files = {
        -- ОСНОВНЕ ВИПРАВЛЕННЯ: переконайтеся, що fd встановлено в системі
        find_command = { "fd", "--type", "f", "--strip-cwd-prefix", "--exclude", "node_modules", "--hidden" },
      },
    },
    extensions = {
      project = {
        base_dirs = { "~/flitt/projects", "~/projects", "~/www" },
        hidden_files = true,
      },
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("project")
    telescope.load_extension("npm")
  end,
}
