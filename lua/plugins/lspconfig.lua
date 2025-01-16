return {
  {
    'neovim/nvim-lspconfig',
    lazy = true,
    event = 'VeryLazy',
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
      { '<leader>g', desc = '[G]oto' },
      { '<leader>gd', require('fzf-lua').lsp_definitions, desc = '[G]oto [D]efinitions' },
      { '<leader>gr', require('fzf-lua').lsp_references, desc = '[G]oto [R]eferences' },
      { '<leader>gi', require('fzf-lua').lsp_implementations, desc = '[G]oto [I]mplementation' },
      { '<leader>rn', vim.lsp.buf.rename, desc = '[R]e[n]ame' },
    },

    config = function()
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

      local capabilities = require('blink.cmp').get_lsp_capabilities()

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
    end,
  },
}
