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
           html            = { "prettier" },
           css             = { "prettier" },
           scss            = { "prettier" },
         }
       },
     },
}
