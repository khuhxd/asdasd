local packer = require 'packer'

local use = packer.use

local plugin = {
    telescope                       = require 'telescope'
}

local plugin_repo = {
    telescope_zettel                = 'https://gitlab.com/thlamb/telescope-zettel.nvim',
    telescope                       = 'nvim-telescope/telescope.nvim',
    plenary                         = 'nvim-lua/plenary.nvim',
}

use {
    plugin_repo.telescope_zettel,
    requires = {
        { plugin_repo.telescope },
        { plugin_repo.plenary },
    },
    config = function ()
        plugin.telescope.load_extension('zettel')
    end,
}
