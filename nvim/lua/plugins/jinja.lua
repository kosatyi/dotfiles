return { {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      jinja_lsp = {
        filetypes = { 'jinja', 'html' },
        init_options = {
          templates = './assets/views',
          backend = { './src' },
          search_environments = { {
            name = 'local',
            root = './assets/views',
            extensions = { 'njk' },
          } },
        },
      },
    },
  },
}, {
  'stevearc/conform.nvim',
  optional = true,
  opts = {
    formatters_by_ft = {
      jinja = { 'djlint' },
    },
  },
} }
