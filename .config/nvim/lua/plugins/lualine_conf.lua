local packer = require 'packer'
local plugin = {
    lualine                 = require 'lualine'
}

local use = packer.use

local plugin_repo = {
    lualine                 = 'nvim-lualine/lualine.nvim',
    devicons                = 'kyazdani42/nvim-web-devicons',
}

use {
    plugin_repo.lualine,
    requires = {
        plugin_repo.devicons,
        opt = true
    }
}

plugin.lualine.setup {
    options = {
        theme = 'tokyonight'
    }
}
