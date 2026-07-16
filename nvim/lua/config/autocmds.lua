-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.lsp.enable({ "html", "cssls", "eslint", "vtsls" })

vim.filetype.add({
  extension = {
    ejs = "ejs",
    njk = "nunjucks",
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.html", "*.css", "*.js", "*.ts" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end
    local has_completion = false
    pcall(function()
      has_completion = client:supports_method("textDocument/completion")
    end)
    if has_completion then
      -- Загортаємо в pcall, щоб уникнути рантайм-крешів
      pcall(vim.lsp.completion.enable, true, client.id)
    end
  end,
})
