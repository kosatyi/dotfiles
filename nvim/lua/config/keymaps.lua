-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set


map({'n', 'i', 'v'}, '<leader>qw', '<Cmd>bdelete<CR>', { silent = true, desc = "Close current tab" })
map({'n', 'i', 'v'}, '<leader>qq', '<Cmd>qa!<CR>', { desc = "Force quit without saving" })
map({ 'n', 'i', 'v' }, '<leader>qs', '<Cmd>wqa<CR>', { desc = "Quit And Save" })


-- Clipboard operations (Copy, Cut, Paste)
map('v', '<C-c>', '"+y', { desc = "Copy" })
map('v', '<C-x>', '"+x', { desc = "Cut" })


map({'n', 'i', 'v'}, '<C-v>', function()
    if vim.fn.mode() == 'i' then
        vim.cmd('normal! "+p')
    else
        vim.cmd('normal! "+p')
    end
end, { desc = "Paste" })

-- Undo and Redo actions
map({'n', 'i', 'v'}, '<C-z>', '<Cmd>undo<CR>', { desc = "Undo" })
map({'n', 'i', 'v'}, '<C-y>', '<Cmd>redo<CR>', { desc = "Redo" })

-- File operations and Select All
-- map({'n', 'i', 'v'}, '<C-s>', '<Cmd>w<CR>', { desc = "Save file" })
-- map({'n', 'i', 'v'}, '<C-a>', 'ggVG', { desc = "Select all" })

-- Move lines up/down (Alt + Arrow Keys)
map('n', '<A-Down>', ':m .+1<CR>==', { silent = true, desc = "Move line down" })
map('n', '<A-Up>', ':m .-2<CR>==', { silent = true, desc = "Move line up" })
map('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', { silent = true, desc = "Move line down" })
map('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', { silent = true, desc = "Move line up" })
map('v', '<A-Down>', ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selection down" })
map('v', '<A-Up>', ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selection up" })

-- Duplicate lines (Shift + Alt + Arrow Keys)
map('n', '<S-A-Down>', ':t.<CR>', { silent = true, desc = "Duplicate line down" })
map('n', '<S-A-Up>', ':t.-1<CR>', { silent = true, desc = "Duplicate line up" })
map('i', '<S-A-Down>', '<Esc>:t.<CR>gi', { silent = true, desc = "Duplicate line down" })
map('i', '<S-A-Up>', '<Esc>:t.-1<CR>gi', { silent = true, desc = "Duplicate line up" })
map('v', '<S-A-Down>', ":co '><CR>gv", { silent = true, desc = "Duplicate selection down" })
map('v', '<S-A-Up>', ":co '<-1<CR>gv", { silent = true, desc = "Duplicate selection up" })

-- Buffer/Tab navigation (Alt + Left/Right Arrows)
map({'n', 'v', 'i'}, '<C-PageUp>', '<Cmd>bprevious<CR>', { desc = "Previous buffer" })
map({'n', 'v', 'i'}, '<C-PageDown>', '<Cmd>bnext<CR>', { desc = "Next buffer" })

-- Word navifation
map({'n', 'v'}, '<C-Right>', 'w', { desc = "Move forward by word" })
map({'n', 'v'}, '<C-Left>', 'b', { desc = "Move backward by word" })
map('i', '<C-Right>', '<Action>(visual mode)<C-o>w', { remap = true })
map('i', '<C-Right>', function() vim.cmd("normal! w") end, { desc = "Insert mode move forward by word" })
map('i', '<C-Left>', function() vim.cmd("normal! b") end, { desc = "Insert mode move backward by word" })

-- -------------------------------------------------------------------------- --
-- 3. TEXT SELECTION USING SHIFT + ARROW KEYS
-- -------------------------------------------------------------------------- --

-- Selection in Normal mode (Initiate selection)
map('n', '<S-Up>', 'v<Up>', { desc = "Select line upwards" })
map('n', '<S-Down>', 'v<Down>', { desc = "Select line downwards" })
map('n', '<S-Left>', 'v<Left>', { desc = "Select character left" })
map('n', '<S-Right>', 'v<Right>', { desc = "Select character right" })

-- Extend selection in Visual mode
map('v', '<S-Up>', '<Up>', { desc = "Extend selection upwards" })
map('v', '<S-Down>', '<Down>', { desc = "Extend selection downwards" })
map('v', '<S-Left>', '<Left>', { desc = "Extend selection left" })
map('v', '<S-Right>', '<Right>', { desc = "Extend selection right" })

-- Selection from Insert mode (Auto-switch to Visual)
map('i', '<S-Up>', '<Esc>v<Up>', { desc = "Start selection upwards" })
map('i', '<S-Down>', '<Esc>v<Down>', { desc = "Start selection downwards" })
map('i', '<S-Left>', '<Esc>v<Left>', { desc = "Start selection left" })
map('i', '<S-Right>', '<Esc>l`^v<Left>', { desc = "Start selection right" })

-- Select whole words (Ctrl + Shift + Arrow Keys)
map('n', '<C-S-Left>', 'vB', { desc = "Select word left" })
map('n', '<C-S-Right>', 'vE', { desc = "Select word right" })
map('v', '<C-S-Left>', 'B', { desc = "Extend selection one word left" })
map('v', '<C-S-Right>', 'E', { desc = "Extend selection one word right" })
map('i', '<C-S-Left>', '<Esc>vB', { desc = "Start selecting word left" })
map('i', '<C-S-Right>', '<Esc>vE', { desc = "Start selecting word right" })

-- Select to end/start of line (Shift + Home / End)
map({'n', 'i'}, '<S-End>', '<Esc>v$', { desc = "Select to end of line" })
map({'n', 'i'}, '<S-Home>', '<Esc>v^', { desc = "Select to start of line" })
map('v', '<S-End>', '$', { desc = "Extend selection to end of line" })
map('v', '<S-Home>', '^', { desc = "Extend selection to start of line" })

-- Delete selected text with Backspace (Standard editor behavior)
map('v', '<BS>', '"_d', { desc = "Delete selection with Backspace" })
map('i', '<C-H>', '<C-w>', { desc = "Delete word backward" })
map('i', '<C-Backspace>', '<C-w>', { desc = "Delete word backward" })
map('c', '<C-H>', '<C-w>', { desc = "Delete word backward in command line" })
