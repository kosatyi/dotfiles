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
      desc = "Find Files (Dir)",
    },
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "%.git/",
        "node_modules/",
        "%.%w+/",
      },
    },
    pickers = {
      find_files = {
        hidden = true,
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
    pcall(telescope.load_extension, "project")
    if vim.fn.filereadable("package.json") == 1 then
      pcall(telescope.load_extension, "npm")
    end
  end,
}
