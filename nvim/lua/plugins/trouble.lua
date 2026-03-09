return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("trouble").setup({})
    vim.diagnostic.config({
      virtual_text = false,
    })
  end,
}