vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Hightlight selection on yank',
  group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Check if 'manage.py' exists in the current working directory
local function check_manage_py()
  local manage_py = vim.fn.findfile('manage.py', '.;')
  return manage_py ~= ''
end

-- Set up an autocmd for setting the filetype
if check_manage_py() then
  vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*.html',
    callback = function()
      vim.bo.filetype = 'htmldjango'
    end,
  })
end
