local packer = require 'packer'
local use = packer.use

local plugin = {
    whichkey                        = 'which-key'
}

local plugin_repo = {
    whichkey                        = 'folke/which-key.nvim'
}

use {
    plugin_repo.whichkey,
    config = function()
        plugin.whichkey.setup {

        }
    end
}
