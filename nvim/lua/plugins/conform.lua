return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nunjucks = { "djlint" },
        njk = { "djlint" },
      },
      formatters = {
        djlint = {
          args = { "--reformat", "--indent", "2", "-" },
        },
      },
    },
  },
}