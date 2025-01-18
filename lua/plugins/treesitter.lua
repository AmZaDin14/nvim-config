return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = true,
    event = 'VeryLazy',
    build = ':TSUpdate',
    dependencies = { 'nvim-treesitter/nvim-treesitter-context', opts = {} },
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'lua', 'markdown', 'markdown_inline', 'vim', 'vimdoc', 'python', 'html', 'htmldjango' },
        auto_install = true,
        markdown = { enable = true },
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
}
