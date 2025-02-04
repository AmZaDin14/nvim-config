return {
  'saghen/blink.cmp',
  lazy = true,
  event = 'VeryLazy',
  dependencies = 'rafamadriz/friendly-snippets',
  build = 'cargo build --release',
  opts = {
    keymap = { preset = 'super-tab', ['<C-y>'] = { 'select_and_accept' } },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },
    signature = { enabled = true },
  },
}
