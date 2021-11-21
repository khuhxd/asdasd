local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    plenary                = 'nvim-lua/plenary.nvim'
}

use {
    plugin_repo.plenary,
}
