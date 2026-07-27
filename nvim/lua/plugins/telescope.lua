-- Keymap definition
---vim.keymap.set('n', '<leader>sg', live_multigrep, { desc = 'Search Multi Grep' })

return {
  'nvim-telescope/telescope.nvim',
  keys = { {
    '<leader>sm',
    require('custom.multigrep').find,
    desc = 'Search Multi Grep',
  }, {
    '<leader><leader>',
    function()
      require('telescope.builtin').current_buffer_fuzzy_find(
        require('telescope.themes').get_dropdown({
          winblend = 10,
          previewer = false,
        })
      )
    end,
    desc = 'Fuzzily search in current buffer',
  } },
}
