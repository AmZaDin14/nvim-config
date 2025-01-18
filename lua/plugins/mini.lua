return {
  {
    'echasnovski/mini.nvim',
    lazy = true,
    event = 'VeryLazy',
    version = false,
    config = function()
      require('mini.ai').setup()
      require('mini.diff').setup()
      require('mini.git').setup()
      require('mini.icons').setup()
      require('mini.pairs').setup()
      require('mini.sessions').setup()
      require('mini.surround').setup()

      require('mini.hipatterns').setup {
        highlighters = {
          hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
        },
      }

      require('mini.files').setup {
        content = {
          filter = function(entry)
            return entry.name ~= '.DS_Store' and entry.name ~= '.git' and entry.name ~= '.direnv'
          end,
          sort = function(entries)
            -- technically can filter entries here too, and checking gitignore for _every entry individually_
            -- like I would have to in `content.filter` above is too slow. Here we can give it _all_ the entries
            -- at once, which is much more performant.
            local all_paths = table.concat(
              vim
                .iter(entries)
                :map(function(entry)
                  return entry.path
                end)
                :totable(),
              '\n'
            )
            local output_lines = {}
            local job_id = vim.fn.jobstart({ 'git', 'check-ignore', '--stdin' }, {
              stdout_buffered = true,
              on_stdout = function(_, data)
                output_lines = data
              end,
            })

            -- command failed to run
            if job_id < 1 then
              return entries
            end

            -- send paths via STDIN
            vim.fn.chansend(job_id, all_paths)
            vim.fn.chanclose(job_id, 'stdin')
            vim.fn.jobwait { job_id }
            return require('mini.files').default_sort(vim
              .iter(entries)
              :filter(function(entry)
                return not vim.tbl_contains(output_lines, entry.path)
              end)
              :totable())
          end,
        },
      }
    end,
    -- stylua: ignore
    keys = {
      { '<leader>e', function() require('mini.files').open() end },
    },
  },
  {
    'echasnovski/mini.statusline',
    lazy = false,
    opts = {},
  },
}
