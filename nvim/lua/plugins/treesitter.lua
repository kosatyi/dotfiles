return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "nunjucks",
        "html",
        "css",
      },
      highlight = { enable = true },
    },
  }
}
