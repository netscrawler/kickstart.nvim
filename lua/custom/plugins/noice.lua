return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    -- {
    --     "rcarriga/nvim-notify",
    --     config = function()
    --         require("notify").setup({
    --             background_colour = "#000000",
    --             fps = 60,
    --             icons = {
    --                 DEBUG = "",
    --                 ERROR = "",
    --                 INFO = "",
    --                 WARN = ""
    --             },
    --             level = 2,
    --             minimum_width = 50,
    --             render = "default",
    --             stages = "fade_in_slide_out",
    --             timeout = 3000,
    --             top_down = true
    --         })
    --     end,
    -- },
  },
  config = function()
    require('noice').setup {
      -- General configuration
      cmdline = {
        enabled = true,
        view = 'cmdline_popup', -- choose one: "cmdline", "cmdline_popup" or "popup"
        opts = {}, -- custom options for the cmdline view
        icons = {
          ['/'] = { icon = ' ', hl_group = 'DiagnosticWarn' },
          ['?'] = { icon = ' ', hl_group = 'DiagnosticWarn' },
          [':'] = { icon = ' ', hl_group = 'DiagnosticInfo' },
        },
      },

      -- Command history configuration
      history = {
        view = 'popup',
        opts = { enter = true, format = 'details' },
        filter = { event = { 'msg_show', 'notify' }, ['not'] = { kind = { 'search_count', 'echo' } } },
      },

      -- Enhanced notifications
      notify = {
        enabled = false,
      },

      -- LSP-related UI improvements
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = false,
          ['vim.lsp.util.stylize_markdown'] = false,
          ['cmp.entry.get_documentation'] = false,
        },

        progress = {
          enabled = true,
          format = 'lsp_progress',
          format_done = 'lsp_progress_done',
          throttle = 1000 / 30, -- Throttle progress updates (30fps)
        },

        hover = {
          enabled = false,
          silent = true,
          view = nil,
          opts = {},
        },

        signature = {
          enabled = false,
          auto_open = {
            enabled = false,
            trigger = false,
            luasnip = false,
            throttle = 50,
          },
          view = nil,
          opts = {},
        },

        message = {
          enabled = false,
          view = 'notify',
          opts = {},
        },

        documentation = {
          view = 'hover',
          opts = {
            lang = 'markdown',
            replace = true,
            render = 'plain',
            format = { '{message}' },
            win_options = { concealcursor = 'n', conceallevel = 3 },
          },
        },
      },

      -- Preset configurations
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
      },

      -- Custom views
      views = {
        cmdline_popup = {
          position = {
            row = 5,
            col = '50%',
          },
          size = {
            width = 60,
            height = 'auto',
          },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
        },
        popupmenu = {
          relative = 'editor',
          position = {
            row = 8,
            col = '50%',
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
        },
      },

      -- Custom routes for messages
      routes = {
        {
          filter = {
            event = 'msg_show',
            kind = '',
            find = 'written',
          },
          opts = { skip = true },
        },
      },
    }

    -- Define keybindings separately using vim.keymap.set
    -- Command line redirect
  end,
}
