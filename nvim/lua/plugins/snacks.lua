return { {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    bufdelete = { enabled = true }, -- Keep bufdelete if you still want to safely close buffers
    words = { enabled = true },
    bufferline = { enabled = false },
    picker = {
      sources = {
        explorer = {
          layout = {
            width = 20,
            auto_hide = { 'input' }, -- Приховує рядок пошуку за замовчуванням
          },
        },
      },
    },
    dashboard = {
      sections = { {
        section = 'header',
        padding = 0,
      }, {
        title = false,
        section = 'keys',
        padding = 1,
      }, {
        title = 'Recent Files',
        section = 'recent_files',
        cwd = true,
        limit = 3,
        padding = 1,
      }, {
        title = 'Projects',
        section = 'projects',
        limit = 2,
        padding = 1,
      }, { section = 'startup' } },
      preset = { header = 'NVIM' },
    },
  },
} }
