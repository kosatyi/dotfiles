return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" , stop_after_first = true},
      scss = { "prettier", stop_after_first = true },
      css = { "prettier", stop_after_first = true },
      javascript = { "prettier", stop_after_first = true },
    },
  },
}