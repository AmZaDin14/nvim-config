return {
  'echasnovski/mini.nvim',
  lazy = true,
  event = 'VeryLazy',
  version = false,
  config = function()
    -- NOTE: Hello
    require('mini.statusline').setup { use_icons = true }
    require('mini.surround').setup()
    require('mini.ai').setup()
    require('mini.hipatterns').setup()
    require('mini.pairs').setup()
  end,
}
