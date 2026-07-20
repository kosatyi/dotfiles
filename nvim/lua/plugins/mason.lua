return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "lua-language-server",
        "html-lsp",
        "css-lsp",
        "eslint-lsp",
        "vtsls",
        "djlint"
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              telemetry = {
                enabled = false,
              },
            },
          },
        },
        html = {
          filetypes = { "html", "jinja", "jinja2", "twig" },
        },
        cssls = {},
        eslint = {},
        vtsls = {},
        djlint = {},
      },
    },
  },
}
