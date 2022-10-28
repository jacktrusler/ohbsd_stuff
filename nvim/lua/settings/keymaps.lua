local opts = { noremap = true, silent = true }

-- Shorten keymap nvim call
local keymap = vim.api.nvim_set_keymap

-- Rekeymap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--   Normal       = "n"
--   Insert       = "i"
--   Visual       = "v"
--   Visual_Block = "x"
--   Terminal     = "t"
--   Command      = "c"
keymap("n", ",s", ":syntax enable<CR>", opts)
keymap("n", ",edit", ":vsplit $MYVIMRC<CR>", opts)
keymap("n", "<leader>c", ":cclose<CR>", opts)
keymap("n", ",c", ":set nonumber norelativenumber mouse=\"\"<CR>", {})
keymap("n", ",C", ":set number relativenumber mouse=a<CR>", {})
keymap("n", ",w", "<C-w>w", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>v", ":vsplit<CR>", opts)
keymap("n", "<leader>V", ":Vexplore<CR>", opts)
keymap("n", "<leader>s", ":split<CR>", opts)
keymap("n", "<leader>S", ":Sex<CR>", opts)
keymap("n", "<leader>e", ":Explore<CR>", opts)
keymap("n", "<leader>q", ":Neotree focus<CR>", opts)
keymap("n", "<leader>/", ":Neotree toggle reveal_force_cwd<CR>", opts)
keymap("n", "<leader>git", ":Neotree float git_status<CR>", opts)
keymap("n", "<TAB>", ":bn<CR>", opts)
keymap("n", "<S-TAB>", ":bp<CR>", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<leader>fg", ":Telescope git_files<CR>", opts)
keymap("n", "<leader>pb", ":set nomore <Bar> :ls <Bar> :set more <CR>:Vexplore<CR>:b<Space>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fhf", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>rg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>term", ":bel 12 split | term <CR>a", opts)
keymap("n", "<leader>d", ":bp | sp | bn | bd<CR>", opts)
keymap("n", "<leader>b", ":Neotree toggle show buffers right<CR>", opts)
keymap("n", "<leader>nb", ":set nomore <Bar> :ls <Bar> :set more <CR>:Vexplore<CR>:b<Space>", opts)

keymap("x", "<leader>p", '"_dP', opts)

keymap("v", "<leader>Y", '"+y', opts)
keymap("v", "<leader>y", "ygv<Esc>", opts)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

keymap("c", "%%", "<C-R>=expand('%:h').'/'<CR>", opts)

keymap("t", "<Esc>", '<C-\\><C-N>', opts)
keymap("t", "<C-D>", '<C-\\><C-N>:q!<CR>', opts)
