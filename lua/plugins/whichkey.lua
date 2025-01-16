return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  keys = {
    { 'n', '<Esc>', '<cmd>nohlsearch<cr>' },
  },
  opts = {
    delay = 0,
  },
  spec = {
    { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
    { '<leader>d', group = '[D]ocument' },
    { '<leader>r', group = '[R]ename' },
    { '<leader>s', group = '[S]earch' },
    { '<leader>w', group = '[W]orkspace' },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    { '<leader>v', group = '[V]env' },
  },
}
