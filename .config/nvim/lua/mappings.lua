local default_opts = {
    noremap = true,
    nowait = true,
    silent = true,
    unique = true
}

local function global_map(mode, lhs, rhs, opts)
    local options
    if not(opts) then
        options = default_opts
    else
        options = opts
    end

    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Telescope mappings
global_map('', '<Space>tt',         ':Telescope<CR>')
global_map('', '<Space>tb',         ':Telescope buffers<CR>')
global_map('', '<Space>tff',        ':Telescope find_files<CR>')
global_map('', '<Space>tp',         ':Telescope project<CR>')
global_map('', '<Space>tfb',         ':Telescope file_browser<CR>')

-- Vim mappings
global_map('', '<Space>vq',         ':wqall<CR>')
