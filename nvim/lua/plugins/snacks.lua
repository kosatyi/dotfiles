return {
  {
    "folke/snacks.nvim",
    opts = {
        scroll = { enabled = false },
        explorer = { enabled = false },
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
    keys = {
        { "<leader>e", false },
        { "<leader>E", false },
        { "<leader>fe", false },
        { "<leader>fE", false },
    },
  },
}
