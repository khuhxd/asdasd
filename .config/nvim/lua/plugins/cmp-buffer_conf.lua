local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    cmp_buffer                = 'hrsh7th/cmp-buffer',
}

use {
    plugin_repo.cmp_buffer,
}
