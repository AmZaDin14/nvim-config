return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = { 'lua_ls', 'basedpyright', 'ruff' },
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'saghen/blink.cmp',
      {
        'folke/lazydev.nvim',
        ft = 'lua', -- only load on lua files
        opts = {
          library = {
            { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
          },
        },
      },
    },
    keys = {
      { '<leader>g', desc = '[G]oto' },
      { '<leader>gd', require('fzf-lua').lsp_definitions, desc = '[G]oto [D]efinitions' },
      { '<leader>gr', require('fzf-lua').lsp_references, desc = '[G]oto [R]eferences' },
      { '<leader>gi', require('fzf-lua').lsp_implementations, desc = '[G]oto [I]mplementation' },
      { '<leader>rn', vim.lsp.buf.rename, desc = '[R]e[n]ame' },
    },

    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require('lspconfig').lua_ls.setup { capabilities = capabilities }
      require('lspconfig').basedpyright.setup { capabilities = capabilities }
      require('lspconfig').ruff.setup { capabilities = capabilities }
      require('lspconfig').djlsp.setup { capabilities = capabilities }
    end,
  },
}
