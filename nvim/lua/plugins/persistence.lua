return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- завантажується перед читанням буфера
  opts = {
    -- тут можна вказати кастомні налаштування, наприклад:
    -- dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- шлях до сесій
    -- options = { "buffers", "curdir", "tabpages", "winsize" }, -- що зберігати
  },
   keys = {
    { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
    { "<leader>qS", function() require("persistence").select() end, desc = "Select Session" },
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
     "<leader>qX", function()
        local session_file = require("persistence").current()
        if session_file then
            os.remove(session_file)
            print("Сесію видалено: " .. session_file)
        else
            print("Активної сесії не знайдено")
        end
    end,
    desc = "Delete Current Session",
  },
}