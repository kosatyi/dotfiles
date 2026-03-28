return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Тема має завантажуватися першою
    config = true,
    opts = {
      transparent_mode = false,
      contrast = "hard",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}