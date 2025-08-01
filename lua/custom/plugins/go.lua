return {
  {
    'Yu-Leo/gosigns.nvim',
    ft = 'go',
    cmd = { 'GosignsEnable', 'GosignsDisable', 'GosignsToggle' },
    opts = {}, -- for default options. Refer to the configuration section for custom setup.
  },
  {
    'maxandron/goplements.nvim',
    ft = 'go',
    opts = {
      prefix = {
        interface = '--> ',
        struct = '<-- ',
      },
      display_package = true,
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
