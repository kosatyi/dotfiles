return {
   {
       "stevearc/conform.nvim",
       optional = true,
       opts = {
         formatters_by_ft = {
           javascript      = { "prettier" },
           typescript      = { "prettier" },
           javascriptreact = { "prettier" },
           typescriptreact = { "prettier" },
           vue             = { "prettier" },
           json            = { "prettier" },
           html            = { "prettier" },
           css             = { "prettier" },
           scss            = { "prettier" },
           yaml            = { "prettier" },
           jinja           = { "djlint" },
         },
         formatters = {
             prettier = {},
             djlint = {},
         },
       },
     },
}
