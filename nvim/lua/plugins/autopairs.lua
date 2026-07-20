return {
  {
    "nvim-mini/mini.pairs",
    opts = function(_, opts)
      -- Додаємо підтримку пар для Nunjucks
      opts.mappings = opts.mappings or {}

      -- Закриття для {{ }}
      opts.mappings["{"] = { action = "open", pair = "{}", neigh_pattern = "[^%{%}%#]." }

      -- Оскільки Nunjucks будується навколо схем з %, { та #,
      -- надійніше створити кастомні мапінги безпосередньо для швидкого введення тегів:
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "nunjucks", "html" },
        callback = function()
          vim.keymap.set("i", "{%", "{%  %}<Left><Left><Left>", { buffer = true })
          vim.keymap.set("i", "{{", "{{  }}<Left><Left><Left>", { buffer = true })
          vim.keymap.set("i", "{#", "{#  #}<Left><Left><Left>", { buffer = true })
        end,
      })
    end,
  },
}
