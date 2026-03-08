return {
  -- 1. Додаємо парсер Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "twig" })
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.filetype.add({
        extension = {
          njk = "twig",
          nunjucks = "twig",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        twiggy = {
          filetypes = { "twig", "njk", "nunjucks" },
        },
      },
      setup = {
        twiggy = function(_, opts)
          local lspconfig = require("lspconfig")
          if not require("lspconfig.configs").twiggy then
            require("lspconfig.configs").twiggy = {
              default_config = {
                cmd = { "twiggy-language-server", "--stdio" },
                filetypes = opts.filetypes,
                root_dir = lspconfig.util.root_pattern("package.json", ".git"),
                settings = {},
              },
            }
          end
        end,
      },
    },
  },
}