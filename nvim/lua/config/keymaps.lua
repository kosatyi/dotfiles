-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- MOVE BETWEEN BUFFERS
keymap({ "n", "v" }, "<A-Right>", ":bnext<CR>", opts)
keymap({ "n", "v" }, "<A-Left>", ":bprev<CR>", opts)

-- SAVE FILE (Ctrl + S)
-- Save in Normal mode
keymap("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
-- Save in Insert mode and resume editing at the same position
keymap("i", "<C-s>", "<Esc><cmd>w<CR>gi", { desc = "Save file and resume editing" })
-- Save in Visual mode and keep selection
keymap("v", "<C-s>", "<Esc><cmd>w<CR>gv", { desc = "Save file and keep selection" })

-- SELECT ALL (Ctrl + A)
keymap({ "n", "i", "v" }, "<C-a>", "<Esc>ggVG", { desc = "Select all text" })

-- VS CODE STYLE SELECTION (Shift + Arrows)
-- From Normal Mode
keymap("n", "<S-Left>", "v<Left>", opts)
keymap("n", "<S-Right>", "v<Right>", opts)
keymap("n", "<S-Up>", "v<Up>", opts)
keymap("n", "<S-Down>", "v<Down>", opts)

-- From Insert Mode
keymap("i", "<S-Left>", "<Esc>v<Left>", opts)
keymap("i", "<S-Right>", "<Esc>v<Right>", opts)
keymap("i", "<S-Up>", "<Esc>v<Up>", opts)
keymap("i", "<S-Down>", "<Esc>v<Down>", opts)

-- Extend selection in Visual Mode
keymap("v", "<S-Left>", "<Left>", opts)
keymap("v", "<S-Right>", "<Right>", opts)
keymap("v", "<S-Up>", "<Up>", opts)
keymap("v", "<S-Down>", "<Down>", opts)

-- HOME/END SELECTION (Shift + Home/End)
keymap("n", "<S-End>", "v$", opts)
keymap("n", "<S-Home>", "v^", opts)
keymap("i", "<S-End>", "<C-o>v$", opts)
keymap("i", "<S-Home>", "<C-o>v^", opts)
keymap("v", "<S-End>", "$", opts)
keymap("v", "<S-Home>", "^", opts)

-- WORD SELECTION (Ctrl + Shift + Arrows)
keymap({ "n", "i" }, "<C-S-Left>", "<Esc>vbe", opts)
keymap({ "n", "i" }, "<C-S-Right>", "<Esc>vew", opts)
keymap("v", "<C-S-Left>", "b", opts)
keymap("v", "<C-S-Right>", "e", opts)

-- WEBSTORM STYLE EXPAND SELECTION (Ctrl + W)
-- Requires: 'terryma/vim-expand-region' plugin
keymap("n", "<C-w>", "v<Plug>(expand_region_expand)", { desc = "Expand selection" })
keymap("v", "<C-w>", "<Plug>(expand_region_expand)", { desc = "Expand selection" })
keymap("v", "<C-S-w>", "<Plug>(expand_region_shrink)", { desc = "Shrink selection" })

