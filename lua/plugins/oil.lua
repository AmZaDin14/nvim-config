return {
  'stevearc/oil.nvim',
  dependencies = { 'echasnovski/mini.icons', opts = {} },
  keys = {
    { '-', '<cmd>Oil --float<CR>' },
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
