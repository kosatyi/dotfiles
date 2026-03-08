return {
  -- 1. Додаємо djlint у список автоматичного встановлення Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "djlint" })
    end,
  },

  -- 2. Налаштовуємо nvim-lint для запуску djlint на файлах nunjucks
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        nunjucks = { "djlint" },
        njk = { "djlint" },
      },
    },
  },
}