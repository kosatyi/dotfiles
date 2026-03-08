return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "html", "jinja2" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jinja_lsp = {
          filetypes = { "nunjucks", "njk", "htmldjango" },
        },
        html = {
          filetypes = { "html", "nunjucks", "njk" },
        },
        tailwindcss = {
          filetypes = { "nunjucks", "njk" },
          settings = {
            tailwindCSS = {
              includeLanguages = {
                nunjucks = "html",
              },
            },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nunjucks = { "djlint" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "djlint", "jinja-lsp" })
    end,
  },
}