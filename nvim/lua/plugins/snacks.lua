return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = { enabled = false },
      picker = {
        sources = {
          explorer = { enabled = false },
      },
      },
      dashboard = {
        sections = {
          {
            section = "header",
            padding = 0,
          },
          {
            title = false,
            section = "keys",
            padding = 1,
          },
          {
            title = "Recent Files",
            section = "recent_files",
            cwd = true,
            limit = 3,
            padding = 1,
          },
          {
            title = "Projects",
            section = "projects",
            limit = 2,
            padding = 1,
          },
          { section = "startup" },
        },
        preset = { header = "NVIM" },
      },
    },
  },
}
