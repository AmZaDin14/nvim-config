return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff_organize_imports', 'ruff_format' },
        htmldjango = { 'djlint' },
        sh = { 'shfmt' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
    },
  },
  {
    'zapling/mason-conform.nvim',
    lazy = true,
    event = 'VeryLazy',
    config = function()
      require('mason-conform').setup {}
    end,
  },
}
