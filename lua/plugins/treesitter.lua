return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = true,
    event = 'VeryLazy',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'lua', 'vim', 'vimdoc', 'python', 'html', 'htmldjango' },
        auto_install = true,
        highlight = {
          enable = true,
          disable = function(lang, buf)
            local max_filesize = 100 * 1024
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
        },
      }
    end,
  },
  {
    'Wansmer/treesj',
    lazy = true,
    event = 'VeryLazy',
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    keys = {
      { '<leader>m', '<cmd>TSJToggle<CR>', desc = 'Toggle TS Join' },
    },
    opts = {},
  },
}
