return {
  'ibhagwan/fzf-lua',
  lazy = true,
  event = 'VeryLazy',
  dependencies = { 'echasnovski/mini.icons' },
  keys = {
    { '<leader>s', desc = '[S]earch' },
    { '<leader>sf', '<cmd>FzfLua files<cr>', desc = '[S]earch [F]iles' },
    { '<leader>sg', '<cmd>FzfLua grep_project<cr>', desc = '[S]earch with [G]rep' },
    { '<leader><space>', '<cmd>FzfLua buffers<cr>', desc = 'Search Buffer' },
  },
  opts = {},
}
