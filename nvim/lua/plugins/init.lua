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
  use 'lewis6991/impatient.nvim' -- Compiles lua files to bytecode and caches them
  use { 'nvim-treesitter/nvim-treesitter', commit = '4cccb6f494eb255b32a290d37c35ca12584c74d0' } -- Language parsing completion engine
  use "rafamadriz/friendly-snippets"
  use {
    "nvim-telescope/telescope.nvim",
  }
  use { "nvim-neo-tree/neo-tree.nvim", -- Directory listing tree
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
  use "nvim-lualine/lualine.nvim" -- Tab line top and bottom
  use 'tpope/vim-commentary' -- gc to comment out
  use 'tpope/vim-surround' -- easy text surrounding shortcuts
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use { 'Everblush/everblush.nvim', as = 'everblush' }
  use 'tanvirtin/monokai.nvim'

  if Packer_Bootstrap then
    require('packer').sync()
  end
end)
