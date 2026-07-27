local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR><Esc>', { desc = 'Clear search highlight' })
map('n', '<leader>x', '<Cmd>bdelete<CR>', {
  silent = true,
  desc = 'Close current buffer',
})
map('n', '<leader>qq', '<Cmd>qa!<CR>', { desc = 'Force quit without saving' })
map('n', '<leader>qs', '<Cmd>wqa<CR>', { desc = 'Quit And Save' })

map('n', '<Tab>', 'w', { desc = 'Move cursor forward to the next word' })
map('n', '<S-Tab>', 'b', { desc = 'Move cursor backward to the previous word' })
-- Cut
map({ 'n', 'v' }, '<C-x>', '"+x', { desc = 'Cut to clipboard' })
map('i', '<C-x>', '<C-O>"+x', { desc = 'Cut to clipboard' })
-- Copy
map({ 'n', 'v' }, '<C-c>', '"+y', { desc = 'Copy to clipboard' })
map('i', '<C-c>', '<C-O>"+y', { desc = 'Copy to clipboard' })
-- Paste
map({ 'n', 'v' }, '<C-v>', '"+p', { desc = 'Paste from clipboard' })
map('i', '<C-v>', '<C-O>"+P', { desc = 'Paste from clipboard' })
map(
  { 'n', 'i', 'v' },
  '<C-v>',
  function()
    if vim.fn.mode() == 'i' then
      vim.cmd('normal! "+p')
    else
      vim.cmd('normal! "+p')
    end
  end,
  { desc = 'Paste' }
)
-- Search
map('n', '<C-n>', '<cmd>cnext<CR>zz', { desc = 'Next search result' })
map('n', '<C-p>', '<cmd>cprev<CR>zz', { desc = 'Previous search result' })
-- Undo and Redo actions
map({ 'n', 'i', 'v' }, '<C-z>', '<Cmd>undo<CR>', { desc = 'Undo' })
map({ 'n', 'i', 'v' }, '<C-y>', '<Cmd>redo<CR>', { desc = 'Redo' })
-- File operations and Select All
map({ 'n', 'i', 'v' }, '<C-s>', '<Cmd>w<CR>', { desc = 'Save file' })
map({ 'n', 'i', 'v' }, '<C-a>', 'ggVG', { desc = 'Select all' })
-- Move lines up/down (Alt + Arrow Keys)
map('n', '<M-Down>', ':m .+1<CR>==', {
  silent = true,
  desc = 'Move line down',
})
map('n', '<M-Up>', ':m .-2<CR>==', {
  silent = true,
  desc = 'Move line up',
})
map('i', '<M-Down>', '<Esc>:m .+1<CR>==gi', {
  silent = true,
  desc = 'Move line down',
})
map('i', '<M-Up>', '<Esc>:m .-2<CR>==gi', {
  silent = true,
  desc = 'Move line up',
})
map('v', '<M-Down>', ":m '>+1<CR>gv=gv", {
  silent = true,
  desc = 'Move selection down',
})
map('v', '<M-Up>', ":m '<-2<CR>gv=gv", {
  silent = true,
  desc = 'Move selection up',
})

-- Duplicate lines (Shift + Alt + Arrow Keys)
map('n', '<S-M-Down>', ':t.<CR>', {
  silent = true,
  desc = 'Duplicate line down',
})
map('n', '<S-M-Up>', ':t.-1<CR>', {
  silent = true,
  desc = 'Duplicate line up',
})
map('i', '<S-M-Down>', '<Esc>:t.<CR>gi', {
  silent = true,
  desc = 'Duplicate line down',
})
map('i', '<S-M-Up>', '<Esc>:t.-1<CR>gi', {
  silent = true,
  desc = 'Duplicate line up',
})
map('v', '<S-M-Down>', ":co '><CR>gv", {
  silent = true,
  desc = 'Duplicate selection down',
})
map('v', '<S-M-Up>', ":co '<-1<CR>gv", {
  silent = true,
  desc = 'Duplicate selection up',
})

-- Buffer/Tab navigation (Alt + Left/Right Arrows)
map({ 'n', 'v', 'i' }, '<M-PageUp>', '<Cmd>bprevious<CR>', { desc = 'Previous buffer' })
map({ 'n', 'v', 'i' }, '<M-PageDown>', '<Cmd>bnext<CR>', { desc = 'Next buffer' })

