return {
  'mikavilpas/yazi.nvim',
  lazy = true,
  event = 'VeryLazy',
  -- stylua: ignore
  keys = {
    { '<leader>e', '<cmd>Yazi<cr>', desc = '[E]xplorer (Yazi)' },
    { '-', '<cmd>Yazi cwd<cr>', desc = '[E]xplorer (Yazi)' },
  },
  opts = {
    open_for_directories = true,
    keymaps = {
      show_help = '<f1>',
    },
  },
}
