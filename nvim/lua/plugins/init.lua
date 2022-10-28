local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_Bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  print "---------------------------------------------------------"
  print "Press Enter to install packer and plugins."
  print "After install -- close and reopen Neovim to load configs!"
  print "---------------------------------------------------------"
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer manages itself
  use 'nvim-lua/plenary.nvim' -- Avoids callbacks, used by other plugins
  use 'nvim-lua/popup.nvim' -- Popup for other plugins
  use 'nvim-treesitter/nvim-treesitter' -- Language parsing completion engine

  use {
    "L3MON4D3/LuaSnip", --snippet engine
    event = "CursorMoved",
  }
  use {
    "neovim/nvim-lspconfig",
    after = "LuaSnip",
    config = function() require "plugins/configs/lspconfig" end,
  }
  use {
    "hrsh7th/nvim-cmp",
    config = function() require "plugins/configs/cmp" end,
    after = "nvim-lspconfig" -- The completion plugin
  }
  use {
    "saadparwaiz1/cmp_luasnip", 
    after = "nvim-cmp"
  }
  use { -- lsp completions
    "hrsh7th/cmp-nvim-lsp",
    after = "nvim-cmp"
  }
  use { -- buffer completions
    "hrsh7th/cmp-buffer", 
    after = "nvim-cmp"
  }
  use { -- path completions
    "hrsh7th/cmp-path",
    after = "nvim-cmp",
  }
  use { -- cmdline completions
    "hrsh7th/cmp-cmdline",
    after = "nvim-cmp",
  }
  use { -- a bunch of snippets to use
    "rafamadriz/friendly-snippets",
    after = "nvim-cmp",
  }

  -- use { "nvim-neo-tree/neo-tree.nvim", -- Directory listing tree
  --   branch = "v2.x",
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "kyazdani42/nvim-web-devicons",
  --     "MunifTanjim/nui.nvim",
  --   },
  -- }
  use {
    "nvim-telescope/telescope.nvim",
    after="nvim-cmp",
  }
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use "nvim-lualine/lualine.nvim" -- Tab line top and bottom
  use 'tpope/vim-commentary' -- gc to comment out
  use 'tpope/vim-surround' -- easy text surrounding shortcuts
  use 'tjdevries/colorbuddy.nvim' -- Adding colors fast
  use 'norcalli/nvim-colorizer.lua' -- Highlights color codes
  use 'gruvbox-community/gruvbox' -- Color schemes

  if Packer_Bootstrap then
    require('packer').sync()
  end
end)
