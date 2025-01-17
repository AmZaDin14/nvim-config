return {
  'linux-cultist/venv-selector.nvim',
  lazy = true,
  event = 'VeryLazy',
  branch = 'regexp',
  dependencies = { 'nvim-telescope/telescope.nvim', lazy = true },
  keys = {
    { '<leader>vs', '<cmd>VenvSelect<CR>', desc = '[V]env [S]elect' },
  },
  opts = {},
}
