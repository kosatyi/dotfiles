return {
  {
        "akinsho/bufferline.nvim",
        event = 'VeryLazy',
          opts = {
            options = {
               style_preset = require("bufferline").style_preset.no_italic,
               separator_style = { "", "" },
               indicator = { icon = '', style = "none" }
            },            highlights = {
              buffer_visible = {
                italic = false,
              },
              buffer_selected = {
                italic = false,
              },
              modified = {
                italic = false,
              },
              modified_visible = {
                italic = false,
              },
              modified_selected = {
                italic = false,
              },
              duplicate = {
                italic = false,
              },
              duplicate_visible = {
                italic = false,
              },
              duplicate_selected = {
                 italic = false,
              },
              tab_separator = {
                bg = '#ffffff'
              },
              separator = {
                fg = "none",
                bg = "none",
              },
              separator_visible = {
                fg = "none",
                bg = "none",
              },
              separator_selected = {
                    fg = "none",
                    bg = "none",
              },
            },
       },
  },
}
