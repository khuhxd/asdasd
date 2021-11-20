local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    devicons                = 'kyazdani42/nvim-web-devicons',
}

use {
    plugin_repo.devicons,
}
