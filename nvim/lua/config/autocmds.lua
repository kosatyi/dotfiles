vim.filetype.add({
  extension = {
    ejs = "ejs",
    njk = "jinja",
  },
})


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.html", "*.css", "*.js", "*.ts" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
