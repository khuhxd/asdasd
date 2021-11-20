local packer = require 'packer'

local use = packer.use

local colorscheme_repo = {
    tokyonight              = 'folke/tokyonight.nvim'
}

use {
    colorscheme_repo.tokyonight,
}

vim.g.tokyonight_style = "night"
