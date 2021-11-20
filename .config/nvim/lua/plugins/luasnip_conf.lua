local packer = require 'packer'
--local plugin = {
--    luasnip                 = require 'luasnip'
--}

local use = packer.use

local plugin_repo = {
    luasnip                 = 'L3MON4D3/LuaSnip'
}

use {
    plugin_repo.luasnip,
}