-- Split navigation (Tab + Left/Right Arrows)
map('n', '<leader><Left>', '<C-w>h', { desc = 'Go to Left Split' })
map('n', '<leader><Down>', '<C-w>j', { desc = 'Go to Lower Split' })
map('n', '<leader><Up>', '<C-w>k', { desc = 'Go to Upper Split' })
map('n', '<leader><Right>', '<C-w>l', { desc = 'Go to Right Split' })
--- Replace
map('n', '<leader>rw', [[:%s/\<<C-r><C-w>\>/]], { desc = 'Change word under cursor' })
map('n', '<leader>re', [[:%s/]], { desc = 'Global replacement (%s/)' })
-- Scroll screen up/down (like in Zed) in Normal mode
map('n', '<C-Up>', '<C-y>', { desc = 'Scroll Line Up' })
map('n', '<C-Down>', '<C-e>', { desc = 'Scroll Line Down' })
-- Scroll screen up/down in Insert mode
map('i', '<C-Up>', '<C-x><C-y>', { desc = 'Scroll Line Up' })
map('i', '<C-Down>', '<C-x><C-e>', { desc = 'Scroll Line Down' })
-- Word navigation
map({ 'n', 'v' }, '<C-Right>', 'w', { desc = 'Move forward by word' })
map({ 'n', 'v' }, '<C-Left>', 'b', { desc = 'Move backward by word' })
map('i', '<C-Right>', '<Action>(visual mode)<C-o>w', { remap = true })
map(
  'i',
  '<C-Right>',
  function()
    vim.cmd('normal! w')
  end,
  { desc = 'Insert mode move forward by word' }
)
map(
  'i',
  '<C-Left>',
  function()
    vim.cmd('normal! b')
  end,
  { desc = 'Insert mode move backward by word' }
)
-- -------------------------------------------------------------------------- --
-- 3. TEXT SELECTION USING SHIFT + ARROW KEYS
-- -------------------------------------------------------------------------- --
-- Selection in Normal mode (Initiate selection)
map('n', '<S-Up>', 'v<Up>', { desc = 'Select line upwards' })
map('n', '<S-Down>', 'v<Down>', { desc = 'Select line downwards' })
map('n', '<S-Left>', 'v<Left>', { desc = 'Select character left' })
map('n', '<S-Right>', 'v<Right>', { desc = 'Select character right' })
-- Extend selection in Visual mode
map('v', '<S-Up>', '<Up>', { desc = 'Extend selection upwards' })
map('v', '<S-Down>', '<Down>', { desc = 'Extend selection downwards' })
map('v', '<S-Left>', '<Left>', { desc = 'Extend selection left' })
map('v', '<S-Right>', '<Right>', { desc = 'Extend selection right' })
-- Selection from Insert mode (Auto-switch to Visual)
map('i', '<S-Up>', '<Esc>v<Up>', { desc = 'Start selection upwards' })
map('i', '<S-Down>', '<Esc>v<Down>', { desc = 'Start selection downwards' })
map('i', '<S-Left>', '<Esc>v<Left>', { desc = 'Start selection left' })
map('i', '<S-Right>', '<Esc>l`^v<Left>', { desc = 'Start selection right' })
-- Select whole words (Ctrl + Shift + Arrow Keys)
map('n', '<C-S-Left>', 'vB', { desc = 'Select word left' })
map('n', '<C-S-Right>', 'vE', { desc = 'Select word right' })
map('v', '<C-S-Left>', 'B', { desc = 'Extend selection one word left' })
map('v', '<C-S-Right>', 'E', { desc = 'Extend selection one word right' })
map('i', '<C-S-Left>', '<Esc>vB', { desc = 'Start selecting word left' })
map('i', '<C-S-Right>', '<Esc>vE', { desc = 'Start selecting word right' })
-- Select to end/start of line (Shift + Home / End)
map({ 'n', 'i' }, '<S-End>', '<Esc>v$', { desc = 'Select to end of line' })
map({ 'n', 'i' }, '<S-Home>', '<Esc>v^', { desc = 'Select to start of line' })
map('v', '<S-End>', '$', { desc = 'Extend selection to end of line' })
map('v', '<S-Home>', '^', { desc = 'Extend selection to start of line' })
-- Delete selected text with Backspace (Standard editor behavior)
map('v', '<BS>', '"_d', { desc = 'Delete selection with Backspace' })
map('i', '<C-H>', '<C-w>', { desc = 'Delete word backward' })
map('i', '<C-Backspace>', '<C-w>', { desc = 'Delete word backward' })
map('c', '<C-H>', '<C-w>', { desc = 'Delete word backward in command line' })
map(
  'n',
  '<Del>',
  function()
    if vim.api.nvim_get_current_line():match('^%s*$') ~= nil then
      return 'dd'
    else
      return 'x'
    end
  end,
  {
    expr = true,
    desc = 'Delete empty line or character forward',
  }
)
map('n', '<BS>', 'X', { desc = 'Delete character backward (VS Code style)' })
map('n', '<C-Del>', 'dw', { desc = 'Delete word forward (VS Code style)' })
map('n', '<C-BS>', 'db', { desc = 'Delete word backward (VS Code style)' })
-- Comment line
map('n', '<C-/>', 'gcc', {
  remap = true,
  desc = 'Toggle Comment',
})
map('n', '<C-_>', 'gcc', {
  remap = true,
  desc = 'Toggle Comment',
})
map('x', '<C-/>', 'gc', {
  remap = true,
  desc = 'Toggle Comment',
})
map('x', '<C-_>', 'gc', {
  remap = true,
  desc = 'Toggle Comment',
})
