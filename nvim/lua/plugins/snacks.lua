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
              { win = "input", height = 1, border = "rounded", title = " Project Explorer ", title_pos = "center" },
            },
          },
          actions = {
            confirm = function(picker, item)
              picker:close()
              if item then
                vim.cmd("edit " .. item.file)
              end
            end,
          },
        },
      },
    },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
