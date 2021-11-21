local packer = require 'packer'
local plugin = {
    cmp                     = require 'cmp',
    luasnip                 = require 'luasnip'
}

local plugin_repo = {
    cmp                     = 'hrsh7th/nvim-cmp'
}

local use = packer.use

use {
    plugin_repo.cmp
}

plugin.cmp.setup({
    snippet = {
        expand = function(args)
            plugin.luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<A-j>'] = plugin.cmp.mapping.select_next_item({ behavior = plugin.cmp.SelectBehavior.Insert }),
        ['<A-k>'] = plugin.cmp.mapping.select_prev_item({ behavior = plugin.cmp.SelectBehavior.Insert }),
        ['<A-Down>'] = plugin.cmp.mapping.select_next_item({ behavior = plugin.cmp.SelectBehavior.Select }),
        ['<A-Up>'] = plugin.cmp.mapping.select_prev_item({ behavior = plugin.cmp.SelectBehavior.Select }),
        ['<C-d>'] = plugin.cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = plugin.cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = plugin.cmp.mapping.complete(),
        ['<C-e>'] = plugin.cmp.mapping.close(),
        ['<CR>'] = plugin.cmp.mapping.confirm({
            behavior = plugin.cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
    }
})
