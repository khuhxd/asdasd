local packer = require 'packer'

local use = packer.use

local plugin = {
    telescope                   = require 'telescope'
}

local plugin_repo = {
    telescope                   = 'nvim-telescope/telescope.nvim',
    plenary                     = 'nvim-lua/plenary.nvim',
}

use {
    plugin_repo.telescope,
    requires = {
        plugin_repo.plenary
    }
}

-- Telescope config
plugin.telescope.setup {
    defaults = {
        sorting_strategy                = 'descending',
        selection_strategy              = 'reset',
        scroll_strategy                 = 'cycle',

        -- layout_strategy =
        -- layout_config = {}

        -- windblend =

        prompt_prefix                   = ' ﳈ  ',
        selection_caret                 = '   ',
        entry_prefix                    = '    ',

        initial_mode                    = 'normal',

        border                          = true,
        -- Changes nothing without telescope.defaults.border = true
        borderchars = {
            ' ',                        -- Upper
            '',                        -- Right
            ' ',                        -- Downer
            '',                        -- Left
            '',                        -- Upper-left corner
            '',                        -- Upper-right corner
            '',                        -- Downer-right corner
            '',                        -- Downer-left corner
        },
        -- path_display                    = 'absolute',
        -- get_status_text
        hi_result_eol                   = true,
        dynamic_preview_title           = false,

        mappings = {
        }
    },

    pickers = {
    },

    extensions = {
    }
}
