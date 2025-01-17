return {
  'stevearc/oil.nvim',
  lazy = true,
  event = 'VeryLazy',
  dependencies = { 'echasnovski/mini.icons', opts = {} },
  keys = {
    { '-', '<cmd>Oil --float<CR>' },
    { '<leader>e', '<cmd>Oil --float<CR>', desc = '[E]xplorer (Oil)' },
  },
  opts = {
    columns = {
      'icon',
    },
    view_options = {
      show_hidden = true,
    },
    float = {
      max_width = 0.5,
      max_height = 0.5,
    },
  },
}
