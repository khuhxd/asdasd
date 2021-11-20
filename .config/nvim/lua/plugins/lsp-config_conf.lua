local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    lsp_config                = 'neovim/nvim-lspconfig',
}

use {
    plugin_repo.lsp_config,
}
