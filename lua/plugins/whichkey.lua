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
}
