-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

-- Prevent from cursor moved above center of screen
vim.api.nvim_create_autocmd("CursorMoved", {
  callback = function()
    local last_line = vim.fn.line("$")
    local current_line = vim.fn.line(".")
    if current_line == last_line then
      vim.cmd("normal! zb")
    end
  end,
})