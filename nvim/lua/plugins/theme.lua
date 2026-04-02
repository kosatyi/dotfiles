return {
  {
    "metalelf0/jellybeans-nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = false,
      contrast = "hard",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "jellybeans-nvim",
    },
  },
}