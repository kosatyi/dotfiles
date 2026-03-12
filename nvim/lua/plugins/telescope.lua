return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-project.nvim",
    "elianiva/telescope-npm.nvim",
  },

  keys = {
    { "<leader>zp", "<cmd>Telescope project<cr>", desc = "Projects" },
    {
      "<leader>zn",
      function()
        local path = vim.fn.getcwd() .. "/package.json"
        if vim.fn.filereadable(path) == 1 then
          require("telescope").load_extension("npm")
          vim.cmd("Telescope npm scripts")
        else
          vim.notify("package.json not found", vim.log.levels.WARN)
        end
      end,
      desc = "NPM Scripts",
    },
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
  end,
}
