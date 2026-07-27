vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.clipboard = {
  name = 'wl-clipboard',
  copy = {
    ['+'] = 'wl-copy --type text/plain',
    ['*'] = 'wl-copy --type text/plain',
  },
  paste = {
    ['+'] = 'wl-paste --no-newline',
    ['*'] = 'wl-paste --no-newline',
  },
  cache = { enabled = true },
}
