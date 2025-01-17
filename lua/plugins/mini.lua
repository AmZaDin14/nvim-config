return {
  {
    'echasnovski/mini.nvim',
    lazy = true,
    event = 'VeryLazy',
    version = false,
    config = function()
      require('mini.statusline').setup { use_icons = true }
      require('mini.surround').setup()
      require('mini.git').setup()
      require('mini.diff').setup()
      require('mini.ai').setup()
      require('mini.hipatterns').setup()
      require('mini.pairs').setup()
      require('mini.sessions').setup()
    end,
  },
  -- {
  --   'echasnovski/mini.starter',
  --   lazy = false,
  --   opts = {},
  -- },
}
