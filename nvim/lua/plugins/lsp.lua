return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- LazyVim автоматично встановить ці сервери через Mason
      servers = {
        jinja_lsp = {
          filetypes = { "jinja", "jinja2", "html", "nunjucks", "njk" },
        },
        html = {
          filetypes = { "html", "nunjucks", "njk" },
        },
        tailwindcss = {
          filetypes = { "html", "nunjucks", "njk" },
        },
      },
    },
  },
}