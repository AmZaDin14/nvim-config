return {
  {
    'echasnovski/mini.nvim',
    lazy = true,
    event = 'VeryLazy',
    version = false,
    config = function()
      require('mini.ai').setup()
      require('mini.animate').setup()
      require('mini.diff').setup()
      require('mini.files').setup()
      require('mini.git').setup()
      require('mini.hipatterns').setup()
      require('mini.icons').setup()
      require('mini.pairs').setup()
      require('mini.sessions').setup()
      require('mini.surround').setup()
    end,
    -- stylua: ignore
    keys = {
      { '<leader>e', function() require('mini.files').open() end },
    },
  },
  {
    'echasnovski/mini.statusline',
    lazy = false,
    opts = {},
  },
}
