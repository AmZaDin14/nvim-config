return {
  'kdheepak/lazygit.nvim',
  enabled = false,
  lazy = true,
  event = 'VeryLazy',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = '[L]azy[G]it' },
  },
}
