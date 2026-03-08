return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "twig" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        twiggy = {
          filetypes = { "twig", "nunjucks", "njk" },
        },
      },
      setup = {
        twiggy = function(_, opts)
          local lspconfig = require("lspconfig")
          local configs = require("lspconfig.configs")
          if not configs.twiggy then
            configs.twiggy = {
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
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      vim.filetype.add({
        extension = {
          njk = "nunjucks",
          nunjucks = "nunjucks",
        },
      })
      -- Примусово використовуємо синтаксис twig для nunjucks
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "nunjucks",
        callback = function()
          vim.bo.filetype = "twig"
        end,
      })
    end,
  },
}