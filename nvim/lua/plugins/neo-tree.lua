return {
  -- 1. Disable the Snacks explorer feature and keymaps
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      picker = {
        sources = {
          explorer = { enabled = false },
        },
      },
    },
  },

  -- 2. Enable and configure Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    -- Rebind the default LazyVim explorer key to toggle Neo-tree instead
    keys = {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer Neo-tree (Root Dir)",
      },
      {
        "<leader>E",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
        end,
        desc = "Explorer Neo-tree (CWD)",
      },
    },
    opts = {
      window = {
        width = 30,
      },
      filesystem = {
        hide_root_node = true, -- Hides the top directory name header as requested earlier
        retain_hidden_root_indent = true, -- Cleans up indentation layout
        follow_current_file = {
          enabled = true,
        },
      },
    },
  },
}
