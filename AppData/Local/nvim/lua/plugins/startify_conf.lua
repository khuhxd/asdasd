local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    startify                = 'mhinz/vim-startify',
}

use {
    plugin_repo.startify,
}
