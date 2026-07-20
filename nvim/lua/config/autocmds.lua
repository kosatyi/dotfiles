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

-- vim.api.nvim_create_autocmd("LspAttach", {
--   group = vim.api.nvim_create_augroup("NativeLspCompletion", { clear = true }),
--   callback = function(args)
--     local client_id = args.data.client_id
--     local bufnr = args.buf
--     vim.lsp.completion.enable(true, client_id, bufnr, {
--       autotrigger = true,  -- Автоматично показує меню під час введення
--     })
--   end,
-- })

-- vim.api.nvim_create_autocmd("InsertCharPre", {
--   group = vim.api.nvim_create_augroup("NativePathCompletion", { clear = true }),
--   pattern = "*",
--   callback = function()
--     local char = vim.v.char
--     local col = vim.fn.col(".")
--     local line = vim.fn.getline(".")
--     local before_char = line:sub(col - 1, col - 1)
--     if (char == "/" or (char == "." and before_char == ".")) and vim.fn.pumvisible() == 0 then
--       vim.schedule(function()
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-x><C-f>", true, false, true), "n")
--       end)
--     end
--   end,
-- })
