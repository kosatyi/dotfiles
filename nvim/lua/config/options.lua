-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.scrolloff = 0
vim.opt.virtualedit = ""

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
})

vim.filetype.add({
  extension = {
    njk = "nunjucks",
    nunjucks = "nunjucks",
  },
})

vim.filetype.add({ extension = { ejs = "ejs" } })
