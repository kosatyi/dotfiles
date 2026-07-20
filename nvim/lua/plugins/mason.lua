return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", -- Для lua_ls
        "html-lsp",            -- Для html
        "css-lsp",             -- Для cssls
        "eslint-lsp",          -- Для eslint
        "vtsls",               -- Для vtsls
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        html = {},
        cssls = {},
        eslint = {},
        vtsls = {},
      },
    },
  },
}
