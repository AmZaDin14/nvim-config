return {
  'folke/trouble.nvim',
  lazy = true,
  event = 'VeryLazy',
  cmd = 'Trouble',
  -- stylua: ignore
  keys = {
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
    { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
  },
  opts = {},
}
