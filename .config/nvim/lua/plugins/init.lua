-- Packer initialization
local packer = require 'packer'
packer.init {}
packer.reset()

require 'plugins.cmp-buffer_conf'
require 'plugins.cmp-lsp_conf'
require 'plugins.cmp-luasnip_conf'
require 'plugins.packer_conf'
require 'plugins.plenary_conf'
require 'plugins.lsp-config_conf'
require 'plugins.devicons_conf'
require 'plugins.luasnip_conf'
--require 'plugins.lualine_conf'
--require 'plugins.startify_conf'
require 'plugins.telescope_conf'
require 'plugins.telescope-project_conf'
--require 'plugins.telescope-zettel_conf'
require 'plugins.treesitter_conf'
--require 'plugins.tree_conf'
--require 'plugins.vimwiki_conf'
require 'plugins.lsp-installer_conf'
require 'plugins.cmp_conf'
require 'plugins.which-key_conf'
