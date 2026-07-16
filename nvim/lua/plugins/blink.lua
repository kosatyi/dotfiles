return {
  {
    "saghen/blink.cmp",
    dependencies = {
      {
        "saghen/blink.lib",
        build = "echo 'blink.lib downloaded'",
      },
    },
    opts = {
      -- 1. Поведінка гарячих клавіш як у VS Code
      keymap = {
        preset = "none", -- Вимикаємо стандартні бінди, щоб не було конфліктів
        ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<Esc>"] = { "hide", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = { "accept", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },
      },
      completion = {
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },
        -- Показувати документацію до коду автоматично поруч з меню
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
      },
    },
  },
}
