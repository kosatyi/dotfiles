local M = {}
local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local make_entry = require('telescope.make_entry')

M.find = function(opts)
  opts = opts or {}
  opts.cwd = opts.cwd or vim.uv.cwd()
  local finder = finders.new_async_job({
    command_generator = function(prompt)
      if not prompt or prompt == '' then
        return nil
      end
      local pieces = vim.split(prompt, '  ')
      local args =
        { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case' }
      table.insert(args, '-e')
      table.insert(args, pieces[1])
      if pieces[2] then
        table.insert(args, '-g')
        table.insert(args, pieces[2])
      end

      return args
    end,
    entry_maker = make_entry.gen_from_vimgrep(opts),
    cwd = opts.cwd,
  })
  pickers.new(opts, {
    debounce = 100,
    prompt_title = 'Multi Grep',
    finder = finder,
    previewer = require('telescope.previewers').vim_buffer_vimgrep.new(opts),
    sorter = require('telescope.sorters').highlighter_only(opts),
  }):find()
end

return M
