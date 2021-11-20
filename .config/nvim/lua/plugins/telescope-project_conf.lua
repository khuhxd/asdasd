local packer = require 'packer'

local use = packer.use

local plugin = {
    telescope                   = require 'telescope'
}

local plugin_repo = {
    telescope_project           = 'nvim-telescope/telescope-project.nvim',
}

use {
    plugin_repo.telescope_project,
}

-- Telescope extentions loading
plugin.telescope.load_extension('project')
