return {
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufReadPost', 'BufNewFile' },
    dependencies = {
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
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
      { 'Bilal2453/luvit-meta', lazy = true },
    },
    keys = {
      { '<leader>rn', vim.lsp.buf.rename, desc = '[R]e[n]ame' },
    },

    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local servers = {
        lua_ls = {
          package = 'lua-language-server',
        },
        basedpyright = {},
        ruff = {},
        taplo = {},
        tailwindcss = {},
        djlsp = {
          package = 'django-template-lsp',
        },
      }

      local ensure_installed = {}
      for key, value in pairs(servers) do
        table.insert(ensure_installed, value.package or key)
      end
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        ensure_installed = {},
        automatic_installation = {},
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }

      require('lspconfig').djlsp.setup(capabilities)
    end,
  },
}
