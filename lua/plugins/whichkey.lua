return {
  'folke/which-key.nvim',
  lazy = true,
  event = 'VeryLazy',
  keys = {
    { '<leader>ll', '<cmd>Lazy<CR>', desc = '[L]azy' },
  },
  opts = {
    delay = 0,
    spec = {
      { '<leader>v', group = '[V]env' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>l', group = '[L]azy' },
      { '<leader>r', group = '[R]rename' },
      { '<leader>q', group = '[Q]uick' },
    },
  },
}
