return {
  'folke/which-key.nvim',
  lazy = true,
  event = 'VeryLazy',
  keys = {
    { '<Esc>', '<cmd>nohlsearch<cr>' },
  },
  opts = {
    delay = 0,
  },
  spec = {
    { '<leader>s', group = '[S]earch' },
    { '<leader>v', group = '[V]env' },
  },
}
