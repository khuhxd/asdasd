local packer = require 'packer'
local plugin = {
    tree                 = require 'nvim-tree'
}

local use = packer.use

local plugin_repo = {
    tree                    = 'kyazdani42/nvim-tree.lua',
    devicons                = 'kyazdani42/nvim-web-devicons',
}

use {
    plugin_repo.tree,
    requires = {
        plugin_repo.devicons
    },
    config = function() plugin.tree.setup {} end
}

require'nvim-tree'.setup {
    view = {
        width                   = 30,
    },
}
