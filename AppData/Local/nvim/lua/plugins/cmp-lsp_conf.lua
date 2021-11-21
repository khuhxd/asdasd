local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    cmp_lsp                = 'hrsh7th/cmp-nvim-lsp',
}

use {
    plugin_repo.cmp_lsp,
}
