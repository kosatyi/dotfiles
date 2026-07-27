return {
  'NeogitOrg/neogit',
  lazy = true,
  dependencies = { -- Only one of these is needed.
  'sindrets/diffview.nvim', 'esmuellert/codediff.nvim', 'm00qek/baleia.nvim', 'nvim-telescope/telescope.nvim', 'ibhagwan/fzf-lua', 'nvim-mini/mini.pick', 'folke/snacks.nvim' }, -- For a custom log pager -- optional -- optional -- Only one of these is needed. -- optional -- optional -- optional -- optional -- optional
  cmd = 'Neogit',
  keys = { {
    '<leader>gn',
    '<cmd>Neogit<cr>',
    desc = 'Show Neogit UI',
  } },
}
