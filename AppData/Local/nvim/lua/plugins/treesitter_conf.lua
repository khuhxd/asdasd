local packer = require 'packer'

local use = packer.use

local plugin_repo = {
    treesitter              = 'nvim-treesitter/nvim-treesitter'
}

use {
    plugin_repo.treesitter,
    run = ':TSUpdate'
}

--require 'nvim_treesitter.install'.complilers = { "clang" }

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}

vim.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
