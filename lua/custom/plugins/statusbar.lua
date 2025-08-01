return {
  'utilyre/barbecue.nvim',
  name = 'barbecue',
  version = '*',
  dependencies = {
    'SmiteshP/nvim-navic',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('barbecue').setup {
      show_dirname = true, -- отображать имя директории
      show_basename = true, -- отображать имя файла
      symbols = {
        separator = ' ❯ ', -- символ разделителя
      },
      attach_navic = true,
      show_navic = true,
    }
  end,
}
