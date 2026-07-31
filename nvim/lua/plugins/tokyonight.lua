return { {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    style = 'night', -- Опції: "storm", "night", "moon", "day"
    transparent = false, -- Увімкніть true, якщо потрібен прозорий фон
    styles = {
      sidebars = 'dark', -- Стиль панелей (наприклад, neo-tree)
      floats = 'dark', -- Стиль плаваючих вікон
    },
  },
} }
