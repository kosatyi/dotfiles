return {
  "MattesGroeger/vim-bookmarks",
  init = function()
    vim.g.bookmark_no_at_init = 1 -- Вимикаємо стандартні маппінги
  end,
  keys = {
    { "<leader>mm", "<cmd>BookmarkToggle<cr>", desc = "Toggle bookmark" },
    { "<C-1>", "<cmd>BookmarkPrev<cr>", desc = "Previous bookmark" },
    { "<C-2>", "<cmd>BookmarkNext<cr>", desc = "Next bookmark" },
    { "<C-S-Down>", "<cmd>BookmarkMoveToNext<cr>", desc = "Next global bookmark" },
    { "<C-S-Up>", "<cmd>BookmarkMoveToPrev<cr>", desc = "Previous global bookmark" },
    { "<leader>ma", "<cmd>BookmarkShowAll<cr>", desc = "Show all bookmarks" },
    { "<leader>mc", "<cmd>BookmarkClearAll<cr>", desc = "Clear all bookmarks" },
  },
}
