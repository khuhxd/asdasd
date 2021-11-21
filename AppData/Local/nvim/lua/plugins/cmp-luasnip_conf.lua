local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    cmp_luasnip                = 'saadparwaiz1/cmp_luasnip'
}

use {
    plugin_repo.cmp_luasnip,
}
