return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    -- NOTE: Hello
    require('mini.statusline').setup { use_icons = true }
    require('mini.surround').setup()
    require('mini.ai').setup()
    require('mini.hipatterns').setup()
    require('mini.pairs').setup()
    require('mini.indentscope').setup()
  end,
}
