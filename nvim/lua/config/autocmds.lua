vim.filetype.add({
  extension = { njk = 'jinja' },
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.html', '*.css', '*.js', '*.ts' },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'jinja',
  callback = function()
    vim.opt_local.path = { 'assets/views' }
    vim.opt_local.suffixesadd = { '.njk' }
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
  callback = function()
    vim.opt_local.path:append({ 'node_modules' })
    vim.opt_local.suffixesadd:append({ '.ts', '.tsx', '.js', '.jsx', '.json' })
    vim.opt_local.includeexpr = "v:lua.require('vtsls.utils').find_node_module(v:fname)"
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.py', '*.html' },
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if ft == 'python' then
      vim.lsp.buf.format({
        bufnr = args.buf,
        id = vim.lsp.get_clients({ name = 'ruff' })[1],
      })
    elseif ft == 'htmldjango' or ft == 'html' then
      vim.fn.system('djlint ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(args.buf)) .. ' --reformat')
      vim.cmd('checktime')
    end
  end,
})
