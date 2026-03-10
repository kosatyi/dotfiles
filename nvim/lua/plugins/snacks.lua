return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        header = [[
███╗   ██╗██╗   ██╗██╗███╗   ███╗
████╗  ██║██║   ██║██║████╗ ████║
██╔██╗ ██║██║   ██║██║██╔████╔██║
██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
        ]],
      },
    },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = {
      sources = {
        explorer = {
          focus = "input",
          auto_close = true,
          layout = {
            preview = false,
            layout = {
              box = "vertical",
              width = 0.5,
              height = 0.6,
              { win = "list",  border = "rounded" },
              { win = "input", height = 1,        border = "rounded", title = " Project Explorer ", title_pos = "center" },
            },
          },
        },
        win = {
          input = {
            keys = {
              ["<PageUp>"] = { "list_scroll_up", mode = { "i", "n" } },
              ["<PageDown>"] = { "list_scroll_down", mode = { "i", "n" } },
              ["<Home>"] = { "list_top", mode = { "i", "n" } },
              ["<End>"] = { "list_bottom", mode = { "i", "n" } },
            },
          },
        },
      },
    },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
