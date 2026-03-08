return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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