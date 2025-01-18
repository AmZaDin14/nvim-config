return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  -- event = 'VeryLazy',
  opts = {
    bigfile = { enabled = true },
    dim = { enabled = true },
    dashboard = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    rename = { enabled = true },
    scroll = { enabled = true },
    words = { enabled = true },
  },
  -- stylua: ignore
  keys = {
    { '<leader>hn', function() require('snacks').notifier.show_history() end, desc = '[H]istory ([N]otification)' },
    { '<leader>lg', function() require('snacks').lazygit.open() end, desc = '[L]azy[G]it' },
    { '<leader><space>', function() require('snacks').picker.buffers { current = false } end, desc = '[ ]Search Buffers' },
    -- Grep
    { '<leader>sb', function() require('snacks').picker.lines() end, desc = '[S]earch in [B]uffer' },
    { '<leader>sB', function() require('snacks').picker.grep_buffers() end, desc = 'Grep Open Buffers' },
    { '<leader>sg', function() require('snacks').picker.grep() end, desc = '[S]earch by [G]rep' },
    -- search
    { '<leader>s"', function() require('snacks').picker.registers() end, desc = '[S]earch Registers' },
    { '<leader>sf', function() require('snacks').picker.smart { finders = { 'files' } } end, desc = '[S]earch [F]iles' },
    { '<leader>sd', function() require('snacks').picker.diagnostics() end, desc = '[S]earch [D]iagnostics' },
    { '<leader>sh', function() require('snacks').picker.help() end, desc = '[S]earch [H]elp Pages' },
    { '<leader>sk', function() require('snacks').picker.keymaps() end, desc = '[S]earch [K]eymaps' },
    -- LSP
    { 'gd', function() require('snacks').picker.lsp_definitions() end, desc = '[G]oto [D]efinition' },
    { 'gr', function() require('snacks').picker.lsp_references() end, nowait = true, desc = '[G]oto [R]eferences' },
    { 'gi', function() require('snacks').picker.lsp_implementations() end, desc = '[G]oto [I]mplementation' },
  },
}
