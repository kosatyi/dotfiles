return {
    {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      opts = function(_, opts)
        table.insert(opts.sections.lualine_x, {
          function()
            return "😄"
          end,
        })
      end,
    },
}


-- require('lualine').setup({
--   options = {
--     component_separators = '',
--     section_separators = { left = '', right = '' },
--     globalstatus = true,
--   },
--   sections = {
--     lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } },
--     lualine_b = { { 'filename', file_status = true, path = 1 } },
--     lualine_c = { 'branch', 'diff', 'diagnostics' },
--     lualine_x = { 'encoding', 'fileformat', 'filetype' },
--     lualine_y = { 'progress' },
--     lualine_z = { { 'location', separator = { left = '', right = '' }, left_padding = 2 } },
--   },
-- })
