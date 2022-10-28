require "plugins"
-------------------------------------------
-- mason --> mason-lspconfig --> lspconfig
-- must be setup in this order
-------------------------------------------
-- require "plugins/configs/mason"
-- require "plugins/configs/mason-lspconfig"
-- require "plugins/configs/lspconfig"
----------------------------------
-- all settings
----------------------------------
require "settings/keymaps"
require "settings/options"
require "settings/styles"
----------------------------------
-- all plugins
----------------------------------
require "plugins/configs/colorizer"
require "plugins/configs/lualine"
require "plugins/configs/nvim-treesitter"
require "plugins/configs/telescope"
require "plugins/configs/neo-tree"
