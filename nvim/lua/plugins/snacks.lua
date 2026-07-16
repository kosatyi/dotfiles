return {
  {
    "folke/snacks.nvim",
    opts = {
        dashboard = {
            sections = {
                { section = "header" },
                { title = false, section = "keys", padding = 1 },
                { title = "Recent Files", section = "recent_files", cwd = true, limit = 3, padding = 1 },
                { title = "Projects", section = "projects", limit = 2, padding = 1 },
                { section = "startup" },
            },
            preset = {
                header = [[
▗▖  ▗▖▗▖  ▗▖▗▄▄▄▖▗▖  ▗▖
▐▛▚▖▐▌▐▌  ▐▌  █  ▐▛▚▞▜▌
▐▌ ▝▜▌ ▝▚▞▘ ▗▄█▄▖▐▌  ▐▌]]
            },
        },
    },
    keys = {},
  },
}
