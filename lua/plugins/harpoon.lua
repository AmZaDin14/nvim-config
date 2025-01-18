return {
  'ThePrimeagen/harpoon',
  lazy = true,
  event = 'VeryLazy',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<m-h>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    vim.keymap.set('n', '<m-n>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<m-e>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<m-i>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<m-o>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<m-s-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<m-s-N>', function()
      harpoon:list():next()
    end)
  end,
}
