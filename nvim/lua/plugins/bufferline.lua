return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "slant",
        padding = 2,
        show_buffer_close_icons = true,
        show_close_icon = true,
        modified_icon = "●",
        close_icon = "",
        buffer_close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        offsets = {
            {
                filetype = "snacks_layout_box",
                text = "   File Explorer",
                text_align = "left",
                separator = true,
            },
        },
      },
    },
  },
}
