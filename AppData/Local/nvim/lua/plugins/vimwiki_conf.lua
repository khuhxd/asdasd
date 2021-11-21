local packer = require 'packer'
local global_vim_variable = vim.g

local use = packer.use

local plugin_repo = {
    vimwiki                = 'vimwiki/vimwiki',
}

use {
    plugin_repo.vimwiki,
    config = function()
        global_vim_variable.vimwiki_list = {{
            path = '~/vimwiki/',
            syntax = 'markdown',
            ext = '.md'
        }}
    end
}
