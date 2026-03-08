return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Add nunjucks-lsp
        nunjucks_lsp = {},
        -- Or if you use html ls for nunjucks
        html = {
          filetypes = { "html", "nunjucks" },
        },
      },
    },
  }
}
