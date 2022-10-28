local g = vim.g
local opt = vim.opt

g.netrw_banner = 0
-- Colors
opt.termguicolors = true
opt.hlsearch = false
-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
-- Line Numbers
opt.relativenumber = true
opt.number = true
opt.numberwidth = 2
-- show line and cursor position, redundant with lualine
opt.ruler = false
-- scroll (x) lines from top and bottom
opt.scrolloff = 10
-- don't expand column on errors
opt.signcolumn = "no"
opt.cursorline = true
-- Mouse
opt.mouse = 'a'
-- Misc
vim.api.nvim_command("set noswapfile")
-- Don't automatically make more comments lines on enter
vim.api.nvim_create_autocmd("BufEnter",
  {
    callback = function() vim.opt.formatoptions =
      vim.opt.formatoptions - { "c", "r", "o" }
    end
  }
)
-- Vim syntax doesn't turn on automatically sometimes and I can't figure out why ;_;
vim.api.nvim_create_autocmd("BufEnter",
  {
    callback = function() vim.cmd [[syntax on]]
    end
  }
)
